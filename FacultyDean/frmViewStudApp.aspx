﻿<%@ Page Title="ACAD2016." Language="C#" MasterPageFile="~/FacultyDean/DeanMasterPage.master" AutoEventWireup="true" CodeFile="frmViewStudApp.aspx.cs" Inherits="FacultyDean_frmViewStudApp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="BodyContent" Runat="Server">
    <div id="cssmenu2">
        <ul style="font-size: small">
            <li class="active"><a><span class="fa fa-user fa-lg"></span>&nbsp;Applicant Details</a></li>
        </ul>
    </div>
    <table style="float: right">
        <tr>
            <td>
                <asp:Label ID="Label1" runat="server" Text="" Font-Bold="True">Mobility <span class="fa fa-arrow-right"></span>&nbsp;Outbound <span class="fa fa-arrow-right"></span>&nbsp;Applicant Details</asp:Label>
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
                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/FacultyDean/frmViewForm.aspx" Font-Bold="True" onclick="window.open (this.href, 'popupwindow', 'width=1300,height=700, scrollbars, resizable'); return false;"><i class="fa fa-file-text fa-lg" style="color:maroon"></i>&nbsp;View Full Application Form</asp:HyperLink>
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
            <td style="width: 160px">&nbsp;</td>
            <td>&nbsp;</td>
            <td>
                <asp:Label ID="lblAADate" runat="server" Font-Bold="True"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="width: 150px">&nbsp;</td>
            <td>&nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td colspan="3">
                <asp:Repeater ID="rptSubjects" runat="server">
                        <HeaderTemplate>
                            <table style="width: 100%">
                                <tr>
                                    <td colspan="3" style="background-color: #990000; font-weight: bold; color: #FFFFFF;">
                                        <asp:Label ID="Label3" runat="server" Text="UTM"></asp:Label>
                                    </td>
                                    <td colspan="4" style="background-color: #990000; font-weight: bold; color: #FFFFFF;">
                                        <asp:Label ID="Label4" runat="server" Text="Host University"></asp:Label>
                                    </td>
                                    <td colspan="2" style="background-color: #990000; font-weight: bold; color: #FFFFFF;">
                                        <asp:Label ID="Label2" runat="server" Text=""></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                <td style="background-color: #990000; font-weight: bold; color: #FFFFFF;">
                                    <asp:Label ID="Label5" runat="server" Text="Subject Code"></asp:Label>
                                </td>
                                <td style="background-color: #990000; font-weight: bold; color: #FFFFFF;">
                                    <asp:Label ID="Label6" runat="server" Text="Subject Name"></asp:Label>
                                </td>
                                <td style="background-color: #990000; font-weight: bold; color: #FFFFFF;">
                                    <asp:Label ID="Label7" runat="server" Text="Credit Hour"></asp:Label>
                                </td>
                                <td style="background-color: #990000; font-weight: bold; color: #FFFFFF;">
                                    <asp:Label ID="Label8" runat="server" Text="Subject Code"></asp:Label>
                                </td>
                                <td style="background-color: #990000; font-weight: bold; color: #FFFFFF;">
                                    <asp:Label ID="Label9" runat="server" Text="Subject Name"></asp:Label>
                                </td>
                                <td style="background-color: #990000; font-weight: bold; color: #FFFFFF;">
                                    <asp:Label ID="Label10" runat="server" Text="Credit Hour"></asp:Label>
                                </td>
                                <td style="background-color: #990000; font-weight: bold; color: #FFFFFF;">
                                    <asp:Label ID="Label11" runat="server" Text="Attachment"></asp:Label>
                                </td>
                                <td style="background-color: #990000; font-weight: bold; color: #FFFFFF;">
                                    <asp:Label ID="Label12" runat="server" Text="Approve"></asp:Label>
                                </td>
                                <td style="background-color: #990000; font-weight: bold; color: #FFFFFF;">
                                    <asp:Label ID="Label13" runat="server" Text="Disapprove"></asp:Label>
                                </td>
                            </tr>
                        </HeaderTemplate>
                        <ItemTemplate>
                            <tr>
                                <td>
                                    <asp:Label ID="lblUtmSubCode" runat="server" Text='<%# Eval("UTMSUB_SUBCODE") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="lblUtmSubName" runat="server" Text='<%# Eval("UTMSUB_SUBNAME") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="lblUtmSubCredit" runat="server" Text='<%# Eval("UTMSUB_CREDIT") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="lblHSubCode" runat="server" Text='<%# Eval("HSUB_SUBCODE") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="lblHSubName" runat="server" Text='<%# Eval("HSUB_SUBNAME") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="lblHSubCredit" runat="server" Text='<%# Eval("HSUB_CREDIT") %>' />
                                </td>
                                <td>
                                    <asp:HyperLink ID="HyperLink2" runat="server" Font-Bold="True" CommandArgument='<%# Eval("HSUB_FILEPATH") %>' OnClick="OpenFile"><i class="fa fa-paperclip fa-lg" style="color:maroon"></i>&nbsp;</asp:HyperLink>
                                </td>
                                <td>
                                    <asp:RadioButton ID="Approve" runat="server" GroupName="Subject"/>
                                </td>
                                <td>
                                    <asp:RadioButton ID="Disapprove" runat="server" GroupName="Subject"/>
                                </td>
                            </tr>
                        </ItemTemplate>
                        <FooterTemplate>
                            </table>
                        </FooterTemplate>
                    </asp:Repeater>
            </td>
        </tr>
        <tr>
            <td style="width: 150px">&nbsp;</td>
            <td>&nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 150px">
                <asp:Label ID="lblTxtComment" runat="server" Text="Comment" Font-Bold="True"></asp:Label>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please enter a comment" ForeColor="Red" ControlToValidate="txtComment">*</asp:RequiredFieldValidator>
            </td>
            <td style="width: 1px">:</td>
            <td>
                <asp:TextBox ID="txtComment" runat="server" style="width: 75%; border-radius: 5px; border: 1px solid CadetBlue;"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td colspan="3" style="text-align: center">
                <asp:LinkButton ID="btnRevert" runat="server" CssClass="btn btn-akad btn-sm" OnClick="btnRevert_Click" ><i class="fa fa-reply"></i>&nbsp;Revert</asp:LinkButton>
                &nbsp;&nbsp;&nbsp;
                <asp:LinkButton ID="btnNotRecommend" runat="server" CssClass="btn btn-akad btn-sm" OnClick="btnNotRecommend_Click"><i class="fa fa-times"></i>&nbsp;Not Recommended</asp:LinkButton>
                &nbsp;&nbsp;&nbsp;
                <asp:LinkButton ID="btnRecommend" runat="server" CssClass="btn btn-akad btn-sm" OnClick="btnRecommend_Click"><i class="fa fa-check"></i>&nbsp;Recommended</asp:LinkButton>
            </td>
        </tr>
    </table>
</asp:Content>

