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
        public static string shortKey { get; set; }
        public static string longKey { get; set; }

        public static object SetSite(string _siteId, string _shortKey, string _longKey)
        {
            if (!string.IsNullOrEmpty(_siteId))
            {
                siteId = _siteId;
            }
            if (!string.IsNullOrEmpty(_shortKey))
            {
                shortKey = _shortKey;
            }
            if (!string.IsNullOrEmpty(_longKey))
            {
                longKey = _longKey;
            }
            return null;
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
