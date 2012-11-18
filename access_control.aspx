<%@ Page Language="C#" Debug="true" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeBehind="~/access_control.aspx.cs" %>

<asp:Content ID="Content2" ContentPlaceHolderId="head" runat="server">
    <title>Access Control in <%# Microsite.SiteUtils.longKey%> | Contact SkyNet Security Systems</title>
    <meta name="keywords" content="" />
    <meta name="description" content="<%# Microsite.SiteUtils.siteId%> <%# Microsite.SiteUtils.shortKey%> <%# Microsite.SiteUtils.longKey%>" />
</asp:Content>

<asp:Content ID="Content1" ContentPlaceHolderId="ContentPlaceHolder1" runat="server">
<div id="contentInfo" class="split split60">
    <div class="contentLeft">
    <h1>Access Control in <%# Microsite.SiteUtils.longKey%></h1>
    </div>

    <div class="contentRight">
        <p><img src="images/call_877-sky-cctv.png" alt="Call 1-877-SKY-CCTV" /></p>    
        <p><img src="images/free_quote_bug.gif" alt="Get a free security system installation quote." /></p>
        <p><img src="images/skynet-guarantee.gif" alt="SkyNet Security Systems Customer Guarantee" /></p>
    </div>
</div>
</asp:Content>
