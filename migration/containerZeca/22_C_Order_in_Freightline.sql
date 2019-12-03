-- ADD REFERENCE TO ORDER IN FREIGHT ORDER C_ORDERLINE

-- Rule to get all Order lines of an order
INSERT INTO AD_Val_Rule (AD_Org_ID,Type,Code,AD_Client_ID,Name,IsActive,AD_Val_Rule_ID,EntityType,Created,CreatedBy,Updated,UpdatedBy) VALUES (0,'S','C_OrderLine.C_OrderLine_ID in (SELECT ol.C_OrderLine_ID FROM C_OrderLine ol WHERE ol.C_Order_ID=@1|C_Order_ID@)',0,'C_OrderLine in Freight Order','Y',9000122,'U',TO_TIMESTAMP('2019-12-03 17:18:38','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2019-12-03 17:18:38','YYYY-MM-DD HH24:MI:SS'),100)
;

UPDATE AD_Column SET AD_Val_Rule_ID=9000122, AD_Reference_ID=18, IsUpdateable='Y',Updated=TO_TIMESTAMP('2019-12-03 17:19:27','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=95004
;

-- Reference: Completed or closed Orders
INSERT INTO AD_Reference (AD_Reference_ID,ValidationType,Name,AD_Client_ID,AD_Org_ID,IsActive,EntityType,IsOrderByValue,Created,CreatedBy,Description,Updated,UpdatedBy) VALUES (9000279,'T','C_Order Completed',0,0,'Y','U','N',TO_TIMESTAMP('2019-12-03 17:23:38','YYYY-MM-DD HH24:MI:SS'),100,'Order Completed or Closed',TO_TIMESTAMP('2019-12-03 17:23:38','YYYY-MM-DD HH24:MI:SS'),100)
;

INSERT INTO AD_Reference_Trl (AD_Language,AD_Reference_ID, Name,Help,Description, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Reference_ID, t.Name,t.Help,t.Description, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Reference t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Reference_ID=9000279 AND NOT EXISTS (SELECT * FROM AD_Reference_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Reference_ID=t.AD_Reference_ID)
;

INSERT INTO AD_Ref_Table (AD_Key,WhereClause,IsValueDisplayed,OrderByClause,AD_Client_ID,AD_Reference_ID,AD_Org_ID,AD_Table_ID,EntityType,IsActive,AD_Display,Created,CreatedBy,Updated,UpdatedBy) VALUES (2161,'C_Order.isSOTrx = ''N'' AND C_Order.DocStatus IN ( ''CO'' , ''CL'')','N','C_Order.DocumentNo',0,9000279,0,259,'U','Y',2169,TO_TIMESTAMP('2019-12-03 17:25:12','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2019-12-03 17:25:12','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Add column C_Order_ID to table DD_Freightline
INSERT INTO AD_Column (EntityType,Version,AD_Reference_Value_ID,FieldLength,IsKey,Help,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsParent,IsSyncDatabase,IsAlwaysUpdateable,IsAllowLogging,IsAutocomplete,AD_Element_ID,AD_Column_ID,IsIdentifier,SeqNo,AD_Table_ID,ColumnName,IsMandatory,IsUpdateable,Name,IsEncrypted,IsTranslated,IsActive,IsSelectionColumn,Created,CreatedBy,Description,Updated,UpdatedBy) VALUES ('U',0,9000279,22,'N','The Order is a control document.  The  Order is complete when the quantity ordered is the same as the quantity shipped and invoiced.  When you close an order, unshipped (backordered) quantities are cancelled.',18,0,0,'N','N','N','Y','N',558,9008402,'N',0,54259,'C_Order_ID','N','Y','Order','N','N','Y','N',TO_TIMESTAMP('2019-12-03 17:26:04','YYYY-MM-DD HH24:MI:SS'),100,'Order',TO_TIMESTAMP('2019-12-03 17:26:04','YYYY-MM-DD HH24:MI:SS'),100)
;

INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=9008402 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

ALTER TABLE DD_FreightLine ADD COLUMN C_Order_ID NUMERIC(10) DEFAULT NULL 
;

-- IAdd column C_Order_ID to windod Freight
INSERT INTO AD_Field (IsEncrypted,AD_Client_ID,AD_Org_ID,IsDisplayed,IsActive,DisplayLength,AD_Field_ID,AD_Column_ID,IsFieldOnly,Name,AD_Tab_ID,IsCentrallyMaintained,EntityType,Help,IsReadOnly,IsSameLine,IsHeading,Created,CreatedBy,Description,Updated,UpdatedBy) VALUES ('N',0,0,'Y','Y',22,9020589,9008402,'N','Order',54313,'Y','U','The Order is a control document.  The  Order is complete when the quantity ordered is the same as the quantity shipped and invoiced.  When you close an order, unshipped (backordered) quantities are cancelled.','N','N','N',TO_TIMESTAMP('2019-12-03 17:26:37','YYYY-MM-DD HH24:MI:SS'),100,'Order',TO_TIMESTAMP('2019-12-03 17:26:37','YYYY-MM-DD HH24:MI:SS'),100)
;

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Help,Description, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Help,t.Description, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=9020589 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

UPDATE AD_Field SET SeqNo=70,IsDisplayed='Y' WHERE AD_Field_ID=9020589
;

-- Sales Order line
UPDATE AD_Field SET SeqNo=80,IsDisplayed='Y' WHERE AD_Field_ID=1020583
;

UPDATE AD_Field SET SeqNo=90,IsDisplayed='Y' WHERE AD_Field_ID=9020627
;

UPDATE AD_Column SET IsMandatory='N',Updated=TO_TIMESTAMP('2019-12-03 17:30:19','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=95004
;

INSERT INTO t_alter_column values('dd_freightline','C_OrderLine_ID','NUMERIC(10)',null,'NULL')
;

