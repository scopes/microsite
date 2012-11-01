<%@ Page Language="C#" Debug="true" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeBehind="~/Default.aspx.cs" %>

<asp:Content ID="head" ContentPlaceHolderId="head" runat="server">
    <title><%# Microsite.SiteUtils.GetPageTitle()%></title>
    <meta name="keywords" content="" />
    <meta name="description" content="<%# Microsite.SiteUtils.siteId%> <%# Microsite.SiteUtils.shortKey%> <%# Microsite.SiteUtils.longKey%>" />
</asp:Content>

<asp:Content ID="Content1" ContentPlaceHolderId="ContentPlaceHolder1" runat="server">
<div id="contentHome" class="split split60">
    <div class="contentLeft">
        <h1><%# Microsite.SiteUtils.ReplaceText(XPath("contentareas/contentarea[@id='b1']").ToString())%></h1>

        <p><%# Microsite.SiteUtils.ReplaceText(XPath("contentareas/contentarea[@id='b2']").ToString())%></p>
        <div><%# Microsite.SiteUtils.ReplaceText(XPath("contentareas/contentarea[@id='b3']").ToString())%></div>
    </div>
    <div class="contentRight">
        <p><img src="images/call_877-sky-cctv.png" alt="Call 1-877-SKY-CCTV" /></p>    
        <p><img src="images/free_quote_bug.gif" alt="Get a free security system installation quote." /></p>
        <p><img src="images/skynet-guarantee.gif" alt="SkyNet Security Systems Customer Guarantee" /></p>
    </div>
</div>
</asp:Content>


