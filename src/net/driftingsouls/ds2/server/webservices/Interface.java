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
package net.driftingsouls.ds2.server.webservices;

import java.util.HashMap;
import java.util.Map;

import net.driftingsouls.ds2.server.AdminCommands;
import net.driftingsouls.ds2.server.entities.User;

/**
 * Standardwebservice von DS.
 * @author Christopher Jung
 *
 */
public class Interface extends BasicWebService {
	private static Map<String,String> validUserValues = new HashMap<String,String>();
	static {
		validUserValues.put("TBLORDER/clients/jstarmap/bufferedoutput", "boolean");
	}
	
	/**
	 * Prueft, ob die verwendete Session ok ist.
	 * @return <code>true</code>, falls die Session OK ist
	 */
	public boolean validateSessID() {
		return getUser() != null;
	}

	/**
	 * Gibt zurueck, wieviel neue PMs der aktuelle Spieler hat.
	 * @return Die Anzahl der neuen PMs
	 * @throws WebServiceException
	 */
	public int hasNewPM() throws WebServiceException {
		requireAuthentication();
		
		return ((Number)getDB().createQuery("select count(*) from PM where empfaenger= :user and gelesen=0")
				.setEntity("user", getUser())
				.iterate().next()).intValue();
	}

	/**
	 * Fuehrt ein Admin-Kommando aus.
	 * @param command Das Kommand
	 * @return Der Rueckgabewert des Kommandos
	 * @throws WebServiceException
	 */
	public String admin_execcmd( String command ) throws WebServiceException {
		requireAuthentication();
		
		return new AdminCommands().executeCommand(command);
	}

	/**
	 * Prueft, ob der aktuelle Spieler Adminrechte besitzt.
	 * @return <code>true</code>, falls der Spieler Adminrechte besitzt
	 */
	public boolean admin_isAdmin() {
		if( getUser() == null || !getUser().isAdmin() ) {
			return false;
		}
		return true;
	}

	/**
	 * Gibt den Wert eines Uservalues fuer den aktuellen Spieler zurueck.
	 * @param uservalue Das Uservalue
	 * @return Der Wert
	 * @throws WebServiceException
	 */
	public String getUserValue( String uservalue ) throws WebServiceException {
		requireAuthentication();
		
		if( !validUserValues.containsKey(uservalue) ) {
			throw new WebServiceException("Uservalue ungueltig");
		}
		
		return getUser().getUserValue(uservalue);
	}

	/**
	 * Setzt ein Uservalue fuer den aktuellen Spieler auf einen neuen Wert.
	 * @param uservalue Das Uservalue
	 * @param newvalue Der neue Wert
	 * @throws WebServiceException
	 */
	public void setUserValue( String uservalue, String newvalue ) throws WebServiceException {
		requireAuthentication();
		
		if( !validUserValues.containsKey(uservalue) ) {
			throw new WebServiceException("Uservalue ungueltig");
		}
		
		User user = getUser();
		if( validUserValues.get(uservalue).equals("boolean") ) {
			int intvalue = Integer.parseInt(newvalue);
			if( intvalue != 0 ) {
				intvalue = 1;
			}
			newvalue = Integer.toString(intvalue);
		}
		else if( validUserValues.get(uservalue).equals("number") ) {
			newvalue = Integer.toString(Integer.parseInt(newvalue));
		}

		user.setUserValue(uservalue,newvalue);
	}
}
