using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.IO;
using System.Diagnostics;
using System.Text;
using Microsite;

/// <summary>
/// Summary description for SiteFilter
/// </summary>
public class SiteFilter : MemoryStream
{
    private Stream outputStream = null;

    public SiteFilter(Stream output)
    {
        outputStream = output;
    }
    
    public override void Write(byte[] buffer, int offset, int count)
    {
        string bufferContent = UTF8Encoding.UTF8.GetString(buffer);
        
        bufferContent = bufferContent.Replace("[SHORTKEY]", System.Configuration.ConfigurationManager.AppSettings["shortKey"]);
        bufferContent = bufferContent.Replace("[LONGKEY]", System.Configuration.ConfigurationManager.AppSettings["longKey"]);
        bufferContent = bufferContent.Replace("[SITEID]", System.Configuration.ConfigurationManager.AppSettings["siteId"]);
        
        outputStream.Write(UTF8Encoding.UTF8.GetBytes(bufferContent), offset, UTF8Encoding.UTF8.GetByteCount(bufferContent));

        base.Write(buffer, offset, count);
    }

}