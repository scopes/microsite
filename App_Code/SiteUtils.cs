using System;
using System.Collections.Generic;
using System.Web;

/// <summary>
/// Summary description for Class1
/// </summary>
namespace Microsite
{

    public static class SiteUtils
    {
        public static string siteId { get; set; }
        public static string domainKey { get; set; }
        public static string domainName { get; set; }
        public static string shortKey { get; set; }
        public static string longKey { get; set; }

        public static string GetPageTitle()
        {
            return domainKey + " in " + longKey + ", SkyNet Security Systems";
        }

        public static string ReplaceText(string xmlData)
        {
            string returnData = "";
            if (!string.IsNullOrEmpty(xmlData))
            {
                returnData = xmlData.Replace("[SHORTKEY]", shortKey);
                returnData = returnData.Replace("[LONGKEY]", longKey);
            }
            return returnData;
        }
    }

}
