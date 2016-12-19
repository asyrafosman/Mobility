<%@ Page Title="ACAD2016." Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="frmViewForm.aspx.cs" Inherits="UTMID_frmViewForm" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 175px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="Server">
    <div class="container">
        <table class="nav-justified">
            <tr>
                <td colspan="6" style="color: #FFFFFF; background-color: #990000;">
                    <asp:Label ID="lblTxtSecA" runat="server" Text="A. PROGRAMME DETAILS" Font-Bold="True"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style1" style="background-color: #FFFBD6">
                    <asp:Label ID="lblTxtType" runat="server" Text="Program Type" Font-Bold="True"></asp:Label>
                </td>
                <td style="background-color: #FFFBD6">:</td>
                <td style="background-color: #FFFBD6">
                    <asp:Label ID="lblProgType" runat="server" Text=""></asp:Label>
                </td>
                <td class="auto-style1" style="background-color: #FFFBD6">
                    <asp:Label ID="lblTxtProgName" runat="server" Text="Programme Name" Font-Bold="True"></asp:Label>
                </td>
                <td style="background-color: #FFFBD6">:</td>
                <td style="background-color: #FFFBD6">
                    <asp:Label ID="lblProgName" runat="server" Text=""></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style1" style="background-color: #FFFBD6">
                    <asp:Label ID="lblTxtUniversity" runat="server" Text="University" Font-Bold="True"></asp:Label>
                </td>
                <td style="background-color: #FFFBD6">:</td>
                <td style="background-color: #FFFBD6">
                    <asp:Label ID="lblUniversity" runat="server" Text=""></asp:Label>
                </td>
                <td class="auto-style1" style="background-color: #FFFBD6">
                    <asp:Label ID="lblTxtCountry" runat="server" Text="Country" Font-Bold="True"></asp:Label>
                </td>
                <td style="background-color: #FFFBD6">:</td>
                <td style="background-color: #FFFBD6">
                    <asp:Label ID="lblCountry" runat="server" Text=""></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style1" style="background-color: #FFFBD6">
                    <asp:Label ID="lblTxtStartDate" runat="server" Text="Start Date" Font-Bold="True"></asp:Label>
                </td>
                <td style="background-color: #FFFBD6">:</td>
                <td style="background-color: #FFFBD6">
                    <asp:Label ID="lblStartDate" runat="server" Text=""></asp:Label>
                </td>
                <td class="auto-style1" style="background-color: #FFFBD6">
                    <asp:Label ID="lblTxtEndDate" runat="server" Text="End Date" Font-Bold="True"></asp:Label>
                </td>
                <td style="background-color: #FFFBD6">:</td>
                <td style="background-color: #FFFBD6">
                    <asp:Label ID="lblEndDate" runat="server" Text=""></asp:Label>
                </td>
            </tr>
            <tr>
                <td colspan="6" style="color: #FFFFFF; background-color: #990000;">
                    <asp:Label ID="lblTxtSecB" runat="server" Text="B. PERSONAL INFORMATION" Font-Bold="True"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style1" style="background-color: #FFFBD6">
                    <asp:Label ID="lblTxtName" runat="server" Text="Name" Font-Bold="True"></asp:Label>
                </td>
                <td style="background-color: #FFFBD6">:</td>
                <td style="background-color: #FFFBD6">
                    <asp:Label ID="lblName" runat="server" Text=""></asp:Label>
                </td>
                <td class="auto-style1" style="background-color: #FFFBD6">
                    <asp:Label ID="lblTxtIC" runat="server" Text="IC Number" Font-Bold="True"></asp:Label>
                </td>
                <td style="background-color: #FFFBD6">:</td>
                <td style="background-color: #FFFBD6">
                    <asp:Label ID="lblIC" runat="server"></asp:Label></td>
            </tr>
            <tr>
                <td class="auto-style1" style="background-color: #FFFBD6">
                    <asp:Label ID="lblTxtDoB" runat="server" Text="Date of Birth" Font-Bold="True"></asp:Label>
                </td>
                <td style="background-color: #FFFBD6">:</td>
                <td style="background-color: #FFFBD6">
                    <asp:Label ID="lblDoB" runat="server" Text=""></asp:Label>
                </td>
                <td class="auto-style1" style="background-color: #FFFBD6">
                    <asp:Label ID="lblTxtMatric" runat="server" Text="Matric. No" Font-Bold="True"></asp:Label>
                </td>
                <td style="background-color: #FFFBD6">:</td>
                <td style="background-color: #FFFBD6">
                    <asp:Label ID="lblMatric" runat="server" Text=""></asp:Label></td>
            </tr>
            <tr>
                <td class="auto-style1" style="background-color: #FFFBD6">
                    <asp:Label ID="lblTxtContact" runat="server" Text="Contact Number" Font-Bold="True"></asp:Label>
                </td>
                <td style="background-color: #FFFBD6">:</td>
                <td style="background-color: #FFFBD6">
                    <asp:Label ID="lblContact" runat="server" Text=""></asp:Label>
                </td>
                <td class="auto-style1" style="background-color: #FFFBD6">
                    <asp:Label ID="lblTxtEmail" runat="server" Text="Email" Font-Bold="True"></asp:Label>
                </td>
                <td style="background-color: #FFFBD6">:</td>
                <td style="background-color: #FFFBD6">
                    <asp:Label ID="lblEmail" runat="server" Text=""></asp:Label></td>
            </tr>
            <tr>
                <td class="auto-style1" style="background-color: #FFFBD6">
                    <asp:Label ID="lblTxtReligion" runat="server" Text="Religion" Font-Bold="True"></asp:Label>
                </td>
                <td style="background-color: #FFFBD6">:</td>
                <td style="background-color: #FFFBD6">
                    <asp:Label ID="lblReligion" runat="server" Text=""></asp:Label>
                </td>
                <td class="auto-style1" style="background-color: #FFFBD6">
                    <asp:Label ID="lblTxtCitizenship" runat="server" Text="Citizenship" Font-Bold="True"></asp:Label>
                </td>
                <td style="background-color: #FFFBD6">:</td>
                <td style="background-color: #FFFBD6">
                    <asp:Label ID="lblCitizenship" runat="server" Text=""></asp:Label></td>
            </tr>
            <tr>
                <td class="auto-style1" style="background-color: #FFFBD6">
                    <asp:Label ID="lblTxtRace" runat="server" Text="Race" Font-Bold="True"></asp:Label>
                </td>
                <td style="background-color: #FFFBD6">:</td>
                <td style="background-color: #FFFBD6">
                    <asp:Label ID="lblRace" runat="server" Text=""></asp:Label>
                </td>
                <td class="auto-style1" style="background-color: #FFFBD6">
                    <asp:Label ID="lblTxtNextKin" runat="server" Text="Next of Kin" Font-Bold="True"></asp:Label>
                </td>
                <td style="background-color: #FFFBD6">:</td>
                <td style="background-color: #FFFBD6">
                    <asp:Label ID="lblNextKin" runat="server"></asp:Label></td>
            </tr>
            <tr>
                <td class="auto-style1" style="background-color: #FFFBD6">&nbsp;</td>
                <td style="background-color: #FFFBD6">&nbsp;</td>
                <td style="background-color: #FFFBD6">&nbsp;</td>
                <td class="auto-style1" style="background-color: #FFFBD6">
                    <asp:Label ID="lblTxtEmergency" runat="server" Text="Emergency Contact" Font-Bold="True"></asp:Label>
                </td>
                <td style="background-color: #FFFBD6">:</td>
                <td style="background-color: #FFFBD6">
                    <asp:Label ID="lblEmergency" runat="server"></asp:Label></td>
            </tr>
            <tr>
                <td class="auto-style1" style="background-color: #FFFBD6" valign="top">
                    <asp:Label ID="lblTxtAddress" runat="server" Text="Home Address" Font-Bold="True"></asp:Label>
                </td>
                <td style="background-color: #FFFBD6" valign="top">:</td>
                <td style="background-color: #FFFBD6" valign="top">
                    <asp:Label ID="lblAddress" runat="server" Text=""></asp:Label>
                </td>
                <td class="auto-style1" style="background-color: #FFFBD6" valign="top">
                    <asp:Label ID="lblTxtNextKinAddress" runat="server" Text="Next of Kin’s Address" Font-Bold="True"></asp:Label>
                </td>
                <td style="background-color: #FFFBD6" valign="top">:</td>
                <td style="background-color: #FFFBD6" valign="top">
                    <asp:Label ID="lblNextKinAddress" runat="server" Text=""></asp:Label></td>
            </tr>
            <tr>
                <td class="auto-style1" style="background-color: #FFFBD6">
                    <asp:Label ID="lblTxtPassportNo" runat="server" Text="Passport Number" Font-Bold="True"></asp:Label>
                </td>
                <td style="background-color: #FFFBD6">:</td>
                <td style="background-color: #FFFBD6">
                    <asp:Label ID="lblPassportNo" runat="server" Text=""></asp:Label>
                </td>
                <td class="auto-style1" style="background-color: #FFFBD6">
                    <asp:Label ID="lblTxtPassportExDate" runat="server" Text="Passport Expiry Date" Font-Bold="True"></asp:Label>
                </td>
                <td style="background-color: #FFFBD6">:</td>
                <td style="background-color: #FFFBD6">
                    <asp:Label ID="lblPassportExDate" runat="server" Text=""></asp:Label>
                </td>
            </tr>
            <tr>
                <td colspan="6" style="color: #FFFFFF; background-color: #990000;">
                    <asp:Label ID="lblTxtSectionC" runat="server" Text="C. ACADEMIC INFORMATION" Font-Bold="True"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style1" style="background-color: #FFFBD6">
                    <asp:Label ID="lblTxtFaculty" runat="server" Text="Faculty Name" Font-Bold="True"></asp:Label>
                </td>
                <td style="background-color: #FFFBD6">:</td>
                <td style="background-color: #FFFBD6">
                    <asp:Label ID="lblFaculty" runat="server" Text=""></asp:Label>
                </td>
                <td class="auto-style1" style="background-color: #FFFBD6">
                    <asp:Label ID="lblTxtSemesterNorm" runat="server" Text="Semester/Norm" Font-Bold="True"></asp:Label>
                </td>
                <td style="background-color: #FFFBD6">:</td>
                <td style="background-color: #FFFBD6">
                    <asp:Label ID="lblSemesterNorm" runat="server" Text=""></asp:Label></td>
            </tr>
            <tr>
                <td class="auto-style1" style="background-color: #FFFBD6">
                    <asp:Label ID="lblTxtProgramme" runat="server" Text="Programme" Font-Bold="True"></asp:Label>
                </td>
                <td style="background-color: #FFFBD6">:</td>
                <td style="background-color: #FFFBD6">
                    <asp:Label ID="lblProgramme" runat="server" Text=""></asp:Label>
                </td>
                <td class="auto-style1" style="background-color: #FFFBD6">
                    <asp:Label ID="lblTxtCGPA" runat="server" Text="CGPA" Font-Bold="True"></asp:Label>
                </td>
                <td style="background-color: #FFFBD6">:</td>
                <td style="background-color: #FFFBD6">
                    <asp:Label ID="lblCGPA" runat="server" Text=""></asp:Label></td>
            </tr>
            <tr>
                <td class="auto-style1" style="background-color: #FFFBD6">
                    <asp:Label ID="lblTxtField" runat="server" Text="Field of Study" Font-Bold="True"></asp:Label>
                </td>
                <td style="background-color: #FFFBD6">:</td>
                <td style="background-color: #FFFBD6">
                    <asp:Label ID="lblField" runat="server" Text=""></asp:Label>
                </td>
                <td class="auto-style1" style="background-color: #FFFBD6">
                    <asp:Label ID="lblTxtStatus" runat="server" Text="Status" Font-Bold="True"></asp:Label>
                </td>
                <td style="background-color: #FFFBD6">:</td>
                <td style="background-color: #FFFBD6">
                    <asp:Label ID="lblStatus" runat="server" Text=""></asp:Label></td>
            </tr>
            <tr>
                <td class="auto-style1" style="background-color: #FFFBD6">
                    <asp:Label ID="lblTxtGraduation" runat="server" Text="Expected Graduation Year" Font-Bold="True"></asp:Label>
                </td>
                <td style="background-color: #FFFBD6">:</td>
                <td style="background-color: #FFFBD6">
                    <asp:Label ID="lblGraduation" runat="server" Text=""></asp:Label>
                </td>
                <td class="auto-style1" style="background-color: #FFFBD6">&nbsp;</td>
                <td style="background-color: #FFFBD6">&nbsp;</td>
                <td style="background-color: #FFFBD6">&nbsp;</td>
            </tr>
            <tr>
                <td style="background-color: #FFFBD6" colspan="6">
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
                                    <asp:Label ID="lblUtmSubCredit" runat="server" Text='<%# Eval("UTMSUB_SUBCREDIT") %>' />
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
                                    <asp:HyperLink ID="HyperLink2" runat="server" Font-Bold="True" NavigateUrl="" onclick="window.open (this.href, 'popupwindow', 'width=1300,height=700, scrollbars, resizable'); return false;" Text='<%# Eval("HSUB_ATTACH") %>'><i class="fa fa-paperclip fa-lg" style="color:maroon"></i>&nbsp;</asp:HyperLink>
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
                <td colspan="6" style="color: #FFFFFF; background-color: #990000;">
                    <asp:Label ID="lblTxtSectionD" runat="server" Text="D. FINANCIAL DETAILS" Font-Bold="True"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style1" style="background-color: #FFFBD6" valign="top">
                    <asp:Label ID="lblTxtSources" runat="server" Text="Financial Sources" Font-Bold="True"></asp:Label>
                </td>
                <td style="background-color: #FFFBD6" valign="top">:</td>
                <td valign="top" style="background-color: #FFFBD6">
                    <asp:Label ID="lblSources" runat="server" Text=""></asp:Label>
                </td>
                <td class="auto-style1" valign="top" style="background-color: #FFFBD6">
                    <asp:Label ID="lblTxtSponsorName" runat="server" Text="Sponsor Name" Font-Bold="True"></asp:Label>
                </td>
                <td style="background-color: #FFFBD6" valign="top">:</td>
                <td valign="top" style="background-color: #FFFBD6">
                    <asp:Label ID="lblSponsorName" runat="server" Text=""></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style1" style="background-color: #FFFBD6" valign="top">&nbsp;</td>
                <td style="background-color: #FFFBD6" valign="top">&nbsp;</td>
                <td valign="top" style="background-color: #FFFBD6">
                    <table style="width: 100%">
                        <tr>
                            <td style="color: #FFFFFF; background-color: #990000;">
                                <asp:Label ID="lblTxtNo" runat="server" Text="No." Font-Bold="True"></asp:Label>
                            </td>
                            <td style="color: #FFFFFF; background-color: #990000;" class="auto-style1">
                                <asp:Label ID="lblTxtExpenses" runat="server" Text="Expenses Type" Font-Bold="True"></asp:Label>
                            </td>
                            <td style="color: #FFFFFF; background-color: #990000;" class="auto-style1">
                                <asp:Label ID="lblTxtProposed" runat="server" Text="Amount Proposed" Font-Bold="True"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td style="background-color: #FFFBD6">
                                <asp:Label ID="lblTxt1" runat="server" Text="1" Font-Bold="True"></asp:Label>
                            </td>
                            <td style="background-color: #FFFBD6" class="auto-style1">
                                <asp:Label ID="lblTxtFee" runat="server" Text="Program Fee" Font-Bold="True"></asp:Label>
                            </td>
                            <td class="auto-style1" style="background-color: #FFFBD6">RM
                                <asp:Label ID="lblFee" runat="server" Text=""></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td style="background-color: #FFFBD6">
                                <asp:Label ID="lblTxt2" runat="server" Text="2" Font-Bold="True"></asp:Label>
                            </td>
                            <td style="background-color: #FFFBD6" class="auto-style1">
                                <asp:Label ID="lblTxtTransportation" runat="server" Text="Transportation" Font-Bold="True"></asp:Label>
                            </td>
                            <td class="auto-style1" style="background-color: #FFFBD6">RM
                                <asp:Label ID="lblTransportation" runat="server" Text=""></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td style="background-color: #FFFBD6">
                                <asp:Label ID="lblTxt3" runat="server" Text="3" Font-Bold="True"></asp:Label>
                            </td>
                            <td style="background-color: #FFFBD6" class="auto-style1">
                                <asp:Label ID="lblTxtAccommodation" runat="server" Text="Accommodation" Font-Bold="True"></asp:Label>
                            </td>
                            <td class="auto-style1" style="background-color: #FFFBD6">RM
                                <asp:Label ID="lblAccommodation" runat="server" Text=""></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td style="background-color: #FFFBD6">
                                <asp:Label ID="lblTxt4" runat="server" Text="4" Font-Bold="True"></asp:Label>
                            </td>
                            <td style="background-color: #FFFBD6" class="auto-style1">
                                <asp:Label ID="lblTxtMeal" runat="server" Text="Meal" Font-Bold="True"></asp:Label>
                            </td>
                            <td class="auto-style1" style="background-color: #FFFBD6">RM
                                <asp:Label ID="lblMeal" runat="server" Text=""></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td style="background-color: #FFFBD6">
                                <asp:Label ID="lblTxt5" runat="server" Text="5" Font-Bold="True"></asp:Label>
                            </td>
                            <td style="background-color: #FFFBD6" class="auto-style1">
                                <asp:Label ID="lblTxtContingency" runat="server" Text="Contingency" Font-Bold="True"></asp:Label>
                            </td>
                            <td class="auto-style1" style="background-color: #FFFBD6">RM
                                <asp:Label ID="lblContingency" runat="server" Text=""></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td style="background-color: #FFFBD6">&nbsp;</td>
                            <td align="right" class="auto-style1" style="background-color: #FFFBD6">
                                <asp:Label ID="lblTxtTotal" runat="server" Text="Total" Font-Bold="True"></asp:Label>
                            </td>
                            <td class="auto-style1" style="background-color: #FFFBD6; font-weight: bold;">RM
                                <asp:Label ID="lblTotalProposed" runat="server" Font-Bold="True"></asp:Label>
                            </td>
                        </tr>
                    </table>
                </td>
                <td class="auto-style1" valign="top" style="background-color: #FFFBD6">&nbsp;</td>
                <td style="background-color: #FFFBD6;" valign="top">&nbsp;</td>
                <td valign="top" style="background-color: #FFFBD6">&nbsp;</td>
            </tr>
        </table>
        <br />
    </div>
</asp:Content>