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

import org.compiere.process.ProcessInfoParameter;
import org.compiere.process.SvrProcess;

/** Generated Process for (In Out Create From)
 *  @author ADempiere (generated) 
 *  @version Release 3.9.0
 */
public abstract class SBP_InOutCreateFromAbstract extends SvrProcess {
	/** Process Value 	*/
	private static final String VALUE_FOR_PROCESS = "SBP_InOutCreateFrom";
	/** Process Name 	*/
	private static final String NAME_FOR_PROCESS = "In Out Create From";
	/** Process Id 	*/
	private static final int ID_FOR_PROCESS = 53851;
	/**	Parameter Name for Receipt all in inbound location	*/
	private static final String M_LOCATOR_ID = "M_Locator_ID";
	/**	Parameter Value for Receipt all in inbound location	*/
	private int locatorId;

	private static final String M_INOUT_ID = "M_InOut_ID";
	/**	Parameter Value for Receipt all in inbound location	*/
	private int inOutID;
	

	private static final String DD_FREIGHT_ID = "DD_Freight_ID";
	/**	Parameter Value for Receipt all in inbound location	*/
	private int freightId;

	@Override
	protected void prepare() {ProcessInfoParameter[] para = getParameter();
	for (int i = 0; i < para.length; i++)
	{
		String name = para[i].getParameterName();
		if (para[i].getParameter() == null)
			;			
		else if (name.equals(M_LOCATOR_ID))
			setLocatorId(para[i].getParameterAsInt());
		else if (name.equals(M_INOUT_ID))
			setInOutId(para[i].getParameterAsInt());
		else if (name.equals(DD_FREIGHT_ID))
			setfreightId(para[i].getParameterAsInt());
	};

		//	DocAction check
		
	}

	/**	 Getter Parameter Value for Receipt all in inbound location	*/
	protected int getLocatorId() {
		return locatorId;
	}

	/**	 Setter Parameter Value for Receipt all in inbound location	*/
	protected void setLocatorId(int locatorId) {
		this.locatorId = locatorId;
	}

	/**	 Getter Parameter Value for Receipt all in inbound location	*/
	protected int getinOutId() {
		return inOutID;
	}

	/**	 Setter Parameter Value for Receipt all in inbound location	*/
	protected void setInOutId(int inOut_ID) {
		this.inOutID = inOut_ID;
	}
	


	/**	 Getter Parameter Value for Receipt all in inbound location	*/
	protected int getfreightId() {
		return freightId;
	}

	/**	 Setter Parameter Value for Receipt all in inbound location	*/
	protected void setfreightId(int freight_ID) {
		this.freightId = freight_ID;
	}
	
	
	/**	 Getter Parameter Value for Process ID	*/
	public static final int getProcessId() {
		return ID_FOR_PROCESS;
	}

	/**	 Getter Parameter Value for Process Value	*/
	public static final String getProcessValue() {
		return VALUE_FOR_PROCESS;
	}

	/**	 Getter Parameter Value for Process Name	*/
	public static final String getProcessName() {
		return NAME_FOR_PROCESS;
	}
}