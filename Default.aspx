<%@ Page Language="C#" Debug="true" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeBehind="~/Default.aspx.cs" %>
<%@ Register TagPrefix="uc" TagName="defaultContent" Src="~/defaultContent.ascx" %>

<asp:Content ID="head" ContentPlaceHolderId="head" runat="server">
    <title>Security Systems in [LONGKEY] | SkyNet Security Systems</title>
    <meta name="keywords" content="" />
    <meta name="description" content="[SITEID] [SHORTKEY] [LONGKEY]" />
</asp:Content>

<asp:Content ID="Content1" ContentPlaceHolderId="ContentPlaceHolder1" runat="server">
<div id="contentHome" class="split split60">
    <div class="contentLeft">
        <h1><%# Microsite.SiteUtils.ReplaceText(XPath("contentareas/contentarea[@id='home1']").ToString())%></h1>
        <%# Microsite.SiteUtils.ReplaceText(XPath("contentareas/contentarea[@id='home2']").ToString())%>
    </div>
    <div class="contentRight">
        <uc:defaultContent id="defaultContent" runat="server" />
    </div>
</div>
</asp:Content>


