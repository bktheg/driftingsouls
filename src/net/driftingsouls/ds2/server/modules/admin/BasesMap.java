/*
 *	Drifting Souls 2
 *	Copyright (c) 2008 Christopher Jung
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
package net.driftingsouls.ds2.server.modules.admin;

import java.awt.Color;
import java.awt.Graphics2D;
import java.awt.image.BufferedImage;
import java.io.File;
import java.io.IOException;

import javax.imageio.ImageIO;

import net.driftingsouls.ds2.server.Location;
import net.driftingsouls.ds2.server.config.StarSystem;
import net.driftingsouls.ds2.server.config.Systems;
import net.driftingsouls.ds2.server.framework.Configuration;
import net.driftingsouls.ds2.server.framework.Context;
import net.driftingsouls.ds2.server.framework.ContextMap;
import net.driftingsouls.ds2.server.framework.db.Database;
import net.driftingsouls.ds2.server.framework.db.SQLQuery;
import net.driftingsouls.ds2.server.modules.AdminController;
import net.driftingsouls.ds2.server.modules.admin.AdminMenuEntry;
import net.driftingsouls.ds2.server.modules.admin.AdminPlugin;

/**
 * Generiert eine Karte eines Systems
 * @author Christopher Jung
 *
 */
@AdminMenuEntry(category="Objekte", name="Karte")
public class BasesMap implements AdminPlugin {

	public void output(AdminController controller, String page, int action) {
		Context context = ContextMap.getContext();
		StringBuffer echo = context.getResponse().getContent();
		
		int user = context.getRequest().getParameterInt("user");
		int sysid = context.getRequest().getParameterInt("system");
		int otherastis = context.getRequest().getParameterInt("otherastis");
		int scale = context.getRequest().getParameterInt("scale");
		if( scale == 0 ) {
			scale = 2;
		}
		
		Database db = context.getDatabase();
		
		echo.append("Karte:\n");
		echo.append("<form action=\"./ds\" method=\"post\">");
		echo.append("<table class=\"noBorder\" width=\"300\">\n");
		echo.append("<tr><td class=\"noBorderS\">User:</td><td class=\"noBorderS\"><input type=\"text\" name=\"user\" size=\"10\" value=\""+user+"\" /></td></tr>\n");
		echo.append("<tr><td class=\"noBorderS\">System:</td><td class=\"noBorderS\"><input type=\"text\" name=\"system\" size=\"10\" value=\""+sysid+"\" /></td></tr>\n");
		echo.append("<tr><td class=\"noBorderS\">Scale:</td><td class=\"noBorderS\"><input type=\"text\" name=\"scale\" size=\"10\" value=\""+scale+"\" /></td></tr>\n");
		echo.append("<tr><td class=\"noBorderS\" colspan=\"2\"><input type=\"checkbox\" name=\"otherastis\" id=\"form_otherastis\" value=\"1\" "+(otherastis != 0 ? "checked=\"checked\"":"")+" /><label for=\"form_otherastis\">Asteroiden anderer Spieler anzeigen</label></td></tr>\n");
		echo.append("<tr><td class=\"noBorderS\" colspan=\"2\" align=\"center\"><input type=\"hidden\" name=\"sess\" value=\""+context.getSession()+"\" />\n");
		echo.append("<input type=\"hidden\" name=\"page\" value=\""+page+"\" />\n");
		echo.append("<input type=\"hidden\" name=\"act\" value=\""+action+"\" />\n");
		echo.append("<input type=\"hidden\" name=\"module\" value=\"admin\" />\n");
		echo.append("<input type=\"submit\" value=\"anzeigen\" style=\"width:100px\"/></td></tr>\n");
		echo.append("</table>\n");
		echo.append("</form>\n");
		echo.append("<br />\n");
		
		if( sysid != 0 ) {
			StarSystem system = Systems.get().system(sysid);
			if( system == null ) {
				return;
			}
			
			echo.append("<img src=\""+Configuration.getSetting("URL")+"downloads/"+context.getActiveUser().getId()+"/admin.bases.map.png?sess="+context.getSession()+"\" alt=\"\" />\n");		
			
			BufferedImage image = new BufferedImage(system.getWidth()*scale, system.getHeight()*scale, BufferedImage.TYPE_INT_RGB);
			Color black = new Color(0, 0, 0);
			Color blue = new Color(0, 0, 255);
			Color green = new Color(0, 255, 0);
			Color red = new Color(255, 000, 000);
			Color yellow = new Color(255, 255, 000);
			Color grey = new Color(128, 128, 128);
			
			Graphics2D g = image.createGraphics();
			g.setColor(black);
			g.fillRect(0, 0, image.getWidth(), image.getHeight()); 
			
			g.setColor(green);
			
			SQLQuery base = db.query("SELECT x,y FROM bases WHERE owner="+user+" AND system="+system.getID());
			while( base.next() ) {
				g.fillRect(base.getInt("x")*scale, base.getInt("y")*scale, scale, scale);
			}
			base.free();
			
			if( otherastis != 0 ) {
				g.setColor(grey);
				base = db.query("SELECT x,y FROM bases WHERE owner!="+user+" AND system="+system.getID());
				while( base.next() ) {
					g.fillRect(base.getInt("x")*scale, base.getInt("y")*scale, scale, scale);
				}
				base.free();
			}
			
			g.setColor(red);
			SQLQuery nebel = db.query("SELECT x,y FROM nebel WHERE system="+system.getID());
			while( nebel.next() ) {
				g.fillRect(nebel.getInt("x")*scale, nebel.getInt("y")*scale, scale, scale);
			}
			nebel.free();
			
			g.setColor(yellow);
			SQLQuery jn = db.query("SELECT x,y FROM jumpnodes WHERE system="+system.getID());
			while( jn.next() ) {
				g.fillRect(jn.getInt("x")*scale, jn.getInt("y")*scale, scale, scale);
			}
			jn.free();
			
			g.setColor(blue);
			Location[] locs = system.getOrderLocations();
			for( int i=0; i < locs.length; i++ ) {
				g.fillRect(locs[i].getX()*scale, locs[i].getY()*scale, scale, scale);
			}
			g.dispose();
			
			try {
				File pngdir = new File(Configuration.getSetting("ABSOLUTE_PATH")+
						"downloads/"+context.getActiveUser().getId()+"/");
				
				if( !pngdir.isDirectory() ) {
					pngdir.mkdirs();
				}
				
				ImageIO.write(image, "png", new File(Configuration.getSetting("ABSOLUTE_PATH")+
						"downloads/"+context.getActiveUser().getId()+"/admin.bases.map.png"));
			}
			catch( IOException e ) {
				echo.append("Konnte png nicht schreiben: "+e);
			}
		}
	}
}