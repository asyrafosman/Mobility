<%@ Page Title="" Language="C#" MasterPageFile="~/UGStudent/UGMasterPage.master" AutoEventWireup="true" CodeFile="Activity.aspx.cs" Inherits="UGStudent_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="BodyContent" Runat="Server">
    <div id="cssmenu2">
        <ul style="font-size: small">
            <li class="inactive" style="text-align: center"><a href="Homeafter.aspx">&nbsp;Home</a></li>
            <li></li>
            <li class="inactive" style="text-align: center"><a href="inbox.aspx">&nbsp;Inbox</a></li>
            <li></li>
            <li class="active" style="text-align: center"><a href="Activity.aspx">&nbsp;Activity Logs</a></li>
        </ul>
    </div>
    <table style="width: 100%;">
        <tr>
            <td class="style158">
                <br />
                <asp:HyperLink ID="HyperLink1" runat="server" ImageUrl="~/Styles/images/New Icon/activity-icon.png" NavigateUrl="~/UGStudent/ActivityActivity.aspx">HyperLink</asp:HyperLink>
                <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/UGStudent/ActivityActivity.aspx">Post new activity</asp:HyperLink>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:HyperLink ID="HyperLink3" runat="server" ImageUrl="~/Styles/images/New Icon/reload_edition-512.png" NavigateUrl="~/UGStudent/ActivityUpdate.aspx">HyperLink</asp:HyperLink>
                <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="~/UGStudent/ActivityUpdate.aspx">Update information</asp:HyperLink>
&nbsp;&nbsp;&nbsp;
                <asp:HyperLink ID="HyperLink5" runat="server" ImageUrl="~/Styles/images/New Icon/report-3-xxl.png" NavigateUrl="~/UGStudent/ActivityReport.aspx">HyperLink</asp:HyperLink>
                <asp:HyperLink ID="HyperLink6" runat="server" NavigateUrl="~/UGStudent/ActivityReport.aspx">Create report</asp:HyperLink>
&nbsp;&nbsp;
                <asp:HyperLink ID="HyperLink7" runat="server" ImageUrl="~/Styles/images/New Icon/photo-album-icon-png-14.png" NavigateUrl="~/UGStudent/ActivityGallery.aspx">HyperLink</asp:HyperLink>
                <asp:HyperLink ID="HyperLink8" runat="server" NavigateUrl="~/UGStudent/ActivityGallery.aspx">Gallery</asp:HyperLink>
                <br />
                <span style="color: #990000">____________________________________________________________________________________________________________________________________________________________________________________________</span></td>
        </tr>
    </table>
</asp:Content>

