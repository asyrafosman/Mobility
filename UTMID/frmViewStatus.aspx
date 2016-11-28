<%@ Page Title="ACAD2016." Language="C#" MasterPageFile="~/UTMID/UTMIDMasterPage.master" AutoEventWireup="true" CodeFile="frmViewStatus.aspx.cs" Inherits="UTMID_frmViewStatus" %>

<asp:Content ID="Content1" ContentPlaceHolderID="BodyContent" Runat="Server">
    <div id="cssmenu2">
        <ul style="font-size: small">
            <li class="active"><a><span class="fa fa-user fa-lg"></span>&nbsp;Applicant Status</a></li>
        </ul>
    </div>
    <table style="float: right">
        <tr>
            <td>
                <asp:Label ID="Label1" runat="server" Text="" Font-Bold="True">Application <span class="fa fa-arrow-right"></span>&nbsp;Outbound <span class="fa fa-arrow-right"></span>&nbsp;Applicant Status</asp:Label>
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
                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/UTMI/frmViewForm.aspx" Font-Bold="True" onclick="window.open (this.href, 'popupwindow', 'width=1300,height=700, scrollbars, resizable'); return false;"><i class="fa fa-file-pdf-o fa-lg" style="color:maroon"></i> View Full Application Form</asp:HyperLink>
            </div>
        </div>
        <div class="statfiller">
        </div>
    </div>
    <br />
    <table style="width: 100%">
        <tr>
            <td style="color: #FFFFFF; background-color: #990000; text-align: center;"></td>
            <td colspan="2" style="color: #FFFFFF; background-color: #990000; text-align: center;">
                <asp:Label ID="lblTxtFaculty" runat="server" Text="Faculty" Font-Bold="True"></asp:Label>
            </td>
            <td colspan="2" style="color: #FFFFFF; background-color: #990000; text-align: center;">
                <asp:Label ID="lblTxtUtmi" runat="server" Text="UTM International" Font-Bold="True"></asp:Label>
            </td>
            <td style="color: #FFFFFF; background-color: #990000; text-align: center;"></td>
        </tr>
        <tr>
            <td style="color: #FFFFFF; background-color: #990000; text-align: center;">
                <asp:Label ID="lblTxtSystem" runat="server" Text="System" Font-Bold="True"></asp:Label>
            </td>
            <td style="color: #FFFFFF; background-color: #990000; text-align: center;">
                <asp:Label ID="lblTxtAA" runat="server" Text="Academic Advisor" Font-Bold="True"></asp:Label>
            </td>
            <td style="color: #FFFFFF; background-color: #990000; text-align: center;">
                <asp:Label ID="lblTxtDean" runat="server" Text="Dean" Font-Bold="True"></asp:Label>
            </td>
            <td style="color: #FFFFFF; background-color: #990000; text-align: center;">
                <asp:Label ID="lblTxtUtmiAR" runat="server" Text="UTMI Assistant Registrar" Font-Bold="True"></asp:Label>
            </td>
            <td style="color: #FFFFFF; background-color: #990000; text-align: center;">
                <asp:Label ID="lblTxtUtmiD" runat="server" Text="UTMI Director" Font-Bold="True"></asp:Label>
            </td>
            <td style="color: #FFFFFF; background-color: #990000; text-align: center;">
                <asp:Label ID="lblTxtTncaa" runat="server" Text="TNCAA" Font-Bold="True"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="background-color: #FFFBD6; text-align: center;">
                <asp:Label ID="lblStatusSystem" runat="server" Text=""></asp:Label>
            </td>
            <td style="background-color: #FFFBD6; text-align: center;">
                <asp:Label ID="lblStatusAA" runat="server" Text=""></asp:Label>
            </td>
            <td style="background-color: #FFFBD6; text-align: center;">
                <asp:Label ID="lblStatusDean" runat="server" Text=""></asp:Label>
            </td>
            <td style="background-color: #FFFBD6; text-align: center;">
                <%--<span class="label label-warning">In Process</span>--%>
                <asp:Label ID="lblStatusUTMIAR" runat="server"></asp:Label>
            </td>
            <td style="background-color: #FFFBD6; text-align: center;">
                <%--<span class="label label-danger">Not Recommended</span>--%>
                <asp:Label ID="lblStatusUTMID" runat="server" Text=""></asp:Label>
            </td>
            <td style="background-color: #FFFBD6; text-align: center;">
                <asp:Label ID="lblStatusTNCAA" runat="server" Text=""></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="background-color: #FFFBD6; text-align: center;">&nbsp;</td>
            <td style="background-color: #FFFBD6; text-align: center;">
                <asp:Label ID="lblAAName" runat="server" Font-Bold="True"></asp:Label>
            </td>
            <td style="background-color: #FFFBD6; text-align: center;">
                <asp:Label ID="lblDeanName" runat="server" Font-Bold="True"></asp:Label>
            </td>
            <td style="background-color: #FFFBD6; text-align: center;">
                <asp:Label ID="lblUTMIARName" runat="server" Font-Bold="True"></asp:Label>
            </td>
            <td style="background-color: #FFFBD6; text-align: center;">
                <asp:Label ID="lblUTMIDName" runat="server" Font-Bold="True"></asp:Label>
            </td>
            <td style="background-color: #FFFBD6; text-align: center;">
                <asp:Label ID="lblTNCAAName" runat="server" Font-Bold="True"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="background-color: #FFFBD6; text-align: center;">
                <asp:Label ID="lblSystemDate" runat="server" Text=""></asp:Label>
            </td>
            <td style="background-color: #FFFBD6; text-align: center;">
                <asp:Label ID="lblAADate" runat="server" Text=""></asp:Label>
            </td>
            <td style="background-color: #FFFBD6; text-align: center;">
                <asp:Label ID="lblDeanDate" runat="server" Text=""></asp:Label>
            </td>
            <td style="background-color: #FFFBD6; text-align: center;">
                <asp:Label ID="lblUTMIARDate" runat="server" Text=""></asp:Label>
            </td>
            <td style="background-color: #FFFBD6; text-align: center;">
                <asp:Label ID="lblUTMIDDate" runat="server" Text=""></asp:Label>
            </td>
            <td style="background-color: #FFFBD6; text-align: center;">
                <asp:Label ID="lblTNCAADate" runat="server" Text=""></asp:Label>
            </td>
        </tr>
    </table>
</asp:Content>

