<%@ Page Language="C#" Debug="true" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeBehind="~/security_systems.aspx.cs" %>

<asp:Content ID="Content2" ContentPlaceHolderId="head" runat="server">
    <title>Security Systems in <%# Microsite.SiteUtils.longKey%> | SkyNet Security Systems</title>
    <meta name="keywords" content="" />
    <meta name="description" content="<%# Microsite.SiteUtils.siteId%> <%# Microsite.SiteUtils.shortKey%> <%# Microsite.SiteUtils.longKey%>" />
</asp:Content>

<asp:Content ID="Content1" ContentPlaceHolderId="ContentPlaceHolder1" runat="server">
    <h1><%# Microsite.SiteUtils.ReplaceText(XPath("contentareas/contentarea[@id='system1']").ToString())%></h1>
    <%# Microsite.SiteUtils.ReplaceText(XPath("contentareas/contentarea[@id='system2']").ToString())%>
    <%# Microsite.SiteUtils.ReplaceText(XPath("contentareas/contentarea[@id='system3']").ToString())%>
</asp:Content>


