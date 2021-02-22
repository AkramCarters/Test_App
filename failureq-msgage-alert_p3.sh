#!/bin/sh

export DSTAMP=`date +"%r %a %d %h %y"`
QConfig=/MQHA/QMBRKPRD01/WMQ/scripts/failures/qmon_p3.cfg
MSG_FILE=/MQHA/QMBRKPRD01/WMQ/scripts/failures/tmp

QMGR_NAME=QMBRKPRD01
BROWSE_SCRIPT=/MQHA/QMBRKPRD01/WMQ/scripts/browse_msg


# echo "Display ql(*) where (CURDEPTH GT 0)" | runmqsc $QMGR_NAME  | grep QUEUE | awk '{ print $1 }' | cut -c7- | sed 's/)//' > $MSG_FILE/qlist.$$
echo "Display ql(*) where (CURDEPTH GT 0)" | runmqsc $QMGR_NAME  | grep QUEUE | awk '{ print $1 }' | cut -c7- | sed 's/)//' | grep -v "^AMQ" | grep -v "^SYSTEM" > $MSG_FILE/qlist.$$
while read quename; do
    #echo Processing $quename
#    SKIP_AMQ=`echo $quename | grep -c "^AMQ"`
#    SKIP_SYSTEM=`echo $quename | grep -c "^SYSTEM"`
#    if [ "$SKIP_AMQ" -eq "0" ] && [ "$SKIP_SYSTEM" -eq "0" ]; then
       THISCFG=`grep ^$quename: $QConfig `
       if [ "$THISCFG" = "" ]; then
          THISCFG=`grep ^DEFAULT: $QConfig `
       fi
       if [ "$THISCFG" = "" ]; then
          echo "Error - No configuration for Queue $quename and DEFAULT is not set up."
          exit 5
       fi
   #     echo "Using config $THISCFG"
       export V_THRESHHOLD=`echo $THISCFG | awk -F: '{ print $2 }'`
       export V_EMAIL=`echo $THISCFG | awk -F: '{ print $3 }'`
       export V_SUBJECT=`echo $THISCFG | awk -F: '{ print $4 }'`
       export V_BODY=`echo $THISCFG | awk -F: '{ print $5 }'`
       export V_QUENAME=$quename
       export V_DEPTH=`echo "Display q('$quename') curdepth" | runmqsc $QMGR_NAME | grep "CURDEPTH(" | sed 's/^.*CURDEPTH(\([0-9]*\)).*$/\1/g'`
    
       SEC=`echo "Display qs('$quename') MSGAGE" | runmqsc $QMGR_NAME | grep "MSGAGE(" | sed 's/^.*MSGAGE(\([0-9]*\)).*$/\1/g'`
   
 #      if [ $V_DEPTH -gt "0" ]; then 
          $BROWSE_SCRIPT $V_QUENAME $QMGR_NAME > $MSG_FILE/$V_QUENAME.log
          export V_MINUTES=` expr $SEC / 60 `
          export V_MESSAGE=""
#          echo "V_QUENAME: "$V_QUENAME 
#          echo "V_MINUTES: "$V_MINUTES
#          echo "V_THRESHHOLD: "$V_THRESHHOLD
          if [ $V_THRESHHOLD -ne 0 ] && [ $V_MINUTES -ge $V_THRESHHOLD ]; then
             SUBJECT=`ksh -c "/bin/echo $V_SUBJECT"`
             BODY=`ksh -c "/bin/echo $V_BODY"`
             
#           echo $V_MINUTES/$V_EMAIL/$SUBJECT/$BODY 
            File_Size=`du -m $MSG_FILE/$V_QUENAME.log | awk '{print $1}'`
#           echo "File Size: " $File_Size
             if [ $File_Size -ge 5 ]; then           
                echo "$BODY. The oldest message cannot be attached as the file size is more than 5 MB." |  mailx -s "$SUBJECT" $V_EMAIL
#                echo "File size is greater than 5 MB"
             else
                (
	         echo "$BODY. The oldest message is attached."
                 uuencode $MSG_FILE/$V_QUENAME.log $V_QUENAME.log 
                )  |mailx -s "$SUBJECT" $V_EMAIL 
             fi
          fi
             rm $MSG_FILE/$V_QUENAME.log
#       fi
#    fi
   done < $MSG_FILE/qlist.$$
#   done < /MQHA/QMBRKPRD01/WMQ/scripts/failures/qfile.sh
rm $MSG_FILE/qlist.$$


