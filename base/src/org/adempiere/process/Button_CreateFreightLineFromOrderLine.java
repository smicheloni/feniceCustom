/******************************************************************************
 * Product: Adempiere ERP & CRM Smart Business Solution                       *
 * Copyright (C) 1999-2006 ComPiere, Inc. All Rights Reserved.                *
 * This program is free software; you can redistribute it and/or modify it    *
 * under the terms version 2 of the GNU General Public License as published   *
 * by the Free Software Foundation. This program is distributed in the hope   *
 * that it will be useful, but WITHOUT ANY WARRANTY; without even the implied *
 * warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.           *
 * See the GNU General Public License for more details.                       *
 * You should have received a copy of the GNU General Public License along    *
 * with this program; if not, write to the Free Software Foundation, Inc.,    *
 * 59 Temple Place, Suite 330, Boston, MA 02111-1307 USA.                     *
 * For the text or an alternative of this public license, you may reach us    *
 * ComPiere, Inc., 2620 Augustine Dr. #245, Santa Clara, CA 95054, USA        *
 * or via info@compiere.org or http://www.compiere.org/license.html           *
 *****************************************************************************/
package org.adempiere.process;

import java.sql.Timestamp;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.logging.Level;

import org.compiere.model.MDocType;
import org.compiere.model.MOrder;
import org.compiere.model.MOrderLine;
import org.compiere.process.DocAction;
import org.compiere.process.ProcessInfoParameter;
import org.compiere.process.SvrProcess;
import org.compiere.util.DB;
import org.compiere.util.Env;
import org.eevolution.model.MDDFreight;
import org.eevolution.model.MDDFreightLine;

/**
 *	Generate Shipments.
 *	Manual or Automatic
 *	
 *  @author Susanne Calderon
 *  @version $Id: InOutGenerate.java,v 1.8 2019/11/29 00:51:01 SusanneCalderon
 */
public class Button_CreateFreightLineFromOrderLine extends SvrProcess
{
	/** DocAction				*/
    /** Shipment Date                       */
	private Timestamp       		p_DateShipped = null;
	
	/**	The current Shipment	*/
	/** Number of Shipments	being created	*/
	private int						m_created = 0;
	/** Movement Date			*/
	private Timestamp				m_movementDate = null;
	/** Shipper*  */
	int shipperID = 0;
	int freightID = 0;
	int orderID = 0;
	MDDFreight freight = null;
	/** The Query sql			*/
	private String msg = "";


	protected List<MOrderLine> m_records = null;
	protected LinkedHashMap<Integer, LinkedHashMap<String, Object>> m_values = null;
	protected List<MOrder> ordersToShip = null;
	
	StringBuffer resultMsg = new StringBuffer();

	
	/**
	 *  Prepare - e.g., get Parameters.
	 */
	protected void prepare()
	{
		ProcessInfoParameter[] para = getParameter();
		for (int i = 0; i < para.length; i++)
		{
			String name = para[i].getParameterName();
			if (para[i].getParameter() == null)
				;			
			else if (name.equals(MDDFreight.COLUMNNAME_DD_Freight_ID))
				freightID = para[i].getParameterAsInt();
			else if (name.equals(MOrder.COLUMNNAME_C_Order_ID))
					orderID =para[i].getParameterAsInt();
			else if (name.equals("MovementDate"))
                p_DateShipped = (Timestamp)para[i].getParameter();
			else
				log.log(Level.SEVERE, "Unknown Parameter: " + name);
			
			if (p_DateShipped == null) {
				m_movementDate = Env.getContextAsDate(getCtx(), "#Date");
				if (m_movementDate == null)
					m_movementDate = new Timestamp(System.currentTimeMillis());
			} else
				m_movementDate = p_DateShipped;
			//	DocAction check
			
		}
	}	//	prepare

	/**
	 * 	Create Freight Lines
	 *	@return info
	 *	@throws Exception
	 */
	protected String doIt () throws Exception{
		freight      = new MDDFreight(getCtx(), freightID, get_TrxName());
		MOrder order = new MOrder(getCtx(), orderID, get_TrxName());	
		for (MOrderLine orderLine: order.getLines()) 
		{	
			int cOrderLine_ID = orderLine.getC_OrderLine_ID();
			if(getddFreightLine_ID(cOrderLine_ID)<=0) {
				createFreightLine(orderLine);
			}
		}
		return "";
	}	//	doIt
	
	/**
	 * 	Create Freight Line
	 * 	@param MOrderLine orderLine
	 *	@return info
	 */
	private String createFreightLine (MOrderLine orderLine)
	{
		if (freight == null) {
			freight = new MDDFreight(getCtx(), freightID, get_TrxName());
			if (freightID == 0) {
				freight.setAD_Org_ID(orderLine.getAD_Org_ID());
				// freight.setC_Order_ID(orderLine.getC_Order_ID());  // Do not set Orderline in Freight! There can be several of them.
				freight.setM_Shipper_ID(shipperID);
				freight.setDateDoc(m_movementDate);
				freight.setDateOrdered(m_movementDate);
				freight.setC_DocType_ID(MDocType.getOfDocBaseType(getCtx(), "FRO")[0].getC_DocType_ID());
				freight.saveEx();				
			}
		}
		MDDFreightLine freightLine = new MDDFreightLine(getCtx(), 0, get_TrxName());
		freightLine.setLine(getLineNo(freight));
		freightLine.setDD_Freight_ID(freight.getDD_Freight_ID());
		freightLine.setM_Product_ID(orderLine.getM_Product_ID());
		freightLine.set_ValueOfColumn("MovementQty", orderLine.getQtyOrdered());
		freightLine.set_ValueOfColumn(MOrderLine.COLUMNNAME_C_Order_ID, orderLine.getC_Order_ID());
		freightLine.set_ValueOfColumn(MOrderLine.COLUMNNAME_C_OrderLine_ID, orderLine.getC_OrderLine_ID());
		freightLine.setFreightAmt(Env.ZERO);
		freightLine.set_ValueOfColumn("C_UOM_ID", orderLine.getC_UOM_ID());
		freightLine.saveEx();
		
		return "@Created@ = " + m_created;
	}	//	generate
	
	
	private int getLineNo(MDDFreight freight) {
        return DB.getSQLValueEx(
                get_TrxName(),
                "SELECT COALESCE(MAX(Line),0)+10 AS DefaultValue FROM DD_FreightLine WHERE DD_Freight_ID=?",
                freight.getDD_Freight_ID());
	}
	
	
	private int getddFreightLine_ID(int cOrderLine_ID) {
        return DB.getSQLValueEx(
                get_TrxName(),
                "SELECT C_OrderLine_ID FROM DD_FreightLine WHERE C_OrderLine_ID=? FETCH FIRST 1 ROW ONLY",
                cOrderLine_ID);
	} // getddFreightLine_ID
	 
}	//	InOutGenerate
