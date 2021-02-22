#!/bin/sh


MSG_FILE=/MQHA/QMBRKPRD01/WMQ/scripts/failures/tmp

QMGR_NAME=QMBRKPRD01

echo " DISPLAY SUB(*)"  | runmqsc $QMGR_NAME  | grep SUBID | awk '{ print $1 }' | cut -c7- | sed 's/)//' >  $MSG_FILE/temp_Sub.$$
while read quename; do
 #echo Processing $quename

       export V_SubInfo=`echo "DISPLAY SUB SUBID('$quename')" | runmqsc $QMGR_NAME` 
		echo $V_SubInfo >> SubscriberInfo.txt

   done < $MSG_FILE/temp_Sub.$$

rm $MSG_FILE/temp_Sub.$$



