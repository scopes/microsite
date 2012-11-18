<%@ Page Language="C#" Debug="true" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeBehind="~/surveillance_cameras.aspx.cs" %>
<%@ Register TagPrefix="uc" TagName="defaultContent" Src="~/defaultContent.ascx" %>

<asp:Content ID="Content2" ContentPlaceHolderId="head" runat="server">
    <title>Surveillance Cameras in [LONGKEY] | SkyNet Security Systems</title>
    <meta name="keywords" content="" />
    <meta name="description" content="[SITEID] [SHORTKEY] [LONGKEY]" />
</asp:Content>

<asp:Content ID="Content1" ContentPlaceHolderId="ContentPlaceHolder1" runat="server">
<div id="contentCamera" class="split split60">
    <div class="contentLeft">
    <h1><%# Microsite.SiteUtils.ReplaceText(XPath("contentareas/contentarea[@id='surv1']").ToString())%></h1>
    <%# Microsite.SiteUtils.ReplaceText(XPath("contentareas/contentarea[@id='surv2']").ToString())%>
    </div>

    <div class="contentRight">
        <uc:defaultContent id="defaultContent" runat="server" />
    </div>
</div>
</asp:Content>


