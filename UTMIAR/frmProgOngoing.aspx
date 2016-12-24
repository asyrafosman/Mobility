<%@ Page Title="ACAD2016." Language="C#" MasterPageFile="~/UTMIAR/UTMIARMasterPage.master" AutoEventWireup="true" CodeFile="frmProgOngoing.aspx.cs" Inherits="UTMIAR_frmProgOngoing" %>

<asp:Content ID="Content1" ContentPlaceHolderID="BodyContent" Runat="Server">
    <div id="cssmenu2">
        <ul style="font-size: small">
            <li><a href="frmProgramme.aspx"><span class="fa fa-inbox fa-lg"></span>&nbsp;Inbox</a></li>
            <li class="active"><a><span class="fa fa-calendar-o fa-lg"></span>&nbsp;Ongoing</a></li>
            <li><a href="frmProgComplete.aspx"><span class="fa fa-check fa-lg"></span>&nbsp;Completed</a></li>
        </ul>
    </div>
    <table style="float: right">
        <tr>
            <td>
                <asp:Label ID="Label1" runat="server" Text="" Font-Bold="True">Progamme <span class="fa fa-arrow-right"></span>&nbsp;Ongoing Programme</asp:Label>
            </td>
        </tr>
    </table>
    <br>
    <br>
    <table style="width: 100%">
        <tr>
            <td align="center">
                <asp:Label ID="lblSearch" runat="server" Text="Programme Name: "></asp:Label>
                <asp:TextBox ID="txtSearch" runat="server" placeholder="- Programme Name -" style="width: 35%; border-radius: 5px; border: 1px solid CadetBlue;"></asp:TextBox>
                <asp:LinkButton ID="btnSearch" runat="server" Text="Search" OnClick="btnSearch_Click1"><i class="fa fa-search fa-lg" style="color:#FF9933"></i></asp:LinkButton>
            </td>
        </tr>
    </table>
    <br />
    <table style="width: 100%">
        <tr>
            <td style="background-color: #990000; color: #FFFFFF; font-weight: bold">No</td>
            <td style="background-color: #990000; color: #FFFFFF; font-weight: bold">Types</td>
            <td style="background-color: #990000; color: #FFFFFF; font-weight: bold">Programme Name</td>
            <td style="background-color: #990000; color: #FFFFFF; font-weight: bold">University</td>
            <td style="background-color: #990000; color: #FFFFFF; font-weight: bold">Participant(s)</td>
            <td style="background-color: #990000; color: #FFFFFF; font-weight: bold">&nbsp;</td>
        </tr>
        <tr>
            <td style="background-color: #FFFBD6">1.</td>
            <td style="background-color: #FFFBD6">International Invitation Program</td>
            <td style="background-color: #FFFBD6">4th AUAP GLP 2017</td>
            <td style="background-color: #FFFBD6">Danubius University of Galati </td>
            <td style="background-color: #FFFBD6">21</td>
            <td style="background-color: #FFFBD6"><asp:LinkButton ID="LinkButton1" runat="server"><span class="fa fa-search fa-lg"></span></asp:LinkButton></td>
        </tr>
    </table>
    <br />
    <table style="border: 1px dotted #64001C; border-radius: 15px; width: 100%">
        <tr>
            <td colspan="4">
                <strong>Legends:</strong>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;
                <asp:LinkButton ID="LinkButton3" runat="server">
                <span class="fa fa-search fa-lg"></span>&nbsp;View Details</asp:LinkButton>
            </td>
        </tr>
    </table>
</asp:Content>

