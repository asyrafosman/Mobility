<%@ Page Title="ACAD2016." Language="C#" MasterPageFile="~/UTMIAR/UTMIARMasterPage.master" AutoEventWireup="true" CodeFile="frmViewProg.aspx.cs" Inherits="UTMIAR_frmViewProg" %>

<asp:Content ID="Content1" ContentPlaceHolderID="BodyContent" Runat="Server">
    <div id="cssmenu2">
        <ul style="font-size: small">
            <li class="active"><a><span class="fa fa-file-text"></span>&nbsp;Programme Details</a></li>
        </ul>
    </div>
    <table style="float: right">
        <tr>
            <td>
                <asp:Label ID="Label1" runat="server" Text="" Font-Bold="True">Progamme <span class="fa fa-arrow-right"></span>&nbsp;Programme Details</asp:Label>
            </td>
        </tr>
    </table>
    <br>
    <table style="width: 100%">
        <tr>
            <td>
                <asp:Label ID="lblTxtTypes" runat="server" Text="Type"></asp:Label>
            </td>
            <td style="width: 1px">:</td>
            <td>
                <asp:Label ID="lblTypes" runat="server" Text=""></asp:Label>
            </td>
            <td>
                <asp:Label ID="lblTxtProgName" runat="server" Text="Programme Name" ControlToValidate="lblProgName"></asp:Label>
            </td>
            <td style="width: 1px">:</td>
            <td>
                <asp:Label ID="lblProgName" runat="server" Text=""></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblTxtUniversity" runat="server" Text="University"></asp:Label>
            </td>
            <td style="width: 1px">:</td>
            <td>
                <asp:Label ID="lblUniversity" runat="server" Text=""></asp:Label>
            </td>
            <td>
                <asp:Label ID="lblTxtCountry" runat="server" Text="Country"></asp:Label>
            </td>
            <td style="width: 1px">:</td>
            <td>
                <asp:Label ID="lblCountry" runat="server" Text=""></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblTxtStartDate" runat="server" Text="Start Date"></asp:Label>
            </td>
            <td style="width: 1px">:</td>
            <td>
                <asp:Label ID="lblStartDate" runat="server" Text=""></asp:Label>
            </td>
            <td>
                <asp:Label ID="lblTxtEndDate" runat="server" Text="End Date"></asp:Label>
            </td>
            <td style="width: 1px">:</td>
            <td>
                <asp:Label ID="lblEndDate" runat="server" Text=""></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblTxtDeadline" runat="server" Text="Deadline"></asp:Label>
            </td>
            <td style="width: 1px">:</td>
            <td>
                <asp:Label ID="lblDeadline" runat="server" Text=""></asp:Label>
            </td>
            <td>
                <asp:Label ID="lblTxtOpenTo" runat="server" Text="Open To"></asp:Label>
            </td>
            <td style="width: 1px">:</td>
            <td rowspan="2" valign="top">
                <asp:Label ID="lblOpenTo" runat="server" Text=""></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblTxtIntakeSession" runat="server" Text="Intake Session"></asp:Label>
            </td>
            <td style="width: 1px">:</td>
            <td>
                <asp:Label ID="lblIntakeSession" runat="server" Text=""></asp:Label>
            </td>
            <td>&nbsp;</td>
            <td style="width: 1px">&nbsp;</td>
        </tr>
        <tr>
            <td colspan="6" style="text-align: center">
                <asp:Button ID="btnUpdate" runat="server" Text="Update" CssClass="btn btn-akad btn-sm" OnClick="btnUpdate_Click" />
            </td>
        </tr>
    </table>
</asp:Content>

