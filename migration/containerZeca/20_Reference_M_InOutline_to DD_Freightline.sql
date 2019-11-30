-- Reference to DD_Freightline in M_InOutline, AD_Column_ID= 9008405
INSERT INTO AD_Column (EntityType,Version,AD_Reference_Value_ID,FieldLength,IsKey,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsParent,IsSyncDatabase,IsAlwaysUpdateable,IsAllowLogging,IsAutocomplete,AD_Element_ID,AD_Column_ID,IsIdentifier,SeqNo,AD_Table_ID,ColumnName,IsMandatory,IsUpdateable,Name,IsEncrypted,IsTranslated,IsActive,IsSelectionColumn,Created,CreatedBy,Updated,UpdatedBy) VALUES ('U',0,9000279,22,'N',18,0,0,'N','N','N','Y','N',1002120,9008405,'N',0,320,'DD_FreightLine_ID','N','Y','Order Freight Line ID','N','N','Y','N',TO_TIMESTAMP('2019-11-29 08:25:02','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2019-11-29 08:25:02','YYYY-MM-DD HH24:MI:SS'),100)
;

INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=9008405 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

ALTER TABLE M_InOutLine ADD COLUMN DD_FreightLine_ID NUMERIC(10) DEFAULT NULL 
;

-- Reference to DD_Freightline in tab M_InOutline, AD_Field_ID= 9020621
INSERT INTO AD_Field (IsEncrypted,AD_Client_ID,AD_Org_ID,IsDisplayed,IsActive,DisplayLength,AD_Field_ID,AD_Column_ID,IsFieldOnly,Name,AD_Tab_ID,IsCentrallyMaintained,EntityType,IsReadOnly,IsSameLine,IsHeading,Created,CreatedBy,Updated,UpdatedBy) VALUES ('N',0,0,'Y','Y',22,9020621,9008405,'N','Order Freight Line ID',297,'Y','U','N','N','N',TO_TIMESTAMP('2019-11-29 08:25:41','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2019-11-29 08:25:41','YYYY-MM-DD HH24:MI:SS'),100)
;

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Help,Description, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Help,t.Description, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=9020621 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

UPDATE AD_Field SET SeqNo=70,IsDisplayed='Y' WHERE AD_Field_ID=3515
;

UPDATE AD_Field SET SeqNo=80,IsDisplayed='Y' WHERE AD_Field_ID=6536
;

UPDATE AD_Field SET SeqNo=90,IsDisplayed='Y' WHERE AD_Field_ID=1008039
;

UPDATE AD_Field SET SeqNo=100,IsDisplayed='Y' WHERE AD_Field_ID=3514
;

UPDATE AD_Field SET SeqNo=110,IsDisplayed='Y' WHERE AD_Field_ID=11255
;

UPDATE AD_Field SET SeqNo=120,IsDisplayed='Y' WHERE AD_Field_ID=3510
;

UPDATE AD_Field SET SeqNo=130,IsDisplayed='Y' WHERE AD_Field_ID=10825
;

UPDATE AD_Field SET SeqNo=140,IsDisplayed='Y' WHERE AD_Field_ID=3517
;

UPDATE AD_Field SET SeqNo=150,IsDisplayed='Y' WHERE AD_Field_ID=3516
;

UPDATE AD_Field SET SeqNo=160,IsDisplayed='Y' WHERE AD_Field_ID=9239
;

UPDATE AD_Field SET SeqNo=170,IsDisplayed='Y' WHERE AD_Field_ID=9241
;

UPDATE AD_Field SET SeqNo=180,IsDisplayed='Y' WHERE AD_Field_ID=9238
;

UPDATE AD_Field SET SeqNo=190,IsDisplayed='Y' WHERE AD_Field_ID=9240
;

UPDATE AD_Field SET SeqNo=200,IsDisplayed='Y' WHERE AD_Field_ID=13685
;

UPDATE AD_Field SET SeqNo=210,IsDisplayed='Y' WHERE AD_Field_ID=13683
;

UPDATE AD_Field SET SeqNo=220,IsDisplayed='Y' WHERE AD_Field_ID=13686
;

UPDATE AD_Field SET SeqNo=230,IsDisplayed='Y' WHERE AD_Field_ID=13687
;

UPDATE AD_Field SET SeqNo=240,IsDisplayed='Y' WHERE AD_Field_ID=13684
;

UPDATE AD_Field SET SeqNo=250,IsDisplayed='Y' WHERE AD_Field_ID=13695
;

UPDATE AD_Field SET SeqNo=260,IsDisplayed='Y' WHERE AD_Field_ID=13688
;

UPDATE AD_Field SET SeqNo=270,IsDisplayed='Y' WHERE AD_Field_ID=13689
;

UPDATE AD_Field SET SeqNo=280,IsDisplayed='Y' WHERE AD_Field_ID=1006469
;

UPDATE AD_Field SET SeqNo=290,IsDisplayed='Y' WHERE AD_Field_ID=1006470
;

UPDATE AD_Field SET SeqNo=300,IsDisplayed='Y' WHERE AD_Field_ID=1008043
;

UPDATE AD_Field SET SeqNo=310,IsDisplayed='Y' WHERE AD_Field_ID=1008042
;

UPDATE AD_Field SET SeqNo=320,IsDisplayed='Y' WHERE AD_Field_ID=1008044
;

UPDATE AD_Field SET IsReadOnly='Y', IsSameLine='Y',Updated=TO_TIMESTAMP('2019-11-29 08:27:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=9020621
;


-- Reference to M_InOutLine in Freight Order Line, AD_Column_ID= 9008407
INSERT INTO AD_Column (EntityType,Version,FieldLength,IsKey,Help,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsParent,IsSyncDatabase,IsAlwaysUpdateable,IsAllowLogging,IsAutocomplete,AD_Element_ID,AD_Column_ID,IsIdentifier,SeqNo,AD_Table_ID,ColumnSQL,ColumnName,IsMandatory,IsUpdateable,Name,IsEncrypted,IsTranslated,IsActive,IsSelectionColumn,Created,CreatedBy,Description,Updated,UpdatedBy) VALUES ('U',0,22,'N','The Shipment/Receipt Line indicates a unique line in a Shipment/Receipt document',19,0,0,'N','N','N','Y','N',1026,9008407,'N',0,54259,'(SELECT iol.M_InOutline_ID FROM M_InOutline iol WHERE  DD_FreightLine.DD_FreightLine_ID = iol.DD_FreightLine_ID)','M_InOutLine_ID','N','N','Shipment/Receipt Line','N','N','Y','N',TO_TIMESTAMP('2019-11-29 09:10:26','YYYY-MM-DD HH24:MI:SS'),100,'Line on Shipment or Receipt document',TO_TIMESTAMP('2019-11-29 09:10:26','YYYY-MM-DD HH24:MI:SS'),100)
;

INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=9008407 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Reference to M_InOutLine in tab Freight Order Line, AD_Field_ID= 9020627
INSERT INTO AD_Field (IsEncrypted,AD_Client_ID,AD_Org_ID,IsDisplayed,IsActive,DisplayLength,AD_Field_ID,AD_Column_ID,IsFieldOnly,Name,AD_Tab_ID,IsCentrallyMaintained,EntityType,Help,IsReadOnly,IsSameLine,IsHeading,Created,CreatedBy,Description,Updated,UpdatedBy) VALUES ('N',0,0,'Y','Y',22,9020627,9008407,'N','Shipment/Receipt Line',54313,'Y','U','The Shipment/Receipt Line indicates a unique line in a Shipment/Receipt document','N','N','N',TO_TIMESTAMP('2019-11-29 09:10:45','YYYY-MM-DD HH24:MI:SS'),100,'Line on Shipment or Receipt document',TO_TIMESTAMP('2019-11-29 09:10:45','YYYY-MM-DD HH24:MI:SS'),100)
;

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Help,Description, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Help,t.Description, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=9020627 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

UPDATE AD_Field SET IsReadOnly='Y', IsSameLine='Y',Updated=TO_TIMESTAMP('2019-11-29 09:11:09','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=9020627
;

