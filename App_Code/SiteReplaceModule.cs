using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for SiteReplaceModule
/// </summary>
public class SiteReplaceModule : IHttpModule
{
	public SiteReplaceModule()
	{
		//
		// TODO: Add constructor logic here
		//
	}


	public String ModuleName
	{
		get { return "HelloWorldModule"; }
	}

	// In the Init function, register for HttpApplication 
	// events by adding your handlers.
	public void Init(HttpApplication application)
	{
		application.BeginRequest +=
			(new EventHandler(this.Application_BeginRequest));
		application.EndRequest +=
			(new EventHandler(this.Application_EndRequest));
	}

	private void Application_BeginRequest(Object source,
		 EventArgs e)
	{

		// Create HttpApplication and HttpContext objects to access
		// request and response properties.
		HttpApplication application = (HttpApplication)source;
		HttpContext context = application.Context;
		string filePath = context.Request.FilePath;
		string fileExtension =
			VirtualPathUtility.GetExtension(filePath);
		if (fileExtension.Equals(".aspx"))
		{
			application.Response.Filter = new SiteFilter(application.Response.Filter);
		}

	}

	private void Application_EndRequest(Object source, EventArgs e)
	{
		HttpApplication application = (HttpApplication)source;
		HttpContext context = application.Context;
		string filePath = context.Request.FilePath;
		string fileExtension =
			VirtualPathUtility.GetExtension(filePath);
		if (fileExtension.Equals(".aspx"))
		{
//Not needed mostly
		}
	}

	public void Dispose() { }

}