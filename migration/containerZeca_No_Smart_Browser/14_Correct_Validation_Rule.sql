-- Correct Validation Rule
UPDATE AD_Val_Rule SET Code='C_Order.DocStatus in (''CL'',''CO'') and C_Order.IsSoTrx = ''N''',Updated=TO_TIMESTAMP('2019-11-25 06:44:10','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Val_Rule_ID=1000121
;

-- Driver
UPDATE AD_Column SET AD_Reference_ID=13, IsActive='N',Updated=TO_TIMESTAMP('2019-11-25 07:36:38','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=83727
;

-- Vehicle
UPDATE AD_Column SET AD_Reference_ID=13, IsActive='N',Updated=TO_TIMESTAMP('2019-11-25 07:37:00','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=83726
;

