<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="frmViewForm.aspx.cs" Inherits="UTMI_frmViewForm" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 175px;
        }
        .auto-style2 {
            width: 175px;
            height: 24px;
        }
        .auto-style3 {
            height: 24px;
        }
        .auto-style4 {
            width: 30px;
        }
        .auto-style5 {
            width: 30px;
            height: 24px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
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
                <td style="background-color: #FFFBD6;">:</td>
                <td style="background-color: #FFFBD6">
                    <asp:Label ID="lblProgType" runat="server" Text=""></asp:Label>
                </td>
                <td class="auto-style1" style="background-color: #FFFBD6">
                    <asp:Label ID="lblTxtProgName" runat="server" Text="Programme Name" Font-Bold="True"></asp:Label>
                </td>
                <td style="background-color: #FFFBD6;">:</td>
                <td style="background-color: #FFFBD6">
                    <asp:Label ID="lblProgName" runat="server" Text=""></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style1" style="background-color: #FFFBD6">
                    <asp:Label ID="lblTxtUniversity" runat="server" Text="University" Font-Bold="True"></asp:Label>
                </td>
                <td style="background-color: #FFFBD6;">:</td>
                <td style="background-color: #FFFBD6">
                    <asp:Label ID="lblUniversity" runat="server" Text=""></asp:Label>
                </td>
                <td class="auto-style1" style="background-color: #FFFBD6">
                    <asp:Label ID="lblTxtCountry" runat="server" Text="Country" Font-Bold="True"></asp:Label>
                </td>
                <td style="background-color: #FFFBD6;">:</td>
                <td style="background-color: #FFFBD6">
                    <asp:Label ID="lblCountry" runat="server" Text=""></asp:Label>
                </td>
            </tr>
        </table>
        <br />
        <table class="nav-justified">
            <tr>
                <td colspan="6" style="color: #FFFFFF; background-color: #990000;">
                    <asp:Label ID="lblTxtSecB" runat="server" Text="B. PERSONAL INFORMATION" Font-Bold="True"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style1" style="background-color: #FFFBD6">
                    <asp:Label ID="lblTxtName" runat="server" Text="Name" Font-Bold="True"></asp:Label>
                </td>
                <td style="background-color: #FFFBD6;">:</td>
                <td style="background-color: #FFFBD6">
                    <asp:Label ID="lblName" runat="server" Text=""></asp:Label>
                </td>
                <td class="auto-style1" style="background-color: #FFFBD6">
                    <asp:Label ID="lblTxtIC" runat="server" Text="IC Number" Font-Bold="True"></asp:Label>
                </td>
                <td style="background-color: #FFFBD6;">:</td>
                <td style="background-color: #FFFBD6">
                    <asp:Label ID="lbIC" runat="server" Text=""></asp:Label></td>
            </tr>
            <tr>
                <td class="auto-style1" style="background-color: #FFFBD6">
                    <asp:Label ID="lblTxtDoB" runat="server" Text="Date of Birth" Font-Bold="True"></asp:Label>
                </td>
                <td style="background-color: #FFFBD6;">:</td>
                <td style="background-color: #FFFBD6">
                    <asp:Label ID="lblDoB" runat="server" Text=""></asp:Label>
                </td>
                <td class="auto-style1" style="background-color: #FFFBD6">
                    <asp:Label ID="lblTxtMatric" runat="server" Text="Matric. No" Font-Bold="True"></asp:Label>
                </td>
                <td style="background-color: #FFFBD6;">:</td>
                <td style="background-color: #FFFBD6">
                    <asp:Label ID="lblMatric" runat="server" Text=""></asp:Label></td>
            </tr>
            <tr>
                <td class="auto-style1" style="background-color: #FFFBD6">
                    <asp:Label ID="lblTxtContact" runat="server" Text="Contact Number" Font-Bold="True"></asp:Label>
                </td>
                <td style="background-color: #FFFBD6;">:</td>
                <td style="background-color: #FFFBD6">
                    <asp:Label ID="lblContact" runat="server" Text=""></asp:Label>
                </td>
                <td class="auto-style1" style="background-color: #FFFBD6">
                    <asp:Label ID="lblTxtEmail" runat="server" Text="Email" Font-Bold="True"></asp:Label>
                </td>
                <td style="background-color: #FFFBD6;">:</td>
                <td style="background-color: #FFFBD6">
                    <asp:Label ID="lbEmail" runat="server" Text=""></asp:Label></td>
            </tr>
            <tr>
                <td class="auto-style1" style="background-color: #FFFBD6">
                    <asp:Label ID="lblTxtReligion" runat="server" Text="Religion" Font-Bold="True"></asp:Label>
                </td>
                <td style="background-color: #FFFBD6;">:</td>
                <td style="background-color: #FFFBD6">
                    <asp:Label ID="lblReligion" runat="server" Text=""></asp:Label>
                </td>
                <td class="auto-style1" style="background-color: #FFFBD6">
                    <asp:Label ID="lblTxtCitizenship" runat="server" Text="Citizenship" Font-Bold="True"></asp:Label>
                </td>
                <td style="background-color: #FFFBD6;">:</td>
                <td style="background-color: #FFFBD6">
                    <asp:Label ID="lblCitizenship" runat="server" Text=""></asp:Label></td>
            </tr>
            <tr>
                <td class="auto-style1" style="background-color: #FFFBD6">
                    <asp:Label ID="lblTxtRace" runat="server" Text="Race" Font-Bold="True"></asp:Label>
                </td>
                <td style="background-color: #FFFBD6;">:</td>
                <td style="background-color: #FFFBD6">
                    <asp:Label ID="lblRace" runat="server" Text=""></asp:Label>
                </td>
                <td class="auto-style1" style="background-color: #FFFBD6">
                    <asp:Label ID="lblTxtNextKin" runat="server" Text="Next of Kin" Font-Bold="True"></asp:Label>
                </td>
                <td style="background-color: #FFFBD6;">:</td>
                <td style="background-color: #FFFBD6">
                    <asp:Label ID="lbNextKin" runat="server" Text=""></asp:Label></td>
            </tr>
            <tr>
                <td class="auto-style1" style="background-color: #FFFBD6">
                    &nbsp;</td>
                <td style="background-color: #FFFBD6;">&nbsp;</td>
                <td style="background-color: #FFFBD6">
                    &nbsp;</td>
                <td class="auto-style1" style="background-color: #FFFBD6">
                    <asp:Label ID="lblTxtEmergency" runat="server" Text="Emergency Contact" Font-Bold="True"></asp:Label>
                </td>
                <td style="background-color: #FFFBD6;">:</td>
                <td style="background-color: #FFFBD6">
                    <asp:Label ID="lbIEmergency" runat="server" Text=""></asp:Label></td>
            </tr>
            <tr>
                <td class="auto-style1" style="background-color: #FFFBD6" valign="top">
                    <asp:Label ID="lblTxtAddress" runat="server" Text="Home Address" Font-Bold="True"></asp:Label>
                </td>
                <td style="background-color: #FFFBD6;" valign="top">:</td>
                <td style="background-color: #FFFBD6" valign="top">
                    <asp:Label ID="lblAddress" runat="server" Text=""></asp:Label>
                </td>
                <td class="auto-style1" style="background-color: #FFFBD6" valign="top">
                    <asp:Label ID="lblTxtNextKinAddress" runat="server" Text="Next of Kin’s Address" Font-Bold="True"></asp:Label>
                </td>
                <td style="background-color: #FFFBD6;" valign="top">:</td>
                <td style="background-color: #FFFBD6" valign="top">
                    <asp:Label ID="lblNextKinAddress" runat="server" Text=""></asp:Label></td>
            </tr>
            <tr>
                <td class="auto-style1" style="background-color: #FFFBD6">
                    <asp:Label ID="lblTxtPassportNo" runat="server" Text="Passport Number" Font-Bold="True"></asp:Label>
                </td>
                <td style="background-color: #FFFBD6;">:</td>
                <td style="background-color: #FFFBD6">
                    <asp:Label ID="lblPassportNo" runat="server" Text=""></asp:Label>
                </td>
                <td class="auto-style1" style="background-color: #FFFBD6">
                    <asp:Label ID="lblTxtPassportExDate" runat="server" Text="Passport Expiry Date" Font-Bold="True"></asp:Label>
                </td>
                <td style="background-color: #FFFBD6;">:</td>
                <td style="background-color: #FFFBD6">
                    <asp:Label ID="lblPassportExDate" runat="server" Text=""></asp:Label>
                </td>
            </tr>
        </table>
        <br />
        <table class="nav-justified">
            <tr>
                <td colspan="6" style="color: #FFFFFF; background-color: #990000;">
                    <asp:Label ID="lblTxtSectionC" runat="server" Text="C. ACADEMIC INFORMATION" Font-Bold="True"></asp:Label>
                </td>
            </tr>
                <tr>
                <td class="auto-style1" style="background-color: #FFFBD6">
                    <asp:Label ID="lblTxtFaculty" runat="server" Text="Faculty Name" Font-Bold="True"></asp:Label>
                </td>
                <td style="background-color: #FFFBD6;">:</td>
                <td style="background-color: #FFFBD6">
                    <asp:Label ID="lblFaculty" runat="server" Text=""></asp:Label>
                </td>
                <td class="auto-style1" style="background-color: #FFFBD6">
                    <asp:Label ID="lblTxtSemesterNorm" runat="server" Text="Semester/Norm" Font-Bold="True"></asp:Label>
                </td>
                <td style="background-color: #FFFBD6;">:</td>
                <td style="background-color: #FFFBD6">
                    <asp:Label ID="lbSemesterNorm" runat="server" Text=""></asp:Label></td>
                </tr>
                <tr>
                <td class="auto-style1" style="background-color: #FFFBD6">
                    <asp:Label ID="lblTxtProgramme" runat="server" Text="Programme" Font-Bold="True"></asp:Label>
                </td>
                <td style="background-color: #FFFBD6;">:</td>
                <td style="background-color: #FFFBD6">
                    <asp:Label ID="lblProgramme" runat="server" Text=""></asp:Label>
                </td>
                <td class="auto-style1" style="background-color: #FFFBD6">
                    <asp:Label ID="lblTxtCGPA" runat="server" Text="CGPA" Font-Bold="True"></asp:Label>
                </td>
                <td style="background-color: #FFFBD6;">:</td>
                <td style="background-color: #FFFBD6">
                    <asp:Label ID="lbCGPA" runat="server" Text=""></asp:Label></td>
                </tr>
                <tr>
                <td class="auto-style1" style="background-color: #FFFBD6">
                    <asp:Label ID="lblTxtField" runat="server" Text="Field of Study" Font-Bold="True"></asp:Label>
                </td>
                <td style="background-color: #FFFBD6;">:</td>
                <td style="background-color: #FFFBD6">
                    <asp:Label ID="lblField" runat="server" Text=""></asp:Label>
                </td>
                <td class="auto-style1" style="background-color: #FFFBD6">
                    <asp:Label ID="lblStatus" runat="server" Text="Status" Font-Bold="True"></asp:Label>
                </td>
                <td style="background-color: #FFFBD6;">:</td>
                <td style="background-color: #FFFBD6">
                    <asp:Label ID="lbIStatus" runat="server" Text=""></asp:Label></td>
                </tr>
                <tr>
                <td class="auto-style1" style="background-color: #FFFBD6">
                    <asp:Label ID="lblTxtGraduation" runat="server" Text="Expected Graduation Year" Font-Bold="True"></asp:Label>
                </td>
                <td style="background-color: #FFFBD6;">:</td>
                <td style="background-color: #FFFBD6">
                    <asp:Label ID="lblGraduation" runat="server" Text=""></asp:Label>
                </td>
                <td class="auto-style1" style="background-color: #FFFBD6">
                    &nbsp;</td>
                <td style="background-color: #FFFBD6;">&nbsp;</td>
                <td style="background-color: #FFFBD6">
                    &nbsp;</td>
                </tr>
            </table>
        <br />
        <table class="nav-justified">
            <tr>
                <td colspan="6" style="color: #FFFFFF; background-color: #990000;">
                    <asp:Label ID="lblTxtSectionD" runat="server" Text="D. FINANCIAL DETAILS" Font-Bold="True"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style1" style="background-color: #FFFBD6" valign="top">
                    <asp:Label ID="lblTxtSources" runat="server" Text="Financial Sources" Font-Bold="True"></asp:Label>
                </td>
                <td style="background-color: #FFFBD6;" valign="top">:</td>
                <td valign="top" style="background-color: #FFFBD6">
                    <asp:Label ID="lblSources" runat="server" Text=""></asp:Label>
                </td>
                <td class="auto-style1" valign="top" style="background-color: #FFFBD6">
                    <asp:Label ID="lblTxtSponsorName" runat="server" Text="Sponsor Name" Font-Bold="True"></asp:Label>
                </td>
                <td style="background-color: #FFFBD6;" valign="top">:</td>
                <td valign="top" style="background-color: #FFFBD6">
                    <asp:Label ID="lblSponsorName" runat="server" Text=""></asp:Label>
                </td>
            </tr>
        </table>
        <br />
        <div class="row">
            <div class="col-sm-1"></div>
            <div class="col-sm-6">
                <table style="width:100%">
                    <tr>
                        <td style="color: #FFFFFF; background-color: #990000;" class="auto-style4">
                            <asp:Label ID="lblTxtNo" runat="server" Text="No." Font-Bold="True"></asp:Label>
                        </td>
                        <td style="color: #FFFFFF; background-color: #990000;">
                            <asp:Label ID="lblTxtExpenses" runat="server" Text="Expenses Type" Font-Bold="True"></asp:Label>
                        </td>
                        <td style="color: #FFFFFF; background-color: #990000;">
                            <asp:Label ID="lblTxtProposed" runat="server" Text="Amount Proposed" Font-Bold="True"></asp:Label>
                        </td>
                        <td style="color: #FFFFFF; background-color: #990000;">
                            <asp:Label ID="lblTxtAllocated" runat="server" Text="Amount Allocated" Font-Bold="True"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style4" style="background-color: #FFFBD6">
                            <asp:Label ID="lblTxt1" runat="server" Text="1"></asp:Label>
                        </td>
                        <td valign="top" style="background-color: #FFFBD6">
                            <asp:Label ID="lblTxtFee" runat="server" Text="Program Fee"></asp:Label>
                        </td>
                        <td class="auto-style1" style="background-color: #FFFBD6">
                            <asp:Label ID="lblFee" runat="server" Text=""></asp:Label>
                        </td>
                        <td style="background-color: #FFFBD6">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style4" style="background-color: #FFFBD6">
                            <asp:Label ID="lblTxt2" runat="server" Text="2"></asp:Label>
                        </td>
                        <td valign="top" style="background-color: #FFFBD6">
                            <asp:Label ID="lblTxtTransportation" runat="server" Text="Transportation"></asp:Label>
                        </td>
                        <td class="auto-style1" style="background-color: #FFFBD6">
                            <asp:Label ID="lblTransportation" runat="server" Text=""></asp:Label>
                        </td>
                        <td style="background-color: #FFFBD6">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style4" style="background-color: #FFFBD6">
                            <asp:Label ID="lblTxt3" runat="server" Text="3"></asp:Label>
                        </td>
                        <td valign="top" style="background-color: #FFFBD6">
                            <asp:Label ID="lblTxtAccommodation" runat="server" Text="Accommodation"></asp:Label>
                        </td>
                        <td class="auto-style1" style="background-color: #FFFBD6">
                            <asp:Label ID="lblAccommodation" runat="server" Text=""></asp:Label>
                        </td>
                        <td style="background-color: #FFFBD6">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style4" style="background-color: #FFFBD6">
                            <asp:Label ID="lblTxt4" runat="server" Text="4"></asp:Label>
                        </td>
                        <td valign="top" style="background-color: #FFFBD6">
                            <asp:Label ID="lblTxtMeal" runat="server" Text="Meal"></asp:Label>
                        </td>
                        <td class="auto-style1" style="background-color: #FFFBD6">
                            <asp:Label ID="lblMeal" runat="server" Text=""></asp:Label>
                        </td>
                        <td style="background-color: #FFFBD6">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style4" style="background-color: #FFFBD6">
                            <asp:Label ID="lblTxt5" runat="server" Text="5"></asp:Label>
                        </td>
                        <td valign="top" style="background-color: #FFFBD6">
                            <asp:Label ID="lblTxtContingency" runat="server" Text="Contingency"></asp:Label>
                        </td>
                        <td class="auto-style1" style="background-color: #FFFBD6">
                            <asp:Label ID="lblContingency" runat="server" Text=""></asp:Label>
                        </td>
                        <td style="background-color: #FFFBD6">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style5" style="background-color: #FFFBD6">
                            &nbsp;</td>
                        <td valign="top" align="right" class="auto-style3" style="background-color: #FFFBD6">
                            <asp:Label ID="lblTxtTotal" runat="server" Text="Total"></asp:Label>
                        </td>
                        <td class="auto-style2" style="background-color: #FFFBD6">
                            <asp:Label ID="lblTotalProposed" runat="server" Text=""></asp:Label>
                        </td>
                        <td class="auto-style3" style="background-color: #FFFBD6">
                            <asp:Label ID="lblTotalAllocated" runat="server" Text=""></asp:Label>
                            </td>
                    </tr>
                    <tr>
                        <td class="auto-style4">
                            &nbsp;</td>
                        <td valign="top">
                            &nbsp;</td>
                        <td class="auto-style1">
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                </table>
            </div>
            <div class="col-sm-5"></div>
        </div>
    </div>
</asp:Content>

