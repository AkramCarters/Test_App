#!/bin/sh

export path=/home/wbiuser/scripts/failureq
export QMGR=QMBRKDEV01
#export DSTAMP=`date +"%y%m%d%H%M%S"`
export DSTAMP=`date +"%r %a %d %h %y"`
$path/mqsc -c MBEXPLOR.CLNT.CHL -m $QMGR -h "c09rs25d.carters.com(21415)" -i  $path/command.txt -p width=170 -e -o $path/output.txt

cp $path/output.txt $path/output1.txt
sed s/"TYPE(QUEUE)"//g < $path/output1.txt > $path/output2.txt
sed s/"AMQ8450: Display queue status details."//g < $path/output2.txt > $path/output1.txt
sed s/"MQSC Ended"//g < $path/output1.txt > $path/output2.txt
sed '/^$/d' < $path/output2.txt > $path/output1.txt
sed '1 d' < $path/output1.txt > $path/output2.txt

#mail -s "Failure Report for QMGR: $QMGR" jaypal.kalagiri@carters.com < $path/output2.txt
mail -s "Failure Report for QMGR: $QMGR on $DSTAMP " jaypal.kalagiri@perficient.com < $path/output2.txt
