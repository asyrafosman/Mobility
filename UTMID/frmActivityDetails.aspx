﻿<%@ Page Title="ACAD2016." Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="frmActivityDetails.aspx.cs" Inherits="UTMID_frmActivityDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <div id="cssmenu2">
        <ul style="font-size: small">
            <li class="active"><a><span class="fa fa-plane fa-lg"></span>&nbsp;Activity Details</a></li>
        </ul>
    </div>
    <table style="float: right">
        <tr>
            <td>
                <asp:Label ID="Label1" runat="server" Text="" Font-Bold="True">Student Activity <span class="fa fa-arrow-right"></span>&nbsp;Activity Details</asp:Label>
            </td>
        </tr>
    </table>
    <table style="width: 100%">
        <tr>
            <td>
                <asp:Label ID="lblDate" runat="server" Text=""></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblTitle" runat="server" Text="" Font-Bold="True"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Image ID="imgActivity" runat="server" />
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblDetails" runat="server" Text=""></asp:Label>
            </td>
        </tr>
    </table>
</asp:Content>

