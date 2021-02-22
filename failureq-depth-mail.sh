#!/bin/sh

export DSTAMP=`date +"%r %a %d %h %y"`
QConfig=/MQHA/QMBRKPRD01/WMQ/scripts/failures/qmon.cfg
MSG_FILE=/MQHA/QMBRKPRD01/WMQ/scripts/failures/tmp

QMGR_NAME=QMBRKPRD01
BROWSE_SCRIPT=/MQHA/QMBRKPRD01/WMQ/scripts/browse_msg

echo  'Queue Name :\t: Queue Depth' >> $MSG_FILE/qdepthlist_mail.$$
echo "Display ql(*) where (CURDEPTH GT 0)" | runmqsc $QMGR_NAME  | grep QUEUE | awk '{ print $1 }' | cut -c7- | sed 's/)//' | grep -v "^AMQ" | grep -v "^SYSTEM" > $MSG_FILE/qdepthlist.$$
while read quename; do

       export V_DEPTH=`echo "Display q('$quename') curdepth" | runmqsc $QMGR_NAME | grep "CURDEPTH(" | sed 's/^.*CURDEPTH(\([0-9]*\)).*$/\1/g'`
       echo $quename ':\t:'$V_DEPTH >> $MSG_FILE/qdepthlist_mail.$$


done < $MSG_FILE/qdepthlist.$$

      #echo "The queue depth of QMBRKPRD01 is attached." 
  #uuencode $MSG_FILE/qdepthlist_mail.$$ qdepthlist_mail.csv |mailx -s "QMBRKPRD01 Queue depth" sai.duppada@carters.com,Raj.Punur@carters.com

#cat $MSG_FILE/qdepthlist_mail.$$ |  mailx -s "Alert! current Queue depth on QMBRKPRD01" -r esbqueuedepth@carters.com sai.duppada@carters.com,Raj.Punur@carters.com,apurva.maduranthakam@carters.com
cat $MSG_FILE/qdepthlist_mail.$$ |  mailx -s "Alert! current Queue depth on QMBRKPRD01" -r esbqueuedepth@carters.com  '#ITIntegration@carters.com',Murali.Bandaru@carters.com,Ichcha.Agarwal@carters.com,Vijay.Dasari@carters.com

rm $MSG_FILE/qdepthlist.$$
rm $MSG_FILE/qdepthlist_mail.$$


