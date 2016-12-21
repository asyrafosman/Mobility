<%@ Page Title="ACAD2016." Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="frmActivityDetails.aspx.cs" Inherits="UTMIAR_frmActivityDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
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

