/*
 *	Drifting Souls 2
 *	Copyright (c) 2007 Christopher Jung
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
package net.driftingsouls.ds2.server.entities;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.Table;
import javax.persistence.Version;

import net.driftingsouls.ds2.server.units.UnitCargo;

import org.hibernate.annotations.Type;

/**
 * Ein Statistikeintrag ueber den Gesamtcargo eines Spielers (zum letzten Berechnungszeitpunkt).
 * @author Chirstopher Jung
 *
 */
@Entity
@Table(name="stats_user_unitcargo")
public class StatUserUnitCargo {
	// TODO: Warum mag Hibernate die Variante "private User user" nicht als ID?
	@Id
	int user_id;
	
	@OneToOne(fetch=FetchType.LAZY)
	@JoinColumn(name="user_id",nullable=false)
	private User user;
	
	@Type(type="unitcargo")
	private UnitCargo unitcargo;
	
	@Version
	private int version;
	
	/**
	 * Konstruktor.
	 *
	 */
	public StatUserUnitCargo() {
		// EMPTY
	}
	
	/**
	 * Erstellt einen neuen Statistikeintrag.
	 * @param user Der User
	 * @param unitcargo Der Cargo
	 */
	public StatUserUnitCargo(User user, UnitCargo unitcargo) {
		setUser(user);
		setCargo(unitcargo);
	}

	/**
	 * Gibt den Cargo des Spielers zurueck.
	 * @return Der Cargo
	 */
	public UnitCargo getCargo() {
		return unitcargo;
	}

	/**
	 * Setzt den Cargo des Spielers.
	 * @param unitcargo Der Cargo
	 */
	public final void setCargo(final UnitCargo unitcargo) {
		this.unitcargo = unitcargo;
	}

	/**
	 * Gibt den Spieler zurueck.
	 * @return Der Spieler
	 */
	public User getUser() {
		return user;
	}

	/**
	 * Setzt den Spieler.
	 * @param user Der Spieler
	 */
	public final void setUser(final User user) {
		this.user = user;
		this.user_id = user.getId();
	}

	/**
	 * Gibt die Versionsnummer zurueck.
	 * @return Die Nummer
	 */
	public int getVersion() {
		return this.version;
	}
}