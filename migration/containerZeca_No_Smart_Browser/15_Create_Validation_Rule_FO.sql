-- Create Validation Rule FO
INSERT INTO AD_Val_Rule (AD_Org_ID,Type,Code,AD_Client_ID,Name,IsActive,AD_Val_Rule_ID,EntityType,Created,CreatedBy,Updated,UpdatedBy) VALUES (0,'S','DD_Freight.DocStatus in (''CL'',''CO'') ',0,'DD_Freight Freight Order Completed','Y',1000088,'U',TO_TIMESTAMP('2019-11-25 12:18:58','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2019-11-25 12:18:58','YYYY-MM-DD HH24:MI:SS'),100)
;

UPDATE AD_Column SET AD_Val_Rule_ID=1000088,Updated=TO_TIMESTAMP('2019-11-25 12:19:23','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1008338
;

