<%@ Page Language="C#" Debug="true" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeBehind="~/security_systems.aspx.cs" %>
<%@ Register TagPrefix="uc" TagName="defaultContent" Src="~/defaultContent.ascx" %>

<asp:Content ID="Content2" ContentPlaceHolderId="head" runat="server">
    <title>Security Systems in [LONGKEY] | SkyNet Security Systems</title>
    <meta name="keywords" content="" />
    <meta name="description" content="[SITEID] [SHORTKEY] [LONGKEY]" />
</asp:Content>

<asp:Content ID="Content1" ContentPlaceHolderId="ContentPlaceHolder1" runat="server">
<div id="contentSystems" class="split split60">
    <div class="contentLeft">
    <h1><%# Microsite.SiteUtils.ReplaceText(XPath("contentareas/contentarea[@id='system1']").ToString())%></h1>
    <%# Microsite.SiteUtils.ReplaceText(XPath("contentareas/contentarea[@id='system2']").ToString())%>
    <%# Microsite.SiteUtils.ReplaceText(XPath("contentareas/contentarea[@id='system3']").ToString())%>
    </div>

    <div class="contentRight">
        <uc:defaultContent id="defaultContent" runat="server" />
    </div>
</div>
</asp:Content>


