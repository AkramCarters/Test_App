#!/bin/sh


MSG_FILE=/MQHA/QMBRKPRD01/WMQ/scripts/failures/tmp

QMGR_NAME=QMBRKPRD01

echo " DISPLAY TOPIC(*)"  | runmqsc $QMGR_NAME  | grep TOPIC | awk '{ print $1 }' | cut -c7- | sed 's/)//' > $MSG_FILE/temp_Topic.$$
while read quename; do
 #echo Processing $quename

       export V_TopicInfo=`echo "DISPLAY TOPIC('$quename')" | runmqsc $QMGR_NAME` 
		echo $V_TopicInfo >> TopicInfo.txt

   done < $MSG_FILE/temp_Topic.$$

rm $MSG_FILE/qlist.$$



