/*
 *	Drifting Souls 2
 *	Copyright (c) 2006 Christopher Jung
 *
 *	This library is free software; you can redistribute it and/or
 *	modify it under the terms of the GNU Lesser General Public
 *	License as published by the Free Software Foundation; either
 *	version 2.1 of the License, or (at your option) any later version.
 *
 *	This library is distributed in the hope that it will be useful,
 *	but WITHOUT ANY WARRANTY; without even the implied warranty of
 *	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
 *	Lesser General Public License for more details.
 *
 *	You should have received a copy of the GNU Lesser General Public
 *	License along with this library; if not, write to the Free Software
 *	Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA  02110-1301  USA
 */
package net.driftingsouls.ds2.server.config;

import net.driftingsouls.ds2.server.framework.ContextMap;
import net.driftingsouls.ds2.server.framework.xml.XMLUtils;
import net.driftingsouls.ds2.server.ships.ShipType;

import org.w3c.dom.Node;

/**
 * Item-Effekt "Schiffsbauplan deaktivieren"
 * Deaktiviert die Moeglichkeit in einer Werft einen bestimmten Schiffstyp zu bauen.
 * <p>Der Effekt kann ein allianzweiter Effekt sein. In diesem Fall verfuegen alle 
 * Allianzmitglieder nicht mehr ueber die Moeglichkeit dieses Schiff zu bauen.</p>
 * Der Effekt verfuegt nur ueber das Attribut "shiptype", welches die Typen-ID des nicht mehr
 * baubaren Schiffes enthaelt.
 * 
 * <pre>
 *   &lt;effect type="disable-ship" ally-effect="true" shiptype="14" /&gt;
 * </pre> 
 * 
 * @author Christopher Jung
 *
 */
public class IEDisableShip extends ItemEffect {
	private int shipType;
	
	protected IEDisableShip(boolean allyEffect, int shiptype) {
		super(ItemEffect.Type.DISABLE_SHIP, allyEffect);
		this.shipType = shiptype;
	}
	
	/**
	 * Gibt die Typen-ID des durch diesen Effekt deaktivierten Schifftyps zurueck.
	 * @return Die Schiffstypen-ID
	 */
	public int getShipType() {
		return shipType;
	}
	
	protected static ItemEffect fromXML(Node effectNode) throws Exception {
		int shiptype = XMLUtils.getNumberByXPath(effectNode, "@shiptype").intValue();
		
		org.hibernate.Session db = ContextMap.getContext().getDB();
		ShipType shipType = (ShipType)db.get(ShipType.class, shiptype);
		if( shipType == null ) {
			throw new Exception("Illegaler Schiffstyp '"+shiptype+"' im Item-Effekt 'Schiffsbauplan deaktivieren'");
		}
		
		Boolean allyEffect = XMLUtils.getBooleanByXPath(effectNode, "@ally-effect");
		if( allyEffect != null ) {
			return new IEDisableShip(allyEffect, shiptype);
		}
		return new IEDisableShip(false, shiptype);
	}
}
