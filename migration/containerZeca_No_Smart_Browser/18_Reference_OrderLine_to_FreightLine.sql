-- DD_FreightLine_ID into table C_Orderline AD_Column_ID= 1000678
INSERT INTO AD_Column (EntityType,Version,FieldLength,IsKey,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsParent,IsSyncDatabase,ReadOnlyLogic,IsAlwaysUpdateable,IsAllowLogging,IsAutocomplete,AD_Element_ID,AD_Column_ID,IsIdentifier,SeqNo,AD_Table_ID,ColumnSQL,ColumnName,IsMandatory,IsUpdateable,Name,IsEncrypted,IsTranslated,IsActive,IsSelectionColumn,Created,CreatedBy,Updated,UpdatedBy) VALUES ('U',0,22,'N',19,0,0,'N','N','1=1','N','Y','N',59466,1000678,'N',0,260,'(SELECT DD_FreightLine_ID FROM DD_FreightLine fl WHERE  C_Orderline.C_Orderline_ID = fl.C_Orderline_ID)','DD_FreightLine_ID','N','N','Order Freight Line ID','N','N','Y','N',TO_TIMESTAMP('2019-11-28 18:02:05','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2019-11-28 18:02:05','YYYY-MM-DD HH24:MI:SS'),100)
;

INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1000678 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- DD_FreightLine_ID into window Orderline, AD_Field_ID= 1000004
INSERT INTO AD_Field (IsEncrypted,AD_Client_ID,AD_Org_ID,IsDisplayed,IsActive,DisplayLength,AD_Field_ID,AD_Column_ID,IsFieldOnly,Name,AD_Tab_ID,IsCentrallyMaintained,EntityType,IsReadOnly,IsSameLine,IsHeading,Created,CreatedBy,Updated,UpdatedBy) VALUES ('N',0,0,'Y','Y',22,1000004,1000678,'N','Order Freight Line ID',293,'Y','U','N','N','N',TO_TIMESTAMP('2019-11-28 18:04:18','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2019-11-28 18:04:18','YYYY-MM-DD HH24:MI:SS'),100)
;

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Help,Description, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Help,t.Description, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1000004 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

UPDATE AD_Field SET SeqNo=420,IsDisplayed='Y' WHERE AD_Field_ID=1000004
;

-- new reference: "DD_FreightLine", AD_Reference_ID= 1000084
INSERT INTO AD_Reference (AD_Reference_ID,ValidationType,Name,AD_Client_ID,AD_Org_ID,IsActive,EntityType,IsOrderByValue,Created,CreatedBy,Updated,UpdatedBy) VALUES (1000084,'T','DD_FreightLine',0,0,'Y','U','N',TO_TIMESTAMP('2019-11-28 18:13:49','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2019-11-28 18:13:49','YYYY-MM-DD HH24:MI:SS'),100)
;

INSERT INTO AD_Reference_Trl (AD_Language,AD_Reference_ID, Name,Help,Description, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Reference_ID, t.Name,t.Help,t.Description, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Reference t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Reference_ID=1000084 AND NOT EXISTS (SELECT * FROM AD_Reference_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Reference_ID=t.AD_Reference_ID)
;

INSERT INTO AD_Ref_Table (AD_Key,IsValueDisplayed,AD_Client_ID,AD_Reference_ID,AD_Org_ID,AD_Table_ID,EntityType,IsActive,AD_Display,Created,CreatedBy,Updated,UpdatedBy) VALUES (1008396,'Y',0,1000084,0,54259,'U','Y',83750,TO_TIMESTAMP('2019-11-28 18:14:56','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2019-11-28 18:14:56','YYYY-MM-DD HH24:MI:SS'),100)
;

UPDATE AD_Column SET AD_Reference_Value_ID=1000084, AD_Reference_ID=18,Updated=TO_TIMESTAMP('2019-11-28 18:15:14','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1000678
;

UPDATE AD_Ref_Table SET IsValueDisplayed='N',Updated=TO_TIMESTAMP('2019-11-28 18:17:53','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Reference_ID=1000084
;

-- To show referenced Purchase Order Line
UPDATE AD_Ref_Table SET AD_Window_ID=53519,Updated=TO_TIMESTAMP('2019-11-28 19:15:10','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Reference_ID=1000084
;

