package net.driftingsouls.ds2.server.framework.pipeline.generators;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.Writer;

import net.driftingsouls.ds2.server.framework.pipeline.Error;
import net.driftingsouls.ds2.server.framework.Configuration;
import net.driftingsouls.ds2.server.framework.Context;
import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

/**
 * Generator fuer auf AngularJS aufbauende DS-Module.
 * @author Christopher Jung
 *
 */
public abstract class AngularGenerator extends DSGenerator
{	
	public AngularGenerator(Context context)
	{
		super(context);
		
		this.addBodyParameter("ng-app", "ds.application");
		this.setDisableDebugOutput(true);
	}
	
	@Override
	protected void printErrorListOnly(ActionType type) throws IOException
	{
		JSONObject result = new JSONObject();
		JSONArray errorListObj = new JSONArray();
		for( Error error : this.getErrorList() )
		{
			JSONObject errorObj = new JSONObject();
			errorObj
				.accumulate("description", error.getDescription())
				.accumulate("url", error.getUrl());
			errorListObj.add(errorObj);
		}
		result.accumulate("errors", errorListObj);
		result.accumulate("message", new JSONObject()
				.accumulate("type", "errorlist"));
		
		getResponse().getWriter().write(result.toString());
	}

	@Override
	@Action(ActionType.DEFAULT)
	public final void defaultAction() throws IOException
	{
		Writer echo = getResponse().getWriter();

		File tmpl = new File(Configuration.getSetting("ABSOLUTE_PATH")+"data/cltemplates/ds.html");
		BufferedReader reader = new BufferedReader(
				new InputStreamReader(new FileInputStream(tmpl), "UTF-8"));
		try
		{
			char[] buffer = new char[8192];
			int cnt = -1;
			while( (cnt = reader.read(buffer)) != -1 )
			{
				echo.write(buffer, 0, cnt);
			}
		}
		finally
		{
			reader.close();
		}
	}
}