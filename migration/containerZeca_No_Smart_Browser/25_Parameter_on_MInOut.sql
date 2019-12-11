-- Set M_Inout:ID parameter to be Table+M_InOut_Order on Process "SB_InoutCreateFromFreight"
-- Make sure the Parameter's ID = 1001784  !!
UPDATE AD_Process_Para SET AD_Reference_ID=18, AD_Reference_Value_ID=337, AD_Val_Rule_ID=233, ReadOnlyLogic='1=1',Updated=TO_TIMESTAMP('2019-12-07 09:56:04','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=1001784
;

-- Change process name
UPDATE AD_Process SET Value='Button FreightOrderCreateLines', Classname='org.adempiere.process.Button_CreateFreightLineFromOrderLine',Updated=TO_TIMESTAMP('2019-12-10 20:36:22','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=1000443
;

