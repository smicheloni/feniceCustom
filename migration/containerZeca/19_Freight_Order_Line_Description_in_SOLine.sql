-- Freight Order Line Description on table Sales Order Line, AD_Column_ID= 9008404
INSERT INTO AD_Column (EntityType,Version,FieldLength,IsKey,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsParent,IsSyncDatabase,IsAlwaysUpdateable,IsAllowLogging,IsAutocomplete,AD_Element_ID,AD_Column_ID,IsIdentifier,SeqNo,AD_Table_ID,ColumnSQL,ColumnName,IsMandatory,IsUpdateable,Name,IsEncrypted,IsTranslated,IsActive,IsSelectionColumn,Created,CreatedBy,Updated,UpdatedBy) VALUES ('U',0,255,'N',10,0,0,'N','N','N','Y','N',2532,9008404,'N',0,260,' (SELECT ''Cont: '' || f.documentno  || ''- Quant.: '' || fl.movementqty  ||  ''-Prod.: '' ||  p.name FROM DD_FreightLine fl INNER JOIN DD_Freight f ON (fl.DD_Freight_ID=f.DD_Freight_ID)  INNER JOIN M_Product p ON (fl.M_Product_ID=p.M_Product_ID) WHERE  C_Orderline.C_Orderline_ID = fl.C_Orderline_ID)','ShipDescription','N','N','Ship Description','N','N','Y','N',TO_TIMESTAMP('2019-11-28 19:47:54','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2019-11-28 19:47:54','YYYY-MM-DD HH24:MI:SS'),100)
;

INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=9008404 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Freight Order Line Description field on tab Sales Order Line, AD_Field_ID= 9020619
INSERT INTO AD_Field (IsEncrypted,AD_Client_ID,AD_Org_ID,IsDisplayed,IsActive,DisplayLength,AD_Field_ID,AD_Column_ID,IsFieldOnly,Name,AD_Tab_ID,IsCentrallyMaintained,EntityType,IsReadOnly,IsSameLine,IsHeading,Created,CreatedBy,Updated,UpdatedBy) VALUES ('N',0,0,'Y','Y',255,9020619,9008404,'N','Ship Description',293,'Y','U','N','N','N',TO_TIMESTAMP('2019-11-28 19:49:29','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2019-11-28 19:49:29','YYYY-MM-DD HH24:MI:SS'),100)
;

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Help,Description, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Help,t.Description, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=9020619 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

UPDATE AD_Field SET IsSameLine='Y',Updated=TO_TIMESTAMP('2019-11-28 19:49:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=9020619
;

