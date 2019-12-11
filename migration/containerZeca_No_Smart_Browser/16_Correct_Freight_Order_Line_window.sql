-- Correct Freight Order Line window
UPDATE AD_Column SET AD_Val_Rule_ID=NULL,Updated=TO_TIMESTAMP('2019-11-28 11:46:45','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1008398
;

UPDATE AD_Process_Para SET AD_Val_Rule_ID=1000088,Updated=TO_TIMESTAMP('2019-11-28 11:46:58','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=1001785
;

UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=81806
;

UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=81813
;

UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=81805
;

UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=81811
;

UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=81812
;

UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=81802
;

UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=81804
;

UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=81814
;

UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=81809
;

UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=81810
;

UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=81807
;

UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=81808
;

UPDATE AD_Field SET SeqNo=30,IsDisplayed='Y' WHERE AD_Field_ID=81803
;

UPDATE AD_Field SET SeqNo=40,IsDisplayed='Y' WHERE AD_Field_ID=1020582
;

UPDATE AD_Field SET SeqNo=50,IsDisplayed='Y' WHERE AD_Field_ID=1020584
;

UPDATE AD_Field SET SeqNo=60,IsDisplayed='Y' WHERE AD_Field_ID=1020581
;

UPDATE AD_Field SET SeqNo=70,IsDisplayed='Y' WHERE AD_Field_ID=1020583
;

UPDATE AD_Field SET IsSameLine='Y',Updated=TO_TIMESTAMP('2019-11-28 14:05:23','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=81801
;

UPDATE AD_Field SET IsSameLine='Y',Updated=TO_TIMESTAMP('2019-11-28 14:05:39','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1020584
;

UPDATE AD_Column SET DefaultValue='0',Updated=TO_TIMESTAMP('2019-11-28 14:08:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=83752
;

INSERT INTO t_alter_column values('dd_freightline','FreightAmt','NUMERIC',null,'0')
;

UPDATE DD_FreightLine SET FreightAmt=0 WHERE FreightAmt IS NULL
;

