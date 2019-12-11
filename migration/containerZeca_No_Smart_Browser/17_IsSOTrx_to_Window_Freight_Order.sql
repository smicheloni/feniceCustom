-- Add IsSOTrx to Window Freight Order

-- First, delete all existing records, if any
delete from dd_freightline;
delete from dd_freight;

-- Column "isSOtrx" on table DD_Freight, AD_Column_ID= 1000677
INSERT INTO AD_Column (EntityType,Version,FieldLength,IsKey,Help,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsParent,IsSyncDatabase,IsAlwaysUpdateable,IsAllowLogging,IsAutocomplete,AD_Element_ID,AD_Column_ID,IsIdentifier,SeqNo,AD_Table_ID,ColumnName,IsMandatory,DefaultValue,IsUpdateable,Name,IsEncrypted,IsTranslated,IsActive,IsSelectionColumn,Created,CreatedBy,Description,Updated,UpdatedBy) VALUES ('EE03',0,1,'N','The Sales Transaction checkbox indicates if this item is a Sales Transaction.',20,0,0,'N','N','N','Y','N',1106,1000677,'N',0,54258,'IsSOTrx','Y','0','Y','Sales Transaction','N','N','Y','N',TO_TIMESTAMP('2019-11-28 14:41:09','YYYY-MM-DD HH24:MI:SS'),100,'This is a Sales Transaction',TO_TIMESTAMP('2019-11-28 14:41:09','YYYY-MM-DD HH24:MI:SS'),100)
;

INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1000677 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

ALTER TABLE DD_Freight ADD COLUMN IsSOTrx CHAR(1) DEFAULT '0' CHECK (IsSOTrx IN ('Y','N')) NOT NULL
;

-- Field "IsSOTrx" on window "Freight Order", AD_Field_ID= 1000003
INSERT INTO AD_Field (IsEncrypted,AD_Client_ID,AD_Org_ID,IsDisplayed,IsActive,DisplayLength,AD_Field_ID,AD_Column_ID,IsFieldOnly,Name,AD_Tab_ID,IsCentrallyMaintained,EntityType,Help,IsReadOnly,IsSameLine,IsHeading,Created,CreatedBy,Description,Updated,UpdatedBy) VALUES ('N',0,0,'Y','Y',1,1000003,1000677,'N','Sales Transaction',54312,'Y','EE03','The Sales Transaction checkbox indicates if this item is a Sales Transaction.','N','N','N',TO_TIMESTAMP('2019-11-28 14:43:08','YYYY-MM-DD HH24:MI:SS'),100,'This is a Sales Transaction',TO_TIMESTAMP('2019-11-28 14:43:08','YYYY-MM-DD HH24:MI:SS'),100)
;

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Help,Description, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Help,t.Description, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1000003 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

UPDATE AD_Field SET SeqNo=40,IsDisplayed='Y' WHERE AD_Field_ID=1000003
;

UPDATE AD_Field SET SeqNo=50,IsDisplayed='Y' WHERE AD_Field_ID=81779
;

UPDATE AD_Field SET SeqNo=60,IsDisplayed='Y' WHERE AD_Field_ID=81780
;

UPDATE AD_Field SET SeqNo=70,IsDisplayed='Y' WHERE AD_Field_ID=81781
;

UPDATE AD_Field SET SeqNo=80,IsDisplayed='Y' WHERE AD_Field_ID=81782
;

UPDATE AD_Field SET SeqNo=90,IsDisplayed='Y' WHERE AD_Field_ID=1020580
;

UPDATE AD_Field SET SeqNo=100,IsDisplayed='Y' WHERE AD_Field_ID=81788
;

UPDATE AD_Field SET SeqNo=110,IsDisplayed='Y' WHERE AD_Field_ID=81787
;

UPDATE AD_Field SET SeqNo=120,IsDisplayed='Y' WHERE AD_Field_ID=81796
;

UPDATE AD_Field SET SeqNo=130,IsDisplayed='Y' WHERE AD_Field_ID=81794
;

UPDATE AD_Field SET SeqNo=140,IsDisplayed='Y' WHERE AD_Field_ID=81795
;

UPDATE AD_Field SET SeqNo=150,IsDisplayed='Y' WHERE AD_Field_ID=81797
;

UPDATE AD_Field SET SeqNo=160,IsDisplayed='Y' WHERE AD_Field_ID=81798
;

UPDATE AD_Field SET IsSameLine='Y',Updated=TO_TIMESTAMP('2019-11-28 14:43:50','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000003
;

