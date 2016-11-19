<%@ Page Title="" Language="C#" MasterPageFile="~/UGStudent/UGMasterPage.master" AutoEventWireup="true" CodeFile="SEafter.aspx.cs" Inherits="UGStudent_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="BodyContent" Runat="Server">
    <div id="cssmenu2">
        <ul style="font-size: small">
            <li class="active" style="text-align: center"><a href="Homeafter.aspx">&nbsp;Home</a></li>
            <li></li>
            <li class="inactive" style="text-align: center"><a href="inbox.aspx">&nbsp;Inbox</a></li>
            <li></li>
            <li class="inactive" style="text-align: center"><a href="Activity.aspx">&nbsp;Activity Logs</a></li>
        </ul>
    </div>
    <table style="width: 100%;">
        <tr>
            <td class="style158">
                <table style="width: 100%">
                    <tr>
                        <td>
                            <br />
                            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/UGStudent/Application.aspx" ImageUrl="~/Styles/images/New Icon/adds-add-file-icon.png">Apply new program</asp:HyperLink>
                            <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/UGStudent/Application.aspx">Apply new program</asp:HyperLink>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:HyperLink ID="HyperLink3" runat="server" ImageUrl="~/Styles/images/New Icon/Files-Edit-File-icon.png">HyperLink</asp:HyperLink>
                            <asp:HyperLink ID="HyperLink4" runat="server">Continue application</asp:HyperLink>
                            <br />
                            <span style="color: #CC0066">_________________________________________________________________________________________________________________________________________________________________________</span></td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
</asp:Content>

