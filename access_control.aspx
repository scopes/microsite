<%@ Page Language="C#" Debug="true" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeBehind="~/access_control.aspx.cs" %>
<%@ Register TagPrefix="uc" TagName="defaultContent" Src="~/defaultContent.ascx" %>

<asp:Content ID="Content2" ContentPlaceHolderId="head" runat="server">
    <title>Access Control in <%# Microsite.SiteUtils.longKey%> | Contact SkyNet Security Systems</title>
    <meta name="keywords" content="" />
    <meta name="description" content="<%# Microsite.SiteUtils.siteId%> <%# Microsite.SiteUtils.shortKey%> <%# Microsite.SiteUtils.longKey%>" />
</asp:Content>

<asp:Content ID="Content1" ContentPlaceHolderId="ContentPlaceHolder1" runat="server">
<div id="contentInfo" class="split split60">
    <div class="contentLeft">
    <h1><%# Microsite.SiteUtils.ReplaceText(XPath("contentareas/contentarea[@id='ac1']").ToString())%></h1>
    <%# Microsite.SiteUtils.ReplaceText(XPath("contentareas/contentarea[@id='ac2']").ToString())%>
    </div>

    <div class="contentRight">
        <uc:defaultContent id="defaultContent" runat="server" />
    </div>
</div>
</asp:Content>
