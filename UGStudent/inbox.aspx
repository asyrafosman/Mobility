<%@ Page Title="" Language="C#" MasterPageFile="~/UGStudent/UGMasterPage.master" AutoEventWireup="true" CodeFile="inbox.aspx.cs" Inherits="UGStudent_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="BodyContent" Runat="Server">
    <div id="cssmenu2">
        <ul style="font-size: small">
            <li class="inactive" style="text-align: center"><a href="Homeafter.aspx">&nbsp;Home</a></li>
            <li></li>
            <li class="active" style="text-align: center"><a href="inbox.aspx">&nbsp;Inbox</a></li>
            <li></li>
            <li class="inactive" style="text-align: center"><a href="Activity.aspx">&nbsp;Activity Logs</a></li>
        </ul>
    </div>
    <table style="width: 100%;">
        <tr>
            <td class="style158">
                <br />
                <table style="width: 100%">
                    <tr>
                        <td style="color: #FFFFFF; background-color: #990000"><strong>No</strong></td>
                        <td style="color: #FFFFFF; background-color: #990000"><strong>Programme Type</strong></td>
                        <td style="color: #FFFFFF; background-color: #990000"><strong>Country</strong></td>
                        <td style="color: #FFFFFF; background-color: #990000"><strong>University name</strong></td>
                        <td style="color: #FFFFFF; background-color: #990000"><strong>Start Date</strong></td>
                        <td style="color: #FFFFFF; background-color: #990000"><strong>Status</strong></td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
</asp:Content>

