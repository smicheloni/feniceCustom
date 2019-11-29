-- Create Document Subtype Freight Order
INSERT INTO AD_Ref_List (AD_Org_ID,Value,EntityType,AD_Ref_List_ID,AD_Reference_ID,Name,IsActive,AD_Client_ID,Created,CreatedBy,Updated,UpdatedBy) VALUES (0,'FOB','U',1001375,183,'Freight Order','Y',0,TO_TIMESTAMP('2019-11-25 00:29:15','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2019-11-25 00:29:15','YYYY-MM-DD HH24:MI:SS'),100)
;

INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Name,Description, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Name,t.Description, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=1001375 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

UPDATE AD_Ref_List SET Description='Freight Order (non-Standard)',Updated=TO_TIMESTAMP('2019-11-25 00:29:43','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1001375
;
UPDATE AD_Ref_List_Trl SET IsTranslated='N' WHERE AD_Ref_List_ID=1001375
;

