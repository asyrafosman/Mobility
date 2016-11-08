<%@ Page Title="" Language="C#" MasterPageFile="~/UTMI/UTMIMasterPage.master" AutoEventWireup="true" CodeFile="Completed.aspx.cs" Inherits="UTMI_Completed" %>

<asp:Content ID="Content1" ContentPlaceHolderID="BodyContent" Runat="Server">
    <div id="cssmenu2">
        <ul style="font-size: small">
            <li><a href="Inbox.aspx"><span class="fa fa-inbox"></span> Inbox</a></li>
            <li><a href="InProcess.aspx"><span class="fa fa-play"></span> In Process</a></li>
            <li class="active"><a href="Completed.aspx"><span class="fa fa-check"></span> Completed</a></li>
            <li><a href="Rejected.aspx"><span class="fa fa-times"></span> Rejected</a></li>
        </ul>
    </div>
</asp:Content>

