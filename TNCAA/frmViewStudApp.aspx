<%@ Page Title="ACAD2016." Language="C#" MasterPageFile="~/TNCAA/TNCAAMasterPage.master" AutoEventWireup="true" CodeFile="frmViewStudApp.aspx.cs" Inherits="TNCAA_frmViewStudApp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="BodyContent" Runat="Server">
    <div id="cssmenu2">
        <ul style="font-size: small">
            <li class="active"><a><span class="fa fa-user"></span>&nbsp;Applicant Details</a></li>
        </ul>
    </div>
    <table style="float: right">
        <tr>
            <td>
                <asp:Label ID="Label1" runat="server" Text="" Font-Bold="True">Application <span class="fa fa-arrow-right"></span>&nbsp;Outbound <span class="fa fa-arrow-right"></span>&nbsp;Applicant Details</asp:Label>
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
                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/TNCAA/frmViewForm.aspx" Font-Bold="True" onclick="window.open (this.href, 'popupwindow', 'width=1300,height=700, scrollbars, resizable'); return false;"><i class="fa fa-file-text" style="color:maroon"></i>&nbsp;View Full Application Form</asp:HyperLink>
            </div>
        </div>
        <div class="statfiller">
        </div>
    </div>
    <br />
    <asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowMessageBox="True" ShowSummary="False" />
    <table style="width: 100%">
        <tr>
            <td style="width: 160px">
                <asp:Label ID="lblTxtAA" runat="server" Text="Academic Advisor" Font-Bold="True"></asp:Label>
            </td>
            <td style="width: 1px">:</td>
            <td>
                <asp:Label ID="lblAAComment" runat="server" Text=""></asp:Label>
            </td>
        </tr>
         <tr>
            <td style="width: 160px">&nbsp;</td>
            <td>&nbsp;</td>
            <td>
                <asp:Label ID="lblAAName" runat="server" Font-Bold="True"></asp:Label>
            </td>
        </tr>
        <tr>
             <td style="width: 160px">
                <asp:Label ID="lblTxtDean" runat="server" Text="Dean" Font-Bold="True"></asp:Label>
            </td>
            <td style="width: 1px">:</td>
            <td>
                <asp:Label ID="lblDeanComment" runat="server" Text=""></asp:Label>
            </td>
        </tr>
         <tr>
            <td style="width: 160px">&nbsp;</td>
            <td>&nbsp;</td>
            <td>
                <asp:Label ID="lblDeanName" runat="server" Font-Bold="True"></asp:Label>
            </td>
        </tr>
        <tr>
             <td style="width: 160px">
                <asp:Label ID="lblTxtUTMIar" runat="server" Text="UTMI Assistant Registrar" Font-Bold="True"></asp:Label>
            </td>
            <td style="width: 1px">:</td>
            <td>
                <asp:Label ID="lblUTMIARComment" runat="server" Text=""></asp:Label>
            </td>

        </tr>
        <tr>
            <td style="width: 160px">&nbsp;</td>
            <td>&nbsp;</td>
            <td>
                <asp:Label ID="lblUTMIARName" runat="server" Font-Bold="True"></asp:Label>
            </td>
        </tr>

          <tr>
             <td style="width: 160px">
                <asp:Label ID="Label19" runat="server" Text="UTMI Director" Font-Bold="True"></asp:Label>
            </td>
            <td style="width: 1px">:</td>
            <td>
                <asp:Label ID="lblUTMIDComment" runat="server" Text=""></asp:Label>
            </td>

        </tr>
        <tr>
            <td style="width: 160px">&nbsp;</td>
            <td>&nbsp;</td>
            <td>
                <asp:Label ID="lblUTMIDName" runat="server" Font-Bold="True"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="width: 160px">&nbsp;</td>
            <td>&nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td colspan="3">
                <table style="width: 100%">
                    <tr>
                        <td style="color: #FFFFFF; background-color: #990000;" class="auto-style4">
                            <asp:Label ID="lblTxtNo" runat="server" Text="No." Font-Bold="True"></asp:Label>
                        </td>
                        <td style="color: #FFFFFF; background-color: #990000;" class="auto-style1">
                            <asp:Label ID="lblTxtExpenses" runat="server" Text="Expenses Type" Font-Bold="True"></asp:Label>
                        </td>
                        <td style="color: #FFFFFF; background-color: #990000;" class="auto-style1">
                            <asp:Label ID="lblTxtProposed" runat="server" Text="Amount Proposed" Font-Bold="True"></asp:Label>
                        </td>
                        <td style="color: #FFFFFF; background-color: #990000;" class="auto-style1">
                            <asp:Label ID="lblTxtAllocated" runat="server" Text="Amount Allocated" Font-Bold="True"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style4" style="background-color: #FFFBD6">
                            <asp:Label ID="lblTxt1" runat="server" Text="1" Font-Bold="True"></asp:Label>
                        </td>
                        <td style="background-color: #FFFBD6" class="auto-style1">
                            <asp:Label ID="lblTxtFee" runat="server" Text="Program Fee" Font-Bold="True"></asp:Label>
                        </td>
                        <td class="auto-style1" style="background-color: #FFFBD6">RM
                            <asp:Label ID="lblFee" runat="server" Text=""></asp:Label>
                        </td>
                        <td class="auto-style1" style="background-color: #FFFBD6">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style4" style="background-color: #FFFBD6">
                            <asp:Label ID="lblTxt2" runat="server" Text="2" Font-Bold="True"></asp:Label>
                        </td>
                        <td style="background-color: #FFFBD6" class="auto-style1">
                            <asp:Label ID="lblTxtTransportation" runat="server" Text="Transportation" Font-Bold="True"></asp:Label>
                        </td>
                        <td class="auto-style1" style="background-color: #FFFBD6">RM
                            <asp:Label ID="lblTransportation" runat="server" Text=""></asp:Label>
                        </td>
                        <td class="auto-style1" style="background-color: #FFFBD6">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style4" style="background-color: #FFFBD6">
                            <asp:Label ID="lblTxt3" runat="server" Text="3" Font-Bold="True"></asp:Label>
                        </td>
                        <td style="background-color: #FFFBD6" class="auto-style1">
                            <asp:Label ID="lblTxtAccommodation" runat="server" Text="Accommodation" Font-Bold="True"></asp:Label>
                        </td>
                        <td class="auto-style1" style="background-color: #FFFBD6">RM
                            <asp:Label ID="lblAccommodation" runat="server" Text=""></asp:Label>
                        </td>
                        <td class="auto-style1" style="background-color: #FFFBD6">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style4" style="background-color: #FFFBD6">
                            <asp:Label ID="lblTxt4" runat="server" Text="4" Font-Bold="True"></asp:Label>
                        </td>
                        <td style="background-color: #FFFBD6" class="auto-style1">
                            <asp:Label ID="lblTxtMeal" runat="server" Text="Meal" Font-Bold="True"></asp:Label>
                        </td>
                        <td class="auto-style1" style="background-color: #FFFBD6">RM
                            <asp:Label ID="lblMeal" runat="server" Text=""></asp:Label>
                        </td>
                        <td class="auto-style1" style="background-color: #FFFBD6">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style4" style="background-color: #FFFBD6">
                            <asp:Label ID="lblTxt5" runat="server" Text="5" Font-Bold="True"></asp:Label>
                        </td>
                        <td style="background-color: #FFFBD6" class="auto-style1">
                            <asp:Label ID="lblTxtContingency" runat="server" Text="Contingency" Font-Bold="True"></asp:Label>
                        </td>
                        <td class="auto-style1" style="background-color: #FFFBD6">RM
                            <asp:Label ID="lblContingency" runat="server" Text=""></asp:Label>
                        </td>
                        <td class="auto-style1" style="background-color: #FFFBD6">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style5" style="background-color: #FFFBD6">&nbsp;</td>
                        <td align="right" class="auto-style1" style="background-color: #FFFBD6">
                            <asp:Label ID="lblTxtTotal" runat="server" Text="Total" Font-Bold="True"></asp:Label>
                        </td>
                        <td class="auto-style1" style="background-color: #FFFBD6; font-weight: bold;">RM
                            <asp:Label ID="lblTotalProposed" runat="server" Font-Bold="True"></asp:Label>
                        </td>
                        <td class="auto-style1" style="background-color: #FFFBD6; font-weight: bold;">RM
                            <asp:Label ID="lblTotalFunded" runat="server" Font-Bold="True"></asp:Label>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td style="width: 160px">&nbsp;</td>
            <td>&nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 160px">
                <asp:Label ID="lblTxtComment" runat="server" Text="Comment" Font-Bold="True"></asp:Label>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please enter a comment" ForeColor="Red" ControlToValidate="txtComment">*</asp:RequiredFieldValidator>
            </td>
            <td style="width: 1px">:</td>
            <td>
                <asp:TextBox ID="txtComment" runat="server" Style="width: 100%"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td colspan="3" style="text-align: center">
                <asp:Button ID="btnDisapprove" runat="server" Text="Disapprove" CssClass="btn btn-akad btn-sm" OnClick="btnDisapprove_Click" />
                &nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnApprove" runat="server" Text="Approve" CssClass="btn btn-akad btn-sm" OnClick="btnApprove_Click" />
            </td>
        </tr>
    </table>
    <br />
</asp:Content>

