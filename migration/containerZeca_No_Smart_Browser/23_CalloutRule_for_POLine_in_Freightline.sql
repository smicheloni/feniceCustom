-- Rule for PO Line in Freight Order Line
UPDATE AD_Column SET Callout='@Script:groovy:updateFreightLine',Updated=TO_TIMESTAMP('2019-12-03 19:24:20','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=95004
;

INSERT INTO AD_Rule (AD_Org_ID,AD_Client_ID,Script,EntityType,RuleType,EventType,IsActive,AD_Rule_ID,Value,Name,Created,CreatedBy,Description,Updated,UpdatedBy) VALUES (0,0,'import java.math.BigDecimal;
import org.compiere.model.MOrderLine;
import org.compiere.util.DB;

Integer C_Orderline_ID = (Integer)A_Value;
if (C_Orderline_ID == null || C_Orderline_ID.intValue() == 0){
    A_Tab.setValue("M_Product_ID", null); 
    A_Tab.setValue("MovementQty", 0); 
           return "";            
}

MOrderLine orderline = new MOrderLine(A_Ctx, C_Orderline_ID, null);
if (orderline == null || orderline.getC_OrderLine_ID() == 0){
    A_Tab.setValue("M_Product_ID", null); 
    A_Tab.setValue("MovementQty", 0); 
           return "";            
}

// M_Product_ID
String sql = "SELECT ol.M_Product_ID " + 
"FROM C_Orderline ol " + 
"WHERE ol.C_Orderline_ID= ? ";

int M_Product_ID = DB.getSQLValueEx(null, sql, orderline.getC_OrderLine_ID());

if (M_Product_ID == null || M_Product_ID== 0)
    return "";

A_Tab.setValue("M_Product_ID", M_Product_ID);  

// Movement Qty
sql = "SELECT ol.qtyordered " + 
"FROM C_Orderline ol " + 
"WHERE ol.C_Orderline_ID= ? ";

BigDecimal qtyordered = DB.getSQLValueEx(null, sql, orderline.getC_OrderLine_ID());

A_Tab.setValue("MovementQty", qtyordered);  


return "";','U','S','C','Y',9000068,'groovy:updateFreightLine','updateFreightLine',TO_TIMESTAMP('2019-12-03 19:25:26','YYYY-MM-DD HH24:MI:SS'),100,'Updates Product and MovementQty in Freght Line based on Purchase Order Line',TO_TIMESTAMP('2019-12-03 19:25:26','YYYY-MM-DD HH24:MI:SS'),100)
;

