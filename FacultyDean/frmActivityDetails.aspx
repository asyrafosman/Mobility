<%@ Page Title="" Language="C#" MasterPageFile="~/FacultyDean/DeanMasterPage.master" AutoEventWireup="true" CodeFile="frmActivityDetails.aspx.cs" Inherits="FacultyDean_frmActivityDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="BodyContent" Runat="Server">
    <div id="cssmenu2">
        <ul style="font-size: small">
            <li class="active"><a><span class="fa fa-plane"></span>&nbsp;Activity Details</a></li>
        </ul>
    </div>
    <table style="float: right">
        <tr>
            <td>
                <asp:Label ID="Label1" runat="server" Text="" Font-Bold="True">Student Mobility <span class="fa fa-arrow-right"></span>&nbsp;Activity Details</asp:Label>
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
                <asp:Image ID="Image1" runat="server" />
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblDetails" runat="server" Text=""></asp:Label>
            </td>
        </tr>
    </table>
</asp:Content>

