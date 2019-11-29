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
import org.eevolution.model.MDDFreight;
import org.eevolution.model.MDDFreightLine;

/** Generated Process for (In Out Create From)
 *  @author ADempiere (generated) 
 *  @version Release 3.8.0
 * 	@author Yamel Senih, ysenih@erpcya.com, ERPCyA http://www.erpcya.com
 *  <li> FR [ 327 ] Create From in M_InOut change to Smart Browse
 *  @see https://github.com/adempiere/adempiere/issues/327
 *	@author Victor Perez , victor.perez@e-evolution.com, http://e-evolution.com
 */
public class SBP_InOutCreateFrom extends SBP_InOutCreateFromAbstract {

	/**	Create From Type of Order	*/
	private static final String ORDER = "O";
	/**	Created						*/
	private int created = 0;
	
	@Override
	protected void prepare() {
		super.prepare();
	}
	
	@Override
	protected String doIt() throws Exception {
		// Get Shipment
		MInOut inout = new MInOut(getCtx(), getinOutId(), get_TrxName());
		//	Create From Type
		String createFromType = null;
		//	Get Default Locator
		MLocator locator = MLocator.getDefault((MWarehouse) inout.getM_Warehouse());
		//	Loop
		MDDFreight freight = new MDDFreight(getCtx(), getfreightId(), get_TrxName());
		for(MDDFreightLine freightLine : freight.getLines()) {
			if(createFromType == null) {
				createFromType = ORDER;
				//	Valid Mandatory Create From Type
				if(createFromType == null
						|| createFromType.length() == 0)
					throw new AdempiereException("@CreateFromType@ @NotFound@");
			}
			// variable values
			MOrderLine orderLine = new MOrderLine(getCtx(), freightLine.get_ValueAsInt(MOrderLine.COLUMNNAME_C_OrderLine_ID), get_TrxName());
			int m_M_Product_ID = orderLine.getM_Product_ID();
			BigDecimal m_QtyEntered = orderLine.getQtyEntered();
			BigDecimal qtyToDeliver = orderLine.getQtyEntered().subtract(orderLine.getQtyDelivered());
			int m_C_UOM_ID = orderLine.getC_UOM_ID();
			int m_M_Locator_ID = 0;
			// If a locator is specified on the product, choose that otherwise default locator
			if(m_M_Locator_ID == 0)
				m_M_Locator_ID = getLocatorId();
			//	Valid locator
			if(m_M_Locator_ID == 0) {
				if(locator != null)
					m_M_Locator_ID = locator.getM_Locator_ID();
				else
					throw new AdempiereException("@M_Locator_ID@ @NotFound@");
			}
			//	Precision of Qty UOM
			int precision = 2;
			if (m_M_Product_ID != 0) {
				MProduct product = MProduct.get(getCtx(), m_M_Product_ID);
				precision = product.getUOMPrecision();
			}
			qtyToDeliver = qtyToDeliver.setScale(precision, BigDecimal.ROUND_HALF_DOWN);
			//
			log.fine("Line QtyEntered=" + m_QtyEntered
					+ ", Product=" + m_M_Product_ID 
					+ ", CreateFromType=" + createFromType + ", Key=" + orderLine.getC_OrderLine_ID());

			//	Create new InOut Line
			MInOutLine iol = new MInOutLine (inout);
			iol.setM_Product_ID(m_M_Product_ID, m_C_UOM_ID);	//	Line UOM
			iol.setQty(qtyToDeliver);							//	Movement/Entered
			//
			if(createFromType.equals(ORDER)) {
				iol.setC_OrderLine_ID(orderLine.getC_OrderLine_ID());
				if (orderLine.getQtyEntered().compareTo(orderLine.getQtyOrdered()) != 0) {
					iol.setMovementQty(m_QtyEntered
							.multiply(orderLine.getQtyOrdered())
							.divide(orderLine.getQtyEntered(), 12, BigDecimal.ROUND_HALF_UP));
					iol.setC_UOM_ID(orderLine.getC_UOM_ID());
				}
				iol.setM_AttributeSetInstance_ID(orderLine.getM_AttributeSetInstance_ID());
				iol.setDescription(orderLine.getDescription());
				//
				iol.setC_Project_ID(orderLine.getC_Project_ID());
				iol.setC_ProjectPhase_ID(orderLine.getC_ProjectPhase_ID());
				iol.setC_ProjectTask_ID(orderLine.getC_ProjectTask_ID());
				iol.setC_Activity_ID(orderLine.getC_Activity_ID());
				iol.setC_Campaign_ID(orderLine.getC_Campaign_ID());
				iol.setAD_OrgTrx_ID(orderLine.getAD_OrgTrx_ID());
				iol.setUser1_ID(orderLine.getUser1_ID());
				iol.setUser2_ID(orderLine.getUser2_ID());
				//	Set Charge

				// Set locator
				if(m_M_Locator_ID == 0) {

				}
				iol.setM_Locator_ID(m_M_Locator_ID);
				iol.saveEx();
				//	Add to created
				created ++;
			}
		//	
		}
		return "@Created@ " + created;
	}
	

		
}