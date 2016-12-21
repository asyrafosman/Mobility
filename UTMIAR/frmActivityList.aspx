<%@ Page Title="ACAD2016." Language="C#" MasterPageFile="~/UTMIAR/UTMIARMasterPage.master" AutoEventWireup="true" CodeFile="frmActivityList.aspx.cs" Inherits="UTMIAR_frmActivityList" %>

<asp:Content ID="Content1" ContentPlaceHolderID="BodyContent" Runat="Server">
    <div id="cssmenu2">
        <ul style="font-size: small">
            <li class="active"><a><span class="fa fa-plane fa-lg"></span>&nbsp;Activity List</a></li>
        </ul>
    </div>
    <table style="float: right">
        <tr>
            <td>
                <asp:Label ID="Label1" runat="server" Text="" Font-Bold="True">Student Activity <span class="fa fa-arrow-right"></span>&nbsp;Activity List</asp:Label>
            </td>
        </tr>
    </table>
    <br />
    <br />
    <div class="name-bgcolor">
        <div class="row">
            <!-- BEGIN DISPLAY PHOTO -->
            <div class="col-md-3" id="imgPhoto" runat="server">
                <asp:Image ID="Image1" runat="server" ImageUrl="~/Styles/images/nophoto.png" Height="150px" ImageAlign="Middle" />
            </div>
            <!-- END DISPLAY PHOTO -->
            <div class="col-md-9">
                <div class="row">
                    <div class="name-row">
                        <asp:Label ID="lblName" runat="server" Font-Bold="True" Font-Size="Large" Text=""></asp:Label>
                        <br />
                        <asp:Label ID="lblProgramme" runat="server" Font-Bold="True" ForeColor="#AC0000" Text=""></asp:Label>
                        <br />
                        <asp:Label ID="lblFaculty" runat="server" Font-Bold="True" ForeColor="#AD0000" Text=""></asp:Label>
                        <p class="filler">
                            &nbsp;
                        </p>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-6" style="margin-left: -10px">
                        <asp:Label ID="lblTxtMatric" runat="server" Font-Bold="True" Text="Matric No.:"></asp:Label>&nbsp
                        <asp:Label ID="lblMatric" runat="server" Text=""></asp:Label>
                        <div class="xsfiller">
                        </div>
                        <asp:Label ID="lblTxtBilSemester" runat="server" Font-Bold="True" Text="Semester/Norm:"></asp:Label>&nbsp
                        <asp:Label ID="lblBilSemester" runat="server" Text=""></asp:Label>
                        <div class="xsfiller">
                        </div>
                        <asp:Label ID="lblTextAA" runat="server" Font-Bold="True" Text="AA:"></asp:Label>&nbsp
                        <asp:Label ID="lblAA" runat="server" Text=""></asp:Label>
                        <div class="xsfiller">
                        </div>
                        <asp:Label ID="lblTxtProgType" runat="server" Font-Bold="True" Text="Programme Type:"></asp:Label>&nbsp
                        <asp:Label ID="lblProgType" runat="server" Text=""></asp:Label>
                        <div class="xsfiller">
                        </div>
                        <asp:Label ID="lblTxtUniversity" runat="server" Font-Bold="True" Text="University:"></asp:Label>&nbsp
                        <asp:Label ID="lblUniversity" runat="server" Text=""></asp:Label>
                        <div class="xsfiller">
                        </div>
                        <asp:Label ID="lblTxtStartDate" runat="server" Font-Bold="True" Text="Start Date:"></asp:Label>&nbsp
                        <asp:Label ID="lblStartDate" runat="server" Text=""></asp:Label>
                        <br />
                        <div class="statfiller">
                        </div>
                    </div>
                    <div class="col-md-6" style="margin-left: -10px">
                        <asp:Label ID="lblTxtToS" runat="server" Font-Bold="True" Text="Type of Study:"></asp:Label>&nbsp
                        <asp:Label ID="lblToS" runat="server" Text=""></asp:Label>
                        <div class="xsfiller">
                        </div>
                        <asp:Label ID="lblTxtEmail" runat="server" Font-Bold="True" Text="E-mail:"></asp:Label>&nbsp
                        <asp:Label ID="lblEmail" runat="server" Text=""></asp:Label>
                        <div class="xsfiller">
                        </div>
                        <asp:Label ID="lblTxtPhone" runat="server" Font-Bold="True" Text="Phone:"></asp:Label>&nbsp
                        <asp:Label ID="lblPhone" runat="server" Text=""></asp:Label>
                        <div class="xsfiller">
                        </div>
                        <asp:Label ID="lblTxtProgName" runat="server" Font-Bold="True" Text="Programme Name:"></asp:Label>&nbsp
                        <asp:Label ID="lblProgName" runat="server" Text=""></asp:Label>
                        <div class="xsfiller">
                        </div>
                        <asp:Label ID="lblTxtCountry" runat="server" Font-Bold="True" Text="Country:"></asp:Label>&nbsp
                        <asp:Label ID="lblCountry" runat="server" Text=""></asp:Label>
                        <div class="xsfiller">
                        </div>
                        <asp:Label ID="lblTxtEndDate" runat="server" Font-Bold="True" Text="End Date:"></asp:Label>&nbsp
                        <asp:Label ID="lblEndDate" runat="server" Text=""></asp:Label>
                        <br />
                        <div class="statfiller">
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="statfiller">
        </div>
    </div>
    <br />
    <table style="width: 100%">
        <tr>
            <td style="color: #FFFFFF; background-color: #990000;" class="auto-style4" colspan="3">
                <asp:Label ID="lblTxtSecA" runat="server" Text="STUDENT INFO" Font-Bold="True"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style4" style="background-color: #FFFBD6; width: 230px;">
                <asp:Label ID="lblTxt1" runat="server" Text="Current Phone Number" Font-Bold="True"></asp:Label>
            </td>
            <td style="width: 1px; background-color: #FFFBD6;">:</td>
            <td class="auto-style1" style="background-color: #FFFBD6">
                <asp:Label ID="lblNewPhone" runat="server" Text=""></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style4" style="background-color: #FFFBD6; width: 230px;">
                <asp:Label ID="lblTxt2" runat="server" Text="Current Address" Font-Bold="True"></asp:Label>
            </td>
            <td style="width: 1px; background-color: #FFFBD6;">:</td>
            <td class="auto-style1" style="background-color: #FFFBD6">
                <asp:Label ID="lblNewAddress" runat="server" Text=""></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style4" style="background-color: #FFFBD6; width: 230px;">
                <asp:Label ID="lblTxt3" runat="server" Text="Emergency Contact Name" Font-Bold="True"></asp:Label>
            </td>
            <td style="width: 1px; background-color: #FFFBD6;">:</td>
            <td class="auto-style1" style="background-color: #FFFBD6">
                <asp:Label ID="lblNewConName" runat="server" Text=""></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style4" style="background-color: #FFFBD6; width: 230px;">
                <asp:Label ID="lblTxt4" runat="server" Text="Emergency Contact Relation" Font-Bold="True"></asp:Label>
            </td>
            <td style="width: 1px; background-color: #FFFBD6;">:</td>
            <td class="auto-style1" style="background-color: #FFFBD6">
                <asp:Label ID="lblNewConRelation" runat="server" Text=""></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style4" style="background-color: #FFFBD6; width: 230px;">
                <asp:Label ID="lblTxt5" runat="server" Text="Emergency Contact Phone Number" Font-Bold="True"></asp:Label>
            </td>
            <td style="width: 1px; background-color: #FFFBD6;">:</td>
            <td class="auto-style1" style="background-color: #FFFBD6">
                <asp:Label ID="lblNewConPhone" runat="server" Text=""></asp:Label>
            </td>
        </tr>
    </table>
    <br />
    <asp:Label ID="Label2" runat="server" Text="List of Student Activity:" Font-Bold="True"></asp:Label>
    <asp:Repeater ID="rptActivities" runat="server">
        <HeaderTemplate><ul style="font-size: small"></HeaderTemplate>
        <ItemTemplate>
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# Eval("ACTIVITYID", "~/UTMIAR/frmActivityDetails.aspx?ID={0}") %>' Font-Bold="True" onclick="window.open (this.href, 'popupwindow', 'width=750,height=500, scrollbars, resizable'); return false;"><i class="fa fa-caret-right fa-lg" style="color:maroon"></i>&nbsp;<%# Eval("ACTIVITYDATE", "{0:dd-MMM-yyyy}") %></asp:HyperLink>
            <br />
        </ItemTemplate>
        <FooterTemplate></ul></FooterTemplate>
    </asp:Repeater>
</asp:Content>

