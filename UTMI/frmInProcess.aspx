﻿<%@ Page Title="" Language="C#" MasterPageFile="~/UTMI/UTMIMasterPage.master" AutoEventWireup="true" CodeFile="frmInProcess.aspx.cs" Inherits="UTMI_InProcess" %>

<asp:Content ID="Content1" ContentPlaceHolderID="BodyContent" runat="Server">
    <div id="cssmenu2">
        <ul style="font-size: small">
            <li><a href="Dashboard.aspx"><span class="fa fa-inbox"></span> Inbox</a></li>
            <li class="active"><a href="frmInProcess.aspx"><span class="fa fa-play"></span> In Process</a></li>
            <li><a href="frmCompleted.aspx"><span class="fa fa-check"></span> Completed</a></li>
            <li><a href="frmRejected.aspx"><span class="fa fa-times"></span> Rejected</a></li>
        </ul>
    </div>
    <table style="float: right">
        <tr>
            <td>
                <asp:Label ID="Label1" runat="server" Text="" Font-Bold="True">Application <span class="fa fa-arrow-right"></span>&nbsp;Outboun <span class="fa fa-arrow-right"></span>&nbsp;In Process</asp:Label>
            </td>
        </tr>
    </table>
</asp:Content>