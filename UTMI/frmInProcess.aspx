<%@ Page Title="ACAD2016." Language="C#" MasterPageFile="~/UTMI/UTMIMasterPage.master" AutoEventWireup="true" CodeFile="frmInProcess.aspx.cs" Inherits="UTMI_InProcess" %>

<asp:Content ID="Content1" ContentPlaceHolderID="BodyContent" runat="Server">
    <div id="cssmenu2">
        <ul style="font-size: small">
            <li><a href="Dashboard.aspx"><span class="fa fa-inbox"></span>&nbsp;Inbox</a></li>
            <li class="active"><a href="frmInProcess.aspx"><span class="fa fa-play"></span>&nbsp;In Process</a></li>
            <li><a href="frmCompleted.aspx"><span class="fa fa-check"></span>&nbsp;Completed</a></li>
            <li><a href="frmRejected.aspx"><span class="fa fa-times"></span>&nbsp;Rejected</a></li>
        </ul>
    </div>
    <table style="float: right">
        <tr>
            <td>
                <asp:Label ID="Label1" runat="server" Text="" Font-Bold="True">Application <span class="fa fa-arrow-right"></span>&nbsp;Outboun <span class="fa fa-arrow-right"></span>&nbsp;In Process</asp:Label>
            </td>
        </tr>
    </table>
    <br>
    <br>
    <table align="center">
        <tr>
            <td>
                <asp:Label ID="lblSearch" runat="server" Text="Student Name: "></asp:Label>
                <asp:TextBox ID="txtSearch" runat="server" placeholder="- Student Name -"></asp:TextBox>
                <asp:Button ID="btnSearch" runat="server" Text="Search" OnClick="btnSearch_Click1" />
            </td>
        </tr>
    </table>
    <br>
    <table style="width: 100%">
        <tr>
            <td style="background-color: #990000; color: #FFFFFF; font-weight: bold">No</td>
            <td style="background-color: #990000; color: #FFFFFF; font-weight: bold">Student Name</td>
            <td style="background-color: #990000; color: #FFFFFF; font-weight: bold">Programme Type</td>
            <td style="background-color: #990000; color: #FFFFFF; font-weight: bold">University</td>
            <td style="background-color: #990000; color: #FFFFFF; font-weight: bold">Start Date</td>
            <td style="background-color: #990000; color: #FFFFFF; font-weight: bold">End Date</td>
            <td style="background-color: #990000; color: #FFFFFF; font-weight: bold">&nbsp;</td>
        </tr>
        <tr>
            <td style="background-color: #FFFBD6">1.</td>
            <td style="background-color: #FFFBD6">Mohamad Asyraf bin Osman</td>
            <td style="background-color: #FFFBD6">Student Exchange</td>
            <td style="background-color: #FFFBD6">Seoul National University</td>
            <td style="background-color: #FFFBD6">01-03-2017</td>
            <td style="background-color: #FFFBD6">30-06-2017</td>
            <td style="background-color: #FFFBD6"><asp:LinkButton ID="LinkButton1" runat="server" CommandArgument='<%# Eval("ProgId") %>' OnClick="ViewStatus">
                <span class="fa fa-info-circle"></span></asp:LinkButton></td>
        </tr>
    </table>
</asp:Content>