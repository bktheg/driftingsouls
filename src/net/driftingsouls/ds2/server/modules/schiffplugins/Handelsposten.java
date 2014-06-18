package net.driftingsouls.ds2.server.modules.schiffplugins;

import net.driftingsouls.ds2.server.ContextCommon;
import net.driftingsouls.ds2.server.config.Faction;
import net.driftingsouls.ds2.server.entities.User;
import net.driftingsouls.ds2.server.entities.fraktionsgui.VersteigerungSchiff;
import net.driftingsouls.ds2.server.framework.Common;
import net.driftingsouls.ds2.server.framework.ContextMap;
import net.driftingsouls.ds2.server.framework.pipeline.generators.Action;
import net.driftingsouls.ds2.server.framework.pipeline.generators.ActionType;
import net.driftingsouls.ds2.server.framework.templates.TemplateEngine;
import net.driftingsouls.ds2.server.ships.Ship;
import net.driftingsouls.ds2.server.ships.ShipType;
import org.hibernate.Session;

public class Handelsposten implements SchiffPlugin
{
	@Action(ActionType.DEFAULT)
	public String action(Parameters caller, Ship communicate, String option)
	{
		Integer versteigerungsbetrag = null;
		switch( option )
		{
			case "versteigern_100":
				versteigerungsbetrag = 100;
				break;
			case "versteigern_1000":
				versteigerungsbetrag = 1000;
				break;
			case "versteigern_10000":
				versteigerungsbetrag = 10000;
				break;
			case "versteigern_50000":
				versteigerungsbetrag = 50000;
				break;
			case "versteigern_100000":
				versteigerungsbetrag = 100000;
				break;
		}
		if( versteigerungsbetrag != null )
		{
			int ticks = 15;
			int curtick = ContextMap.getContext().get(ContextCommon.class).getTick();
			ticks += curtick;

			Session db = ContextMap.getContext().getDB();

			User user = caller.ship.getOwner();
			ShipType st = caller.ship.getBaseType();

			VersteigerungSchiff v = new VersteigerungSchiff(user, st, versteigerungsbetrag);
			v.setBieter((User) db.get(User.class, Faction.GTU));
			v.setTick(ticks);
			db.persist(v);

			caller.ship.destroy();

			return "Ihr Schiff wurde nun in die Liste der aktuell laufenden Versteigerungen eingetragen. Wir benachichtigen Sie sobald die Versteigerung abgelaufen ist.";
		}
		return "";
	}

	@Action(ActionType.DEFAULT)
	public void output(Parameters caller, Ship communicate, String option) {
		if( "quit".equals(option) || communicate == null )
		{
			return;
		}
		String pluginid = caller.pluginId;
		Ship data = caller.ship;

		TemplateEngine t = caller.t;
		t.setFile("_PLUGIN_"+pluginid, "schiff.handelsposten.html");

		String text = "Willkommen {schiffsname} bei unserem wunderschönen GTU-Handelsposten. Gestatten sie, dass ich mich vorstelle: Ich bin Colonel Trade.\n"+
				"Was kann ich für sie tun?";

		t.setVar( "global.pluginid", pluginid,
				"global.communicate", communicate.getId(),
				"ship.id", data.getId(),
				"schiff.handelsposten.headimg", "data/interface/interactivetutorial/ars.gif",
				"schiff.handelsposten.text", Common._plaintext(text.replace("{schiffsname}", Common._plaintitle(data.getName())))
				 );

		t.setBlock("_PLUGIN_"+pluginid,"schiff.handelsposten.option.listitem","schiff.handelsposten.option.list");

		if( option == null || option.isEmpty() )
		{
			option = "start";
		}
		switch( option ) {
			case "start":
				addAnswer(t, "lager", "Ich müsste mal ein Blick ins Lager werfen!", "ds?module=gtuzwischenlager&ship="+data.getId());
				addAnswer(t, "versteigern", "Ich möchte dieses Schiff versteigern", false);
				addAnswer(t, "quit", "Und Tschüss!", false);
				break;
			case "versteigern":
				addAnswer(t, "start", "Schiff nicht versteigern", false);
				addAnswer(t, "versteigern_100", "Schiff für 100 RE versteigern", true);
				addAnswer(t, "versteigern_1000", "Schiff für 1.000 RE versteigern", true);
				addAnswer(t, "versteigern_10000", "Schiff für 10.000 RE versteigern", true);
				addAnswer(t, "versteigern_50000", "Schiff für 50.000 RE versteigern", true);
				addAnswer(t, "versteigern_100000", "Schiff für 100.000 RE versteigern", true);
				break;
		}

		t.parse(caller.target,"_PLUGIN_"+pluginid);
	}

	private void addAnswer(TemplateEngine t, String option, String text, String url)
	{
		t.setVar("schiff.handelsposten.option.id", option,
				"schiff.handelsposten.option.text", text,
				"schiff.handelsposten.option.dialog", false,
				"schiff.handelsposten.option.url", url );
		t.parse("schiff.handelsposten.option.list","schiff.handelsposten.option.listitem",true);
	}

	private void addAnswer(TemplateEngine t, String option, String text, boolean action)
	{
		t.setVar("schiff.handelsposten.option.id", option,
				"schiff.handelsposten.option.text", text,
				"schiff.handelsposten.option.dialog", !action,
				"schiff.handelsposten.option.url", "");
		t.parse("schiff.handelsposten.option.list", "schiff.handelsposten.option.listitem", true);
	}
}
