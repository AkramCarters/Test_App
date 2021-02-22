#!/bin/sh

/home/wbiuser/reprocess_failures_Loyality.sh QMBRKPRD05 E.ESB.REDEEMREWARD.IN
/home/wbiuser/reprocess_failures_Loyality.sh QMBRKPRD04 E.ESB.REDEEMREWARD.IN
/home/wbiuser/reprocess_failures_Loyality.sh QMBRKPRD03 E.ESB.REDEEMREWARD.IN
/home/wbiuser/reprocess_failures_Loyality.sh QMBRKPRD05 E.ESB.REDEEMCOUPON.IN
/home/wbiuser/reprocess_failures_Loyality.sh QMBRKPRD04 E.ESB.REDEEMCOUPON.IN
/home/wbiuser/reprocess_failures_Loyality.sh QMBRKPRD03 E.ESB.REDEEMCOUPON.IN
/home/wbiuser/reprocess_failures.sh E.ESB.STYLE.CR_SUB
/home/wbiuser/reprocess_failures.sh E.TRANSACTION.LOGGER.IN
/home/wbiuser/reprocess_failures.sh E.PIP.ESB.CR
/home/wbiuser/qload -m QMBRKPRD01 -IE.ESB.TRANSACTIONS.TRACKER_V2
/home/wbiuser/reprocess_failures.sh E.TWCC_INLINE_UDA_INVADJ_PUBLISH_QUEUE
/home/wbiuser/reprocess_failures.sh E.ESB.OUTBOUND_INVOICE.EDI
/home/wbiuser/reprocess_failures.sh E.WMS.INVENTORY_RECEIPT.JESTA_SUB
/home/wbiuser/reprocess_failures.sh E.ESB.ITEMCREATE.OMNIA_SUB
/home/wbiuser/reprocess_failures.sh E.ESB.PARTIAL.TRANSFORM.ES
/home/wbiuser/reprocess_failures.sh E.ESB.ITEMCREATE_84.3PL_SUB
/home/wbiuser/reprocess_failures.sh E.STL.EMAILNOTIFICATION.ESB
/home/wbiuser/reprocess_failures.sh E.STL.BOSS.ES
/home/wbiuser/qload -m QMBRKPRD01  -IE.ESB.SHIPNOTICE.WMS_52 -oESB.SHIPNOTICE.WMS_52
/home/wbiuser/qload -m QMBRKPRD01 -IE.ESB.TRANSACTIONS.TRACKER
/home/wbiuser/qload -m QMBRKPRD01 -IESB.BOPIS.ORDERS
/home/wbiuser/qload -m QMBRKPRD01 -IE.ESB.TRANSACTIONS.TRACKER
#/home/wbiuser/qload -m QMBRKPRD03 -IE.ESB.UPDATEPROFILE.IN
/home/wbiuser/qload -m QMBRKPRD01 -IEDI.TRANSACTION_GENRATOR.ESB
/home/wbiuser/qload -m QMBRKPRD01 -IEDI.INVENTORYSNAPSHOT.ESB
/home/wbiuser/qload -m QMBRKPRD01 -IESB.SHIPNOTICE.WMS_55
/home/wbiuser/qload -m QMBRKPRD01 -IEDI.SHIPCONFIRM.ESB
/home/wbiuser/qload -m QMBRKPRD01 -IESB.SHIPMENTCANCEL.OMN.AUDIT
#/home/wbiuser/qload -m QMBRKPRD04 -IE.ESB.UPDATEPROFILE.IN
#/home/wbiuser/qload -m QMBRKPRD05 -IE.ESB.UPDATEPROFILE.IN
/home/wbiuser/qload -m QMBRKPRD01 -IESB.RETURNRECEIPTS.STL_SUB
/home/wbiuser/qload -m QMBRKPRD01 -IWMS_12.ERR
#/home/wbiuser/qload -m QMBRKPRD01 -ISTL.SHIPCONFIRM.ESB
#/home/wbiuser/qload -m QMBRKPRD01 -IE.STL.BOSS.ES
/home/wbiuser/qload -m QMBRKPRD01 -IWMS_46.ERR        
/home/wbiuser/qload -m QMBRKPRD01 -IE.ESB.CARTERS_CUSTOMER.MEX
/home/wbiuser/qload -m QMBRKPRD01 -IESB.SHIPCANCEL.WMS_33
/home/wbiuser/qload -m QMBRKPRD01 -IESB.COMPANYUPDATE.WMS_12_SUB
#/home/wbiuser/qload -m QMBRKPRD01 -IE.ESB.ITEMCREATE.JESTA99_SUB
/home/wbiuser/qload -m QMBRKPRD01 -IWMS_33.ERR
#/home/wbiuser/qload -m QMBRKPRD01 -IE.ESB.PIX.OMN
/home/wbiuser/qload -m QMBRKPRD01 -IE.SPLITJPEGSEASONS
/home/wbiuser/qload -m QMBRKPRD01 -IKOHLS.DEBUG.ATTR.SUBMIT
/home/wbiuser/qload -m QMBRKPRD01 -IPIP.ESB.ANAPLAN.WKL.TIMER
/home/wbiuser/qload -m QMBRKPRD01 -IPIP.ESB.PREPACK.ANAPLAN.WKL.TIMER
/home/wbiuser/qload -m QMBRKPRD01 -ICREATE_ECOMMCA_BULK_DEMAND_CONSUME_ENT
/home/wbiuser/qload -m QMBRKPRD01 -IESB.INVENTORYADJUSTMENT_DC12.STL_SUB_AUDIT
/home/wbiuser/qload -m QMBRKPRD01 -IWMS_67.ERR
/home/wbiuser/qload -m QMBRKPRD01 -IE.SPLITJPEGSTYLES
#/home/wbiuser/qload -m QMBRKPRD01 -IE.ESB.INVENTORYCOMPARE.STL_74
/home/wbiuser/qload -m QMBRKPRD01 -IESB.ITEMCREATE.3PL
#/home/wbiuser/qload -m QMBRKPRD01 -IE.ESB.INVENTORYCOMPARE.STL_84
#/home/wbiuser/qload -m QMBRKPRD01 -IBOPIS_REPROCESS_FAILED_ORD_TRG
#/home/wbiuser/qload -m QMBRKPRD01 -IE.ESB.INVENTORYADJUSTMENT.STL_46
#/home/wbiuser/qload -m QMBRKPRD01 -IE.ESB.INVENTORYCOMPARE.STL_46
#/home/wbiuser/qload -m QMBRKPRD01 -IE.ESB.PURCHASEORDERDISPOSITION.STL_SUB
/home/wbiuser/qload -m QMBRKPRD01 -ITRIGGER.PREVALPROCESS.ESB
/home/wbiuser/qload -m QMBRKPRD01 -IESB.TRANSACTIONS.ORPHANS
#/home/wbiuser/qload -m QMBRKPRD01 -IE.STL_PO_VALIDATION_FAILURE
#/home/wbiuser/qload -m QMBRKPRD01 -IESB.DORDER.WMS_PICKSTR
#/home/wbiuser/qload -m QMBRKPRD01 -IE.ESB.DORDER.WMS11_SUB
/home/wbiuser/qload -m QMBRKPRD01 -IESB.OMNIA.API.PREFETCH.IN
#/home/wbiuser/qload -m QMBRKPRD01 -IESB.PARTIAL.TRANSFORM.CAN
#/home/wbiuser/qload -m QMBRKPRD01 -IE.ESB.BOPIS.PRINT_RECEIPT
#/home/wbiuser/qload -m QMBRKPRD01 -IESB.PARTIAL.TRANSFORM
/home/wbiuser/qload -m QMBRKPRD01 -IE.ESB.CONTACT.JST_TRIGGER
/home/wbiuser/qload -m QMBRKPRD01 -IJESTA.EVENT_PUBLISHER.ESB
/home/wbiuser/qload -m QMBRKPRD01 -IE.KOHLS.SUBMIT.IMAGES
/home/wbiuser/qload -m QMBRKPRD01 -IE.KOHLS.GET.STYLES
/home/wbiuser/qload -m QMBRKPRD01 -IE.ANAPLAN.AP.ESB.BULKPO
/home/wbiuser/qload -m QMBRKPRD01 -IE.KOHLS.GET.IMAGES 
/home/wbiuser/qload -m QMBRKPRD01 -IE.CC.ESB.CUST.SF.CREAT_SUB
/home/wbiuser/qload -m QMBRKPRD01 -IE.CC.ESB.CUST.TIBCO.CREAT_SUB
/home/wbiuser/qload -m QMBRKPRD01 -IE.CC.ESB.CUST.SF.UPDT_SUB
/home/wbiuser/qload -m QMBRKPRD01 -IE.CC.ESB.CUST.SF.CREAT_SUB
/home/wbiuser/qload -m QMBRKPRD01 -IE.CC.ESB.CUST.TIBCO.UPDT_SUB
/home/wbiuser/qload -m QMBRKPRD01 -IE.CC.ESB.CUST.SFDB_SUB

export DSTAMP=`date +"%r %a %d %h %y"`
QConfig=/MQHA/QMBRKPRD01/WMQ/scripts/failures/qmon.cfg
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


