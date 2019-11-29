-- DD_FreightLine_ID into table C_Orderline
INSERT INTO AD_Column (EntityType,Version,FieldLength,IsKey,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsParent,IsSyncDatabase,ReadOnlyLogic,IsAlwaysUpdateable,IsAllowLogging,IsAutocomplete,AD_Element_ID,AD_Column_ID,IsIdentifier,SeqNo,AD_Table_ID,ColumnSQL,ColumnName,IsMandatory,IsUpdateable,Name,IsEncrypted,IsTranslated,IsActive,IsSelectionColumn,Created,CreatedBy,Updated,UpdatedBy) VALUES ('U',0,22,'N',19,0,0,'N','N','1=1','N','Y','N',1002120,1008403,'N',0,260,'(SELECT DD_FreightLine_ID FROM DD_FreightLine fl WHERE  C_Orderline.C_Orderline_ID = fl.C_Orderline_ID)','DD_FreightLine_ID','N','N','Order Freight Line ID','N','N','Y','N',TO_TIMESTAMP('2019-11-28 18:02:05','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2019-11-28 18:02:05','YYYY-MM-DD HH24:MI:SS'),100)
;

INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1008403 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

INSERT INTO AD_Field (IsEncrypted,AD_Client_ID,AD_Org_ID,IsDisplayed,IsActive,DisplayLength,AD_Field_ID,AD_Column_ID,IsFieldOnly,Name,AD_Tab_ID,IsCentrallyMaintained,EntityType,IsReadOnly,IsSameLine,IsHeading,Created,CreatedBy,Updated,UpdatedBy) VALUES ('N',0,0,'Y','Y',5,1020590,1007524,'N','AliqProv_Age1',293,'Y','ZECA','N','N','N',TO_TIMESTAMP('2019-11-28 18:04:18','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2019-11-28 18:04:18','YYYY-MM-DD HH24:MI:SS'),100)
;

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Help,Description, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Help,t.Description, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1020590 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

INSERT INTO AD_Field (IsEncrypted,AD_Client_ID,AD_Org_ID,IsDisplayed,IsActive,DisplayLength,AD_Field_ID,AD_Column_ID,IsFieldOnly,Name,AD_Tab_ID,IsCentrallyMaintained,EntityType,IsReadOnly,IsSameLine,IsHeading,Created,CreatedBy,Updated,UpdatedBy) VALUES ('N',0,0,'Y','Y',5,1020591,1007526,'N','AliqProv_Age2',293,'Y','ZECA','N','N','N',TO_TIMESTAMP('2019-11-28 18:04:18','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2019-11-28 18:04:18','YYYY-MM-DD HH24:MI:SS'),100)
;

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Help,Description, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Help,t.Description, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1020591 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

INSERT INTO AD_Field (IsEncrypted,AD_Client_ID,AD_Org_ID,IsDisplayed,IsActive,DisplayLength,AD_Field_ID,AD_Column_ID,IsFieldOnly,Name,AD_Tab_ID,IsCentrallyMaintained,EntityType,Help,IsReadOnly,IsSameLine,IsHeading,Created,CreatedBy,Description,Updated,UpdatedBy) VALUES ('N',0,0,'Y','Y',10,1020592,1005727,'N','Attribute Set',293,'Y','QWECRM','Define Product Attribute Sets to add additional attributes and values to the product. You need to define a Attribute Set if you want to enable Serial and Lot Number tracking.','N','N','N',TO_TIMESTAMP('2019-11-28 18:04:18','YYYY-MM-DD HH24:MI:SS'),100,'Product Attribute Set',TO_TIMESTAMP('2019-11-28 18:04:18','YYYY-MM-DD HH24:MI:SS'),100)
;

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Help,Description, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Help,t.Description, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1020592 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

INSERT INTO AD_Field (IsEncrypted,AD_Client_ID,AD_Org_ID,IsDisplayed,IsActive,DisplayLength,AD_Field_ID,AD_Column_ID,IsFieldOnly,Name,AD_Tab_ID,IsCentrallyMaintained,EntityType,Help,IsReadOnly,IsSameLine,IsHeading,Created,CreatedBy,Description,Updated,UpdatedBy) VALUES ('N',0,0,'Y','Y',22,1020593,1008070,'N','Break Value',293,'Y','ZECA','Starting Quantity or Amount Value for break level','N','N','N',TO_TIMESTAMP('2019-11-28 18:04:18','YYYY-MM-DD HH24:MI:SS'),100,'Low Value of trade discount break level',TO_TIMESTAMP('2019-11-28 18:04:18','YYYY-MM-DD HH24:MI:SS'),100)
;

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Help,Description, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Help,t.Description, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1020593 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

INSERT INTO AD_Field (IsEncrypted,AD_Client_ID,AD_Org_ID,IsDisplayed,IsActive,DisplayLength,AD_Field_ID,AD_Column_ID,IsFieldOnly,Name,AD_Tab_ID,IsCentrallyMaintained,EntityType,Help,IsReadOnly,IsSameLine,IsHeading,Created,CreatedBy,Description,Updated,UpdatedBy) VALUES ('N',0,0,'Y','Y',22,1020594,1004426,'N','Calo',293,'Y','QWETOR','Calo fisiologico ','N','N','N',TO_TIMESTAMP('2019-11-28 18:04:18','YYYY-MM-DD HH24:MI:SS'),100,'Calo fisiologico ',TO_TIMESTAMP('2019-11-28 18:04:18','YYYY-MM-DD HH24:MI:SS'),100)
;

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Help,Description, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Help,t.Description, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1020594 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

INSERT INTO AD_Field (IsEncrypted,AD_Client_ID,AD_Org_ID,IsDisplayed,IsActive,DisplayLength,AD_Field_ID,AD_Column_ID,IsFieldOnly,Name,AD_Tab_ID,IsCentrallyMaintained,EntityType,IsReadOnly,IsSameLine,IsHeading,Created,CreatedBy,Updated,UpdatedBy) VALUES ('N',0,0,'Y','Y',7,1020595,1008302,'N','dateaconsegnafdestino',293,'Y','ZECA','N','N','N',TO_TIMESTAMP('2019-11-28 18:04:18','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2019-11-28 18:04:18','YYYY-MM-DD HH24:MI:SS'),100)
;

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Help,Description, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Help,t.Description, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1020595 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

INSERT INTO AD_Field (IsEncrypted,AD_Client_ID,AD_Org_ID,IsDisplayed,IsActive,DisplayLength,AD_Field_ID,AD_Column_ID,IsFieldOnly,Name,AD_Tab_ID,IsCentrallyMaintained,EntityType,IsReadOnly,IsSameLine,IsHeading,Created,CreatedBy,Updated,UpdatedBy) VALUES ('N',0,0,'Y','Y',7,1020596,1008303,'N','dateaconsegnaffabbrica',293,'Y','ZECA','N','N','N',TO_TIMESTAMP('2019-11-28 18:04:18','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2019-11-28 18:04:18','YYYY-MM-DD HH24:MI:SS'),100)
;

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Help,Description, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Help,t.Description, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1020596 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

INSERT INTO AD_Field (IsEncrypted,AD_Client_ID,AD_Org_ID,IsDisplayed,IsActive,DisplayLength,AD_Field_ID,AD_Column_ID,IsFieldOnly,Name,AD_Tab_ID,IsCentrallyMaintained,EntityType,IsReadOnly,IsSameLine,IsHeading,Created,CreatedBy,Description,Updated,UpdatedBy) VALUES ('N',0,0,'Y','Y',120,1020597,1005390,'N','Description URL',293,'Y','ARGO','N','N','N',TO_TIMESTAMP('2019-11-28 18:04:18','YYYY-MM-DD HH24:MI:SS'),100,'URL for the description',TO_TIMESTAMP('2019-11-28 18:04:18','YYYY-MM-DD HH24:MI:SS'),100)
;

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Help,Description, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Help,t.Description, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1020597 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

INSERT INTO AD_Field (IsEncrypted,AD_Client_ID,AD_Org_ID,IsDisplayed,IsActive,DisplayLength,AD_Field_ID,AD_Column_ID,IsFieldOnly,Name,AD_Tab_ID,IsCentrallyMaintained,EntityType,Help,IsReadOnly,IsSameLine,IsHeading,Created,CreatedBy,Description,Updated,UpdatedBy) VALUES ('N',0,0,'Y','Y',22,1020598,1004616,'N','DifPeso',293,'Y','U','DIfferenzaPeso','N','N','N',TO_TIMESTAMP('2019-11-28 18:04:18','YYYY-MM-DD HH24:MI:SS'),100,'DIfferenzaPeso',TO_TIMESTAMP('2019-11-28 18:04:18','YYYY-MM-DD HH24:MI:SS'),100)
;

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Help,Description, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Help,t.Description, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1020598 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

INSERT INTO AD_Field (IsEncrypted,AD_Client_ID,AD_Org_ID,IsDisplayed,IsActive,DisplayLength,AD_Field_ID,AD_Column_ID,IsFieldOnly,Name,AD_Tab_ID,IsCentrallyMaintained,EntityType,Help,IsReadOnly,IsSameLine,IsHeading,Created,CreatedBy,Description,Updated,UpdatedBy) VALUES ('N',0,0,'Y','Y',10,1020599,1007752,'N','Discount Pricelist',293,'Y','ZECA','For the Pricelist Discount Type, you enter how the list, standard and limit price is calculated.','N','N','N',TO_TIMESTAMP('2019-11-28 18:04:18','YYYY-MM-DD HH24:MI:SS'),100,'Line of the pricelist trade discount schema',TO_TIMESTAMP('2019-11-28 18:04:18','YYYY-MM-DD HH24:MI:SS'),100)
;

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Help,Description, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Help,t.Description, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1020599 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

INSERT INTO AD_Field (IsEncrypted,AD_Client_ID,AD_Org_ID,IsDisplayed,IsActive,DisplayLength,AD_Field_ID,AD_Column_ID,IsFieldOnly,Name,AD_Tab_ID,IsCentrallyMaintained,EntityType,Help,IsReadOnly,IsSameLine,IsHeading,Created,CreatedBy,Description,Updated,UpdatedBy) VALUES ('N',0,0,'Y','Y',1,1020600,1007867,'N','Discount Printed',293,'Y','ZECA','The Discount Printed Checkbox indicates if the discount will be printed on the document.','N','N','N',TO_TIMESTAMP('2019-11-28 18:04:18','YYYY-MM-DD HH24:MI:SS'),100,'Print Discount on Invoice and Order',TO_TIMESTAMP('2019-11-28 18:04:18','YYYY-MM-DD HH24:MI:SS'),100)
;

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Help,Description, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Help,t.Description, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1020600 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

INSERT INTO AD_Field (IsEncrypted,AD_Client_ID,AD_Org_ID,IsDisplayed,IsActive,DisplayLength,AD_Field_ID,AD_Column_ID,IsFieldOnly,Name,AD_Tab_ID,IsCentrallyMaintained,EntityType,Help,IsReadOnly,IsSameLine,IsHeading,Created,CreatedBy,Description,Updated,UpdatedBy) VALUES ('N',0,0,'Y','Y',10,1020601,1007751,'N','Discount Schema',293,'Y','ZECA','After calculation of the (standard) price, the trade discount percentage is calculated and applied resulting in the final price.','N','N','N',TO_TIMESTAMP('2019-11-28 18:04:18','YYYY-MM-DD HH24:MI:SS'),100,'Schema to calculate the trade discount percentage',TO_TIMESTAMP('2019-11-28 18:04:18','YYYY-MM-DD HH24:MI:SS'),100)
;

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Help,Description, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Help,t.Description, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1020601 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

INSERT INTO AD_Field (IsEncrypted,AD_Client_ID,AD_Org_ID,IsDisplayed,IsActive,DisplayLength,AD_Field_ID,AD_Column_ID,IsFieldOnly,Name,AD_Tab_ID,IsCentrallyMaintained,EntityType,Help,IsReadOnly,IsSameLine,IsHeading,Created,CreatedBy,Description,Updated,UpdatedBy) VALUES ('N',0,0,'Y','Y',22,1020602,1008065,'N','Discount Schema Padre',293,'Y','ZECA','After calculation of the (standard) price, the trade discount percentage is calculated and applied resulting in the final price.','N','N','N',TO_TIMESTAMP('2019-11-28 18:04:18','YYYY-MM-DD HH24:MI:SS'),100,'Schema to calculate the trade discount percentage',TO_TIMESTAMP('2019-11-28 18:04:18','YYYY-MM-DD HH24:MI:SS'),100)
;

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Help,Description, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Help,t.Description, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1020602 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

INSERT INTO AD_Field (IsEncrypted,AD_Client_ID,AD_Org_ID,IsDisplayed,IsActive,DisplayLength,AD_Field_ID,AD_Column_ID,IsFieldOnly,Name,AD_Tab_ID,IsCentrallyMaintained,EntityType,Help,IsReadOnly,IsSameLine,IsHeading,Created,CreatedBy,Description,Updated,UpdatedBy) VALUES ('N',0,0,'Y','Y',500,1020603,1005389,'N','Document Note',293,'Y','ARGO','The Document Note is used for recording any additional information regarding this product.','N','N','N',TO_TIMESTAMP('2019-11-28 18:04:18','YYYY-MM-DD HH24:MI:SS'),100,'Additional information for a Document',TO_TIMESTAMP('2019-11-28 18:04:18','YYYY-MM-DD HH24:MI:SS'),100)
;

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Help,Description, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Help,t.Description, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1020603 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

INSERT INTO AD_Field (IsEncrypted,AD_Client_ID,AD_Org_ID,IsDisplayed,IsActive,DisplayLength,AD_Field_ID,AD_Column_ID,IsFieldOnly,Name,AD_Tab_ID,IsCentrallyMaintained,EntityType,Help,IsReadOnly,IsSameLine,IsHeading,Created,CreatedBy,Description,Updated,UpdatedBy) VALUES ('N',0,0,'Y','Y',22,1020604,1004427,'N','Eccesso',293,'Y','QWETOR','Eccesso','N','N','N',TO_TIMESTAMP('2019-11-28 18:04:18','YYYY-MM-DD HH24:MI:SS'),100,'Eccesso',TO_TIMESTAMP('2019-11-28 18:04:18','YYYY-MM-DD HH24:MI:SS'),100)
;

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Help,Description, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Help,t.Description, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1020604 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

INSERT INTO AD_Field (IsEncrypted,AD_Client_ID,AD_Org_ID,IsDisplayed,IsActive,DisplayLength,AD_Field_ID,AD_Column_ID,IsFieldOnly,Name,AD_Tab_ID,IsCentrallyMaintained,EntityType,IsReadOnly,IsSameLine,IsHeading,Created,CreatedBy,Updated,UpdatedBy) VALUES ('N',0,0,'Y','Y',22,1020605,1005791,'N','Gruppo Riga',293,'Y','U','N','N','N',TO_TIMESTAMP('2019-11-28 18:04:18','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2019-11-28 18:04:18','YYYY-MM-DD HH24:MI:SS'),100)
;

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Help,Description, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Help,t.Description, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1020605 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

INSERT INTO AD_Field (IsEncrypted,AD_Client_ID,AD_Org_ID,IsDisplayed,IsActive,DisplayLength,AD_Field_ID,AD_Column_ID,IsFieldOnly,Name,AD_Tab_ID,IsCentrallyMaintained,EntityType,IsReadOnly,IsSameLine,IsHeading,Created,CreatedBy,Updated,UpdatedBy) VALUES ('N',0,0,'Y','Y',22,1020606,1007525,'N','ImportoProv_Age1',293,'Y','ZECA','N','N','N',TO_TIMESTAMP('2019-11-28 18:04:18','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2019-11-28 18:04:18','YYYY-MM-DD HH24:MI:SS'),100)
;

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Help,Description, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Help,t.Description, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1020606 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

INSERT INTO AD_Field (IsEncrypted,AD_Client_ID,AD_Org_ID,IsDisplayed,IsActive,DisplayLength,AD_Field_ID,AD_Column_ID,IsFieldOnly,Name,AD_Tab_ID,IsCentrallyMaintained,EntityType,IsReadOnly,IsSameLine,IsHeading,Created,CreatedBy,Updated,UpdatedBy) VALUES ('N',0,0,'Y','Y',22,1020607,1007527,'N','ImportoProv_Age2',293,'Y','ZECA','N','N','N',TO_TIMESTAMP('2019-11-28 18:04:18','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2019-11-28 18:04:18','YYYY-MM-DD HH24:MI:SS'),100)
;

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Help,Description, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Help,t.Description, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1020607 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

INSERT INTO AD_Field (IsEncrypted,AD_Client_ID,AD_Org_ID,IsDisplayed,IsActive,DisplayLength,AD_Field_ID,AD_Column_ID,IsFieldOnly,Name,AD_Tab_ID,IsCentrallyMaintained,EntityType,IsReadOnly,IsSameLine,IsHeading,Created,CreatedBy,Updated,UpdatedBy) VALUES ('N',0,0,'Y','Y',2,1020608,1008063,'N','isostato',293,'Y','ZECA','N','N','N',TO_TIMESTAMP('2019-11-28 18:04:18','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2019-11-28 18:04:18','YYYY-MM-DD HH24:MI:SS'),100)
;

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Help,Description, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Help,t.Description, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1020608 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

INSERT INTO AD_Field (IsEncrypted,AD_Client_ID,AD_Org_ID,IsDisplayed,IsActive,DisplayLength,AD_Field_ID,AD_Column_ID,IsFieldOnly,Name,AD_Tab_ID,IsCentrallyMaintained,EntityType,IsReadOnly,IsSameLine,IsHeading,Created,CreatedBy,Updated,UpdatedBy) VALUES ('N',0,0,'Y','Y',1,1020609,1007763,'N','isPrezzonetto',293,'Y','ZECA','N','N','N',TO_TIMESTAMP('2019-11-28 18:04:18','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2019-11-28 18:04:18','YYYY-MM-DD HH24:MI:SS'),100)
;

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Help,Description, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Help,t.Description, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1020609 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

INSERT INTO AD_Field (IsEncrypted,AD_Client_ID,AD_Org_ID,IsDisplayed,IsActive,DisplayLength,AD_Field_ID,AD_Column_ID,IsFieldOnly,Name,AD_Tab_ID,IsCentrallyMaintained,EntityType,IsReadOnly,IsSameLine,IsHeading,Created,CreatedBy,Updated,UpdatedBy) VALUES ('N',0,0,'Y','Y',1,1020610,1008066,'N','isPrezzoSpeciale',293,'Y','ZECA','N','N','N',TO_TIMESTAMP('2019-11-28 18:04:18','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2019-11-28 18:04:18','YYYY-MM-DD HH24:MI:SS'),100)
;

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Help,Description, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Help,t.Description, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1020610 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

INSERT INTO AD_Field (IsEncrypted,AD_Client_ID,AD_Org_ID,IsDisplayed,IsActive,DisplayLength,AD_Field_ID,AD_Column_ID,IsFieldOnly,Name,AD_Tab_ID,IsCentrallyMaintained,EntityType,IsReadOnly,IsSameLine,IsHeading,Created,CreatedBy,Updated,UpdatedBy) VALUES ('N',0,0,'Y','Y',11,1020611,1005788,'N','Linea Prodotti ID',293,'Y','U','N','N','N',TO_TIMESTAMP('2019-11-28 18:04:18','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2019-11-28 18:04:18','YYYY-MM-DD HH24:MI:SS'),100)
;

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Help,Description, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Help,t.Description, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1020611 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

INSERT INTO AD_Field (IsEncrypted,AD_Client_ID,AD_Org_ID,IsDisplayed,IsActive,DisplayLength,AD_Field_ID,AD_Column_ID,IsFieldOnly,Name,AD_Tab_ID,IsCentrallyMaintained,EntityType,IsReadOnly,IsSameLine,IsHeading,Created,CreatedBy,Updated,UpdatedBy) VALUES ('N',0,0,'Y','Y',22,1020612,1008403,'N','Order Freight Line ID',293,'Y','U','N','N','N',TO_TIMESTAMP('2019-11-28 18:04:18','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2019-11-28 18:04:18','YYYY-MM-DD HH24:MI:SS'),100)
;

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Help,Description, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Help,t.Description, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1020612 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

INSERT INTO AD_Field (IsEncrypted,AD_Client_ID,AD_Org_ID,IsDisplayed,IsActive,DisplayLength,AD_Field_ID,AD_Column_ID,IsFieldOnly,Name,AD_Tab_ID,IsCentrallyMaintained,EntityType,IsReadOnly,IsSameLine,IsHeading,Created,CreatedBy,Updated,UpdatedBy) VALUES ('N',0,0,'Y','Y',1,1020613,1005728,'N','PopolaLinee',293,'Y','QWECRM','N','N','N',TO_TIMESTAMP('2019-11-28 18:04:18','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2019-11-28 18:04:18','YYYY-MM-DD HH24:MI:SS'),100)
;

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Help,Description, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Help,t.Description, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1020613 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

INSERT INTO AD_Field (IsEncrypted,AD_Client_ID,AD_Org_ID,IsDisplayed,IsActive,DisplayLength,AD_Field_ID,AD_Column_ID,IsFieldOnly,Name,AD_Tab_ID,IsCentrallyMaintained,EntityType,IsReadOnly,IsSameLine,IsHeading,Created,CreatedBy,Updated,UpdatedBy) VALUES ('N',0,0,'Y','Y',1,1020614,1005793,'N','popolalineeatt',293,'Y','QWECRM','N','N','N',TO_TIMESTAMP('2019-11-28 18:04:18','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2019-11-28 18:04:18','YYYY-MM-DD HH24:MI:SS'),100)
;

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Help,Description, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Help,t.Description, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1020614 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

INSERT INTO AD_Field (IsEncrypted,AD_Client_ID,AD_Org_ID,IsDisplayed,IsActive,DisplayLength,AD_Field_ID,AD_Column_ID,IsFieldOnly,Name,AD_Tab_ID,IsCentrallyMaintained,EntityType,IsReadOnly,IsSameLine,IsHeading,Created,CreatedBy,Updated,UpdatedBy) VALUES ('N',0,0,'Y','Y',1,1020615,1005794,'N','popolalineeord',293,'Y','QWECRM','N','N','N',TO_TIMESTAMP('2019-11-28 18:04:18','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2019-11-28 18:04:18','YYYY-MM-DD HH24:MI:SS'),100)
;

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Help,Description, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Help,t.Description, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1020615 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

INSERT INTO AD_Field (IsEncrypted,AD_Client_ID,AD_Org_ID,IsDisplayed,IsActive,DisplayLength,AD_Field_ID,AD_Column_ID,IsFieldOnly,Name,AD_Tab_ID,IsCentrallyMaintained,EntityType,Help,IsReadOnly,IsSameLine,IsHeading,Created,CreatedBy,Description,Updated,UpdatedBy) VALUES ('N',0,0,'Y','Y',22,1020616,1008064,'N','Price List Padre',293,'Y','ZECA','Price Lists are used to determine the pricing, margin and cost of items purchased or sold.','N','N','N',TO_TIMESTAMP('2019-11-28 18:04:18','YYYY-MM-DD HH24:MI:SS'),100,'Unique identifier of a Price List',TO_TIMESTAMP('2019-11-28 18:04:18','YYYY-MM-DD HH24:MI:SS'),100)
;

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Help,Description, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Help,t.Description, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1020616 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

INSERT INTO AD_Field (IsEncrypted,AD_Client_ID,AD_Org_ID,IsDisplayed,IsActive,DisplayLength,AD_Field_ID,AD_Column_ID,IsFieldOnly,Name,AD_Tab_ID,IsCentrallyMaintained,EntityType,IsReadOnly,IsSameLine,IsHeading,Created,CreatedBy,Updated,UpdatedBy) VALUES ('N',0,0,'Y','Y',11,1020617,1005789,'N','ProductFamily',293,'Y','U','N','N','N',TO_TIMESTAMP('2019-11-28 18:04:18','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2019-11-28 18:04:18','YYYY-MM-DD HH24:MI:SS'),100)
;

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Help,Description, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Help,t.Description, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1020617 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

INSERT INTO AD_Field (IsEncrypted,AD_Client_ID,AD_Org_ID,IsDisplayed,IsActive,DisplayLength,AD_Field_ID,AD_Column_ID,IsFieldOnly,Name,AD_Tab_ID,IsCentrallyMaintained,EntityType,IsReadOnly,IsSameLine,IsHeading,Created,CreatedBy,Updated,UpdatedBy) VALUES ('N',0,0,'Y','Y',50,1020618,1004424,'N','TipologiaImbarco',293,'Y','QWETOR','N','N','N',TO_TIMESTAMP('2019-11-28 18:04:18','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2019-11-28 18:04:18','YYYY-MM-DD HH24:MI:SS'),100)
;

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Help,Description, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Help,t.Description, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1020618 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1020590
;

UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1020591
;

UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1020592
;

UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1020593
;

UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1020594
;

UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1020597
;

UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1020598
;

UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1020599
;

UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1020600
;

UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1020601
;

UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1020602
;

UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1020603
;

UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1020604
;

UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1020605
;

UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1020606
;

UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1020607
;

UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1020611
;

UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1020613
;

UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1020616
;

UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1020617
;

UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1020618
;

UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1020595
;

UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1020596
;

UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1020610
;

UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1020609
;

UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1020608
;

UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1020614
;

UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1020615
;

UPDATE AD_Field SET SeqNo=420,IsDisplayed='Y' WHERE AD_Field_ID=1020612
;

INSERT INTO AD_Reference (AD_Reference_ID,ValidationType,Name,AD_Client_ID,AD_Org_ID,IsActive,EntityType,IsOrderByValue,Created,CreatedBy,Updated,UpdatedBy) VALUES (1000279,'T','DD_FreightLine',0,0,'Y','U','N',TO_TIMESTAMP('2019-11-28 18:13:49','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2019-11-28 18:13:49','YYYY-MM-DD HH24:MI:SS'),100)
;

INSERT INTO AD_Reference_Trl (AD_Language,AD_Reference_ID, Name,Help,Description, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Reference_ID, t.Name,t.Help,t.Description, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Reference t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Reference_ID=1000279 AND NOT EXISTS (SELECT * FROM AD_Reference_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Reference_ID=t.AD_Reference_ID)
;

INSERT INTO AD_Ref_Table (AD_Key,IsValueDisplayed,AD_Client_ID,AD_Reference_ID,AD_Org_ID,AD_Table_ID,EntityType,IsActive,AD_Display,Created,CreatedBy,Updated,UpdatedBy) VALUES (1008396,'Y',0,1000279,0,54259,'U','Y',83750,TO_TIMESTAMP('2019-11-28 18:14:56','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2019-11-28 18:14:56','YYYY-MM-DD HH24:MI:SS'),100)
;

UPDATE AD_Column SET AD_Reference_Value_ID=1000279, AD_Reference_ID=18,Updated=TO_TIMESTAMP('2019-11-28 18:15:14','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1008403
;

UPDATE AD_Ref_Table SET IsValueDisplayed='N',Updated=TO_TIMESTAMP('2019-11-28 18:17:53','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Reference_ID=1000279
;

UPDATE AD_Ref_Table SET AD_Window_ID=53519,Updated=TO_TIMESTAMP('2019-11-28 19:15:10','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Reference_ID=1000279
;

