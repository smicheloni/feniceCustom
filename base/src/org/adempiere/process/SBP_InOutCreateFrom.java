/******************************************************************************
 * Product: ADempiere ERP & CRM Smart Business Solution                       *
 * Copyright (C) 2006-2016 ADempiere Foundation, All Rights Reserved.         *
 * This program is free software, you can redistribute it and/or modify it    *
 * under the terms version 2 of the GNU General Public License as published   *
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

import org.adempiere.exceptions.AdempiereException;
import org.compiere.model.MInOut;
import org.compiere.model.MInOutLine;
import org.compiere.model.MLocator;
import org.compiere.model.MOrderLine;
import org.compiere.model.MProduct;
import org.compiere.model.MWarehouse;
import org.compiere.util.DB;
import org.eevolution.model.MDDFreight;
import org.eevolution.model.MDDFreightLine;

/** Create Material Receipt Lines from Freight Order 
 *  @author SusanneCalderon
 *  @version 1
 */
public class SBP_InOutCreateFrom extends SBP_InOutCreateFromAbstract {

	/**	Create From Type of Order	*/
	private static final String FREGIGHTORDER = "O";
	/**	Created						*/
	private int created = 0;
	
	@Override
	protected void prepare() {
		super.prepare();
	}
	
	@Override
	protected String doIt() throws Exception {
		MInOut inout          = new MInOut(getCtx(), getinOutId(), get_TrxName());
		String createFromType = FREGIGHTORDER;
		MLocator locator      = MLocator.getDefault((MWarehouse) inout.getM_Warehouse());

		MDDFreight freight    = new MDDFreight(getCtx(), getfreightId(), get_TrxName());
		for(MDDFreightLine freightLine : freight.getLines()) {
	    	int inOut_ID = freightLine.get_ValueAsInt("M_InOutLine_ID");
			if(inOut_ID>0) {
				continue;  // Material already received from Freight
			}
			int product_ID         = freightLine.getM_Product_ID();
			int uomID              = freightLine.get_ValueAsInt("C_UOM_ID");
			BigDecimal movementQty = new BigDecimal (freightLine.get_ValueAsInt("MovementQty"));
			
			log.fine("Line QtyEntered=" + movementQty
					+ ", Product=" + freightLine.getM_Product().getName() 
					+ ", CreateFromType=" + createFromType + ", Key=" + freightLine.getDD_FreightLine_ID());

			MInOutLine iol = new MInOutLine (inout);
			iol.setM_Product_ID(product_ID, uomID);	//	Line UOM
			iol.setQty(movementQty);				//	Movement/Entered
			iol.setM_Locator_ID(locator.getM_Locator_ID());
			iol.set_ValueOfColumn("DD_FreightLine_ID", freightLine.getDD_FreightLine_ID());
			
			// PO Lines values
			int orderLineID = freightLine.get_ValueAsInt(MOrderLine.COLUMNNAME_C_OrderLine_ID);
			iol.setC_OrderLine_ID(orderLineID);
			MOrderLine orderLine = new MOrderLine(getCtx(), orderLineID, get_TrxName());
			iol.setDescription(orderLine.getDescription());
			iol.setC_Project_ID(orderLine.getC_Project_ID());
			iol.setC_ProjectPhase_ID(orderLine.getC_ProjectPhase_ID());
			iol.setC_ProjectTask_ID(orderLine.getC_ProjectTask_ID());
			iol.setC_Activity_ID(orderLine.getC_Activity_ID());
			iol.setC_Campaign_ID(orderLine.getC_Campaign_ID());
			iol.setAD_OrgTrx_ID(orderLine.getAD_OrgTrx_ID());
			iol.setUser1_ID(orderLine.getUser1_ID());
			iol.setUser2_ID(orderLine.getUser2_ID());
			
			iol.saveEx();
			created ++;
		}
		return "@Created@ " + created;
	}
	
		
}