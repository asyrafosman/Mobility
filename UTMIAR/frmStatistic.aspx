<%@ Page Title="ACAD2016." Language="C#" MasterPageFile="~/UTMIAR/UTMIARMasterPage.master" AutoEventWireup="true" CodeFile="frmStatistic.aspx.cs" Inherits="UTMIAR_frmStatistic" %>

<asp:Content ID="Content1" ContentPlaceHolderID="BodyContent" Runat="Server">
    <div id="cssmenu2">
        <ul style="font-size: small">
            <li class="active"><a><span class="fa fa-bar-chart fa-lg"></span>&nbsp;Report</a></li>
        </ul>
    </div>
    <table style="float: right">
        <tr>
            <td>
                <asp:Label ID="Label1" runat="server" Text="" Font-Bold="True">Statistic <span class="fa fa-arrow-right"></span>&nbsp;Report</asp:Label>
            </td>
        </tr>
    </table>
    <br />
    <iframe width="915" height="590" src="https://app.powerbi.com/view?r=eyJrIjoiMmE1ZmZjNDItMzcyNS00ODVmLWE2OWItYWJiYmI4NjYzNWVhIiwidCI6IjBlMGRiMmFkLWM0MTYtNDdjNy04OGVjLWNlYWM0ZWU3Njc2NyIsImMiOjEwfQ%3D%3D" frameborder="0" allowFullScreen="true"></iframe>
</asp:Content>

