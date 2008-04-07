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
package net.driftingsouls.ds2.server.config.items.effects;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

import net.driftingsouls.ds2.server.config.ModuleSlots;
import net.driftingsouls.ds2.server.framework.xml.XMLUtils;
import net.driftingsouls.ds2.server.ships.ShipTypeChangeset;

import org.w3c.dom.Node;
import org.w3c.dom.NodeList;

/**
 * Item-Effekt "Modul"
 * @author Christopher Jung
 *
 */
public class IEModule extends ItemEffect {
	private List<String> slots;
	private int set;
	private ShipTypeChangeset mods;
	
	protected IEModule(List<String> slots, ShipTypeChangeset mods, int set) {
		super(ItemEffect.Type.MODULE);
		
		this.slots = Collections.unmodifiableList(slots);
		this.mods = mods;
		this.set = set;
	}
	
	/**
	 * Gibt die Liste der Slots zurueck, in die das Modul hinein passt.
	 * @return die Liste der Slots
	 */
	public List<String> getSlots() {
		return slots;
	}
	
	/**
	 * Gibt die ID des zugehoerigen Sets zurueck oder <code>-1</code>, falls
	 * das Modul zu keinem Set gehoert.
	 * @return Die Set-ID oder <code>-1</code>
	 */
	public int getSetID() {
		return set;
	}
	
	/**
	 * Gibt das Aenderungsobjekt mit den durch das Modul geaenderten Schiffstypendaten zurueck
	 * @return Das Aenderungsobjekt
	 */
	public ShipTypeChangeset getMods() {
		return mods;
	}
	
	protected static ItemEffect fromXML(Node effectNode) throws Exception {		
		List<String> slots = new ArrayList<String>();
		NodeList nodes = XMLUtils.getNodesByXPath(effectNode, "slot");
		for( int i=0, length=nodes.getLength(); i < length; i++ ) {
			final String slot = XMLUtils.getStringAttribute(nodes.item(i), "id");
			
			// Sicherstellen, dass der Slot existiert
			// sonst -> NoSuchSlotException
			ModuleSlots.get().slot(slot);
			
			slots.add(slot);
		}
		
		Number setId = XMLUtils.getNumberAttribute(effectNode, "set");
		
		ShipTypeChangeset mods = new ShipTypeChangeset(XMLUtils.firstNodeByTagName(effectNode, "shipdata"));
		
		return new IEModule(slots, mods, setId != null ? setId.intValue() : -1);
	}
}