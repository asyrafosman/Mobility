<%@ Page Title="ACAD2016." Language="C#" MasterPageFile="~/UTMID/UTMIDMasterPage.master" AutoEventWireup="true" CodeFile="frmCompleted.aspx.cs" Inherits="UTMID_frmCompleted" %>

<asp:Content ID="Content1" ContentPlaceHolderID="BodyContent" Runat="Server">
    <div id="cssmenu2">
        <ul style="font-size: small">
            <li><a href="Dashboard.aspx"><span class="fa fa-inbox fa-lg"></span>&nbsp;Inbox</a></li>
            <li><a href="frmInProcess.aspx"><span class="fa fa-play fa-lg"></span>&nbsp;In Process</a></li>
            <li class="active"><a href="frmCompleted.aspx"><span class="fa fa-check fa-lg"></span>&nbsp;Completed</a></li>
            <li><a href="frmRejected.aspx"><span class="fa fa-times fa-lg"></span>&nbsp;Rejected</a></li>
        </ul>
    </div>
    <table style="float: right">
        <tr>
            <td>
                <asp:Label ID="Label1" runat="server" Text="" Font-Bold="True">Application <span class="fa fa-arrow-right"></span>&nbsp;Outbound <span class="fa fa-arrow-right"></span>&nbsp;Completed</asp:Label>
            </td>
        </tr>
    </table>
    <br>
    <br>
    <table align="center">
        <tr>
            <td align="center">
                <asp:Label ID="lblSearch" runat="server" Text="Student Name: "></asp:Label>
                <asp:TextBox ID="txtSearch" runat="server" placeholder="- Student Name -" style="width: 35%; border-radius: 5px; border: 1px solid CadetBlue;"></asp:TextBox>
                <asp:Button ID="btnSearch" runat="server" Text="Search" OnClick="btnSearch_Click1" />
            </td>
        </tr>
    </table>
</asp:Content>

