<%@ Page Language="C#" Debug="true" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeBehind="~/surveillance_cameras.aspx.cs" %>

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
        <p><img src="images/call_877-sky-cctv.png" alt="Call 1-877-SKY-CCTV" /></p>    
        <p><img src="images/free_quote_bug.gif" alt="Get a free security system installation quote." /></p>
        <p><img src="images/skynet-guarantee.gif" alt="SkyNet Security Systems Customer Guarantee" /></p>
    </div>
</div>
</asp:Content>


