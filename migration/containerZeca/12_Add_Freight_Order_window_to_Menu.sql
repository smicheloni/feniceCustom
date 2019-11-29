-- Add Freight Order window to Menu
INSERT INTO AD_Menu (AD_Menu_ID,AD_Org_ID,IsCentrallyMaintained,IsSOTrx,Name,"action",AD_Window_ID,AD_Client_ID,IsActive,IsReadOnly,EntityType,Created,CreatedBy,IsSummary,Updated,UpdatedBy) VALUES (1000582,0,'Y','N','Freight Order','W',53519,0,'Y','N','U',TO_TIMESTAMP('2019-11-24 23:31:36','YYYY-MM-DD HH24:MI:SS'),100,'N',TO_TIMESTAMP('2019-11-24 23:31:36','YYYY-MM-DD HH24:MI:SS'),100)
;

INSERT INTO AD_Menu_Trl (AD_Language,AD_Menu_ID, Name,Description, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Menu_ID, t.Name,t.Description, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Menu t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Menu_ID=1000582 AND NOT EXISTS (SELECT * FROM AD_Menu_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Menu_ID=t.AD_Menu_ID)
;

INSERT INTO AD_TreeNodeMM (AD_Client_ID,AD_Org_ID, IsActive,Created,CreatedBy,Updated,UpdatedBy, AD_Tree_ID, Node_ID, Parent_ID, SeqNo) SELECT t.AD_Client_ID, 0, 'Y', CURRENT_TIMESTAMP, 100, CURRENT_TIMESTAMP, 100,t.AD_Tree_ID, 1000582, 0, 999 FROM AD_Tree t WHERE t.AD_Client_ID=0 AND t.IsActive='Y' AND t.IsAllNodes='Y' AND t.TreeType='MM' AND NOT EXISTS (SELECT * FROM AD_TreeNodeMM e WHERE e.AD_Tree_ID=t.AD_Tree_ID AND Node_ID=1000582)
;

