<%@ Page Language="C#" Debug="true" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeBehind="~/Default.aspx.cs" %>

<asp:Content ID="head" ContentPlaceHolderId="head" runat="server">
    <title><%# Microsite.SiteUtils.GetPageTitle()%></title>
    <meta name="keywords" content="" />
    <meta name="description" content="<%# Microsite.SiteUtils.siteId%> <%# Microsite.SiteUtils.shortKey%> <%# Microsite.SiteUtils.longKey%>" />
</asp:Content>

<asp:Content ID="Content1" ContentPlaceHolderId="ContentPlaceHolder1" runat="server">
    <h1><%# Microsite.SiteUtils.ReplaceText(XPath("contentareas/contentarea[@id='b1']").ToString())%></h1>

    <p><%# Microsite.SiteUtils.ReplaceText(XPath("contentareas/contentarea[@id='b2']").ToString())%></p>
    <div><%# Microsite.SiteUtils.ReplaceText(XPath("contentareas/contentarea[@id='b3']").ToString())%></div>
</asp:Content>


