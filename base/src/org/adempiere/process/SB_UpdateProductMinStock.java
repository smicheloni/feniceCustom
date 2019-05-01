/******************************************************************************
 * Product: ADempiere ERP & CRM Smart Business Solution                       *
 * Copyright (C) 2006-2017 ADempiere Foundation, All Rights Reserved.         *
 * This program is free software, you can redistribute it and/or modify it    *
 * under the terms version 2 of the GNU General Public License as published   *
 * or (at your option) any later version.										*
 * by the Free Software Foundation. This program is distributed in the hope   *
 * that it will be useful, but WITHOUT ANY WARRANTY, without even the implied *
 * warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.           *
 * See the GNU General Public License for more details.                       *
 * You should have received a copy of the GNU General Public License along    *
 * with this program, if not, write to the Free Software Foundation, Inc.,    *
 * 59 Temple Place, Suite 330, Boston, MA 02111-1307 USA.                     *
 * For the text or an alternative of this public license, you may reach us    *
 * or via info@adempiere.net or http://www.adempiere.net/license.html         *
 *****************************************************************************/

package org.adempiere.process;

import java.math.BigDecimal;
import java.sql.Timestamp;
import java.util.ArrayList;

import org.compiere.util.DB;

/** Generated Process for (Update Product Minimum Stock)
 *  @author ADempiere (generated) 
 * 	@author Mario Calderon, mario.calderon@westfalia-it.com, Systemhaus Westfalia http://www.westfalia-it.com
 *  For selected products existing minimum stock definitions are modified.
 *  Not for creating minimum stock definitions.
 *  @version Release 3.9.2
 */
public class SB_UpdateProductMinStock extends SB_UpdateProductMinStockAbstract
{
	@Override
	protected void prepare()
	{
		super.prepare();
	}


	/**
	 * 	Update Replenishment
	 *	@return info
	 *	@throws Exception
	 */
	@Override
	protected String doIt() throws Exception
	{
        ArrayList<Object> params = new ArrayList<Object>();
		int updated = 0;
        for(int product_ID : getSelectionKeys()) {
        	//MProduct product = new MProduct(getCtx(), product_ID, get_TrxName());

        	BigDecimal minLevel = getSelectionAsBigDecimal(product_ID, "R_Level_Min");
        	BigDecimal maxLevel = getSelectionAsBigDecimal(product_ID, "R_Level_Max");
        	int warehouse_ID = getSelectionAsInt(product_ID, "R_M_Warehouse_ID");

        	String whereClause = "WHERE M_Product_ID=? AND M_Warehouse_ID =?";
        	String sql = "UPDATE M_Replenish SET level_min=? , level_max=?" + whereClause;
        	params.clear();
        	params.add(minLevel);
        	params.add(maxLevel);
        	params.add(product_ID);
        	params.add(warehouse_ID);
        	updated += DB.executeUpdateEx(sql, params.toArray(), get_TrxName());
        }
        return "@Updated@=" + updated;
	}
}