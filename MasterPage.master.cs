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
                XmlDataSource xds = new XmlDataSource();

                xds.DataFile = "skynet.xml";
                xds.XPath = "/site";

                repeaterXML.DataSource = xds;
                repeaterXML.DataBind();
                //SetSite(XPath("site/@id").ToString(), XPath("site/@shortkey").ToString(), XPath("site/@longkey").ToString());

            }

        }
    }
}
