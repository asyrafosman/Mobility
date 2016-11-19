<%@ Page Title="" Language="C#" MasterPageFile="~/UGStudent/UGMasterPage.master" AutoEventWireup="true" CodeFile="SE.aspx.cs" Inherits="UGStudent_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="BodyContent" Runat="Server">
    <div id="cssmenu2">
        <ul style="font-size: small">
            <li class="active" style="text-align: center"><a href="SE.aspx">&nbsp;Student Exchange</a></li>
            <li></li>
        </ul>
    </div>
    <table style="width: 100%;">
        <tr>
            <td class="style158">
                <table style="width: 100%">
                    <tr>
                        <td>
                            <br />
                            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/UGStudent/frmProgramme.aspx" ImageUrl="~/Styles/images/New Icon/adds-add-file-icon.png">Apply new program</asp:HyperLink>
                            <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/UGStudent/frmProgramme.aspx">Apply new program</asp:HyperLink>
                            <br />
                            <span style="color: #990000">_________________________________________________________________________________________________________________________________________________________________________</span></td>
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

