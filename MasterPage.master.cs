using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Microsite
{
    public partial class MasterPage : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                if (System.Configuration.ConfigurationManager.AppSettings["siteId"] != null)
                {
                    Microsite.SiteUtils.siteId = System.Configuration.ConfigurationManager.AppSettings["siteId"];
                }
                if (System.Configuration.ConfigurationManager.AppSettings["domainKey"] != null)
                {
                    Microsite.SiteUtils.domainKey = System.Configuration.ConfigurationManager.AppSettings["domainKey"];
                }
                if (System.Configuration.ConfigurationManager.AppSettings["domainName"] != null)
                {
                    Microsite.SiteUtils.domainName = System.Configuration.ConfigurationManager.AppSettings["domainName"];
                }
                if (System.Configuration.ConfigurationManager.AppSettings["shortKey"] != null)
                {
                    Microsite.SiteUtils.shortKey = System.Configuration.ConfigurationManager.AppSettings["shortKey"];
                }
                if (System.Configuration.ConfigurationManager.AppSettings["longKey"] != null)
                {
                    Microsite.SiteUtils.longKey = System.Configuration.ConfigurationManager.AppSettings["longKey"];
                }

                XmlDataSource xds = new XmlDataSource();

                xds.DataFile = "skynet.xml";
                xds.XPath = "/site";

                repeaterXML.DataSource = xds;
                repeaterXML.DataBind();
            }
        }
    }
}
