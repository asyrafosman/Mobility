<%@ Page Title="ACAD2016." Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="frmViewReport.aspx.cs" Inherits="UTMIAR_frmViewReport" %>

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
                    <asp:Label ID="lblTxtSecTA" runat="server" Text="A. TYPE OF MOBILITY PROGRAMME" Font-Bold="True"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style1" style="background-color: #FFFBD6">
                    <asp:Label ID="lblTxtProgType" runat="server" Text="Program Type" Font-Bold="True"></asp:Label>
                </td>
                <td style="background-color: #FFFBD6">:</td>
                <td style="background-color: #FFFBD6">
                    <asp:Label ID="lblProgType" runat="server" Text=""></asp:Label>
                </td>
                <td class="auto-style1" style="background-color: #FFFBD6"></td>
                <td style="background-color: #FFFBD6">&nbsp;</td>
                <td class="auto-style1" style="background-color: #FFFBD6"></td>
            </tr>
            <tr>
                <td colspan="6" style="color: #FFFFFF; background-color: #990000;">
                    <asp:Label ID="lblTxtSecTB" runat="server" Text="B. GENERAL INFORMATION" Font-Bold="True"></asp:Label>
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
                    <asp:Label ID="lblTxtMatric" runat="server" Text="Matric No" Font-Bold="True"></asp:Label>
                </td>
                <td style="background-color: #FFFBD6">:</td>
                <td style="background-color: #FFFBD6">
                    <asp:Label ID="lblMatric" runat="server"></asp:Label></td>
            </tr>
            <tr>
                <td class="auto-style1" style="background-color: #FFFBD6">
                    <asp:Label ID="lblTxtFaculty" runat="server" Text="Faculty" Font-Bold="True"></asp:Label>
                </td>
                <td style="background-color: #FFFBD6">:</td>
                <td style="background-color: #FFFBD6">
                    <asp:Label ID="lblFaculty" runat="server" Text=""></asp:Label>
                </td>
                <td class="auto-style1" style="background-color: #FFFBD6">
                    <asp:Label ID="lblTxtProgramName" runat="server" Text="Program Name" Font-Bold="True"></asp:Label>
                </td>
                <td style="background-color: #FFFBD6">:</td>
                <td style="background-color: #FFFBD6">
                    <asp:Label ID="lblProgName" runat="server" Text=""></asp:Label></td>
            </tr>
            <tr>
                <td class="auto-style1" style="background-color: #FFFBD6">
                    <asp:Label ID="lblTxtDestination" runat="server" Text="Destination" Font-Bold="True"></asp:Label>
                </td>
                <td style="background-color: #FFFBD6">:</td>
                <td style="background-color: #FFFBD6">
                    <asp:Label ID="lblDestination" runat="server" Text=""></asp:Label>
                </td>
                <td class="auto-style1" style="background-color: #FFFBD6">
                    <asp:Label ID="lblDateOfBirth" runat="server" Text="Date Of Birth" Font-Bold="True"></asp:Label>
                </td>
                <td style="background-color: #FFFBD6">:</td>
                <td style="background-color: #FFFBD6">
                    <asp:Label ID="lblDoB" runat="server" Text=""></asp:Label></td>
            </tr>
            <tr>
                <td colspan="6" style="color: #FFFFFF; background-color: #990000;">
                    <asp:Label ID="lblTextSecTC" runat="server" Text="C. DESCRIPTION OF PROGRAM" Font-Bold="True"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style1" style="background-color: #FFFBD6">
                    <asp:Label ID="lblTxtDescription" runat="server" Text="Program Description" Font-Bold="True"></asp:Label>
                </td>
                <td style="background-color: #FFFBD6">:</td>
                <td style="background-color: #FFFBD6" colspan="4">
                    <asp:Label ID="lblDescription" runat="server" Text=""></asp:Label>
                </td>
            </tr>
            <tr>
                <td colspan="6" style="color: #FFFFFF; background-color: #990000;">
                    <asp:Label ID="lblTextSecD" runat="server" Text="D. OBJECTIVES OF PROGRAM" Font-Bold="True"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style1" style="background-color: #FFFBD6">
                    <asp:Label ID="lblTxtProgObj" runat="server" Text="Program Objectives" Font-Bold="True"></asp:Label>
                </td>
                <td style="background-color: #FFFBD6">:</td>
                <td style="background-color: #FFFBD6" colspan="3">
                    <asp:Label ID="lblProgObj" runat="server" Text=""></asp:Label>
                </td>

                <td class="auto-style1" style="background-color: #FFFBD6"></td>
            </tr>
            <tr>
                <td colspan="6" style="color: #FFFFFF; background-color: #990000;">
                    <asp:Label ID="lblTextSecE" runat="server" Text="E. PARTICIPANTS" Font-Bold="True"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style1" style="background-color: #FFFBD6">
                    <asp:Label ID="lblTextNoPart" runat="server" Text="No Of Participants:" Font-Bold="True"></asp:Label>
                </td>
                <td style="background-color: #FFFBD6">:</td>
                <td style="background-color: #FFFBD6" colspan="3">
                    <asp:Label ID="lblNoPart" runat="server" Text=""></asp:Label>
                </td>
                <td class="auto-style1" style="background-color: #FFFBD6"></td>
            </tr>
            <tr>
                <td class="auto-style1" style="background-color: #FFFBD6">&nbsp;</td>
                <td style="background-color: #FFFBD6">&nbsp;</td>
                <td style="background-color: #FFFBD6" colspan="4">
                    <table class="nav-justified">
                        <tr>
                            <td style="background-color: #990000; color: #FFFFFF">
                                <asp:Label ID="lblTxtNo1" runat="server" Text="No." Font-Bold="True"></asp:Label>
                            </td>
                            <td style="background-color: #990000; color: #FFFFFF">
                                <asp:Label ID="lblTxtName1" runat="server" Text="Name" Font-Bold="True"></asp:Label>
                            </td>
                            <td style="background-color: #990000; color: #FFFFFF">
                                <asp:Label ID="lblTxtMatric1" runat="server" Text="Matric No" Font-Bold="True"></asp:Label>
                            </td>
                            <td style="background-color: #990000; color: #FFFFFF">
                                <asp:Label ID="lblTxtIC" runat="server" Text="IC" Font-Bold="True"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td colspan="6" style="color: #FFFFFF; background-color: #990000;">
                    <asp:Label ID="lblTxtSecTF" runat="server" Text="F. RESOURCES UTILIZED" Font-Bold="True"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style1" style="background-color: #FFFBD6">
                    <asp:Label ID="lblTxtNoRes" runat="server" Text="No Of Resources:" Font-Bold="True"></asp:Label>
                </td>
                <td style="background-color: #FFFBD6;">:</td>
                <td style="background-color: #FFFBD6">
                    <asp:Label ID="lblNoRes" runat="server" Text=""></asp:Label>
                </td>

                <td class="auto-style1" style="background-color: #FFFBD6"></td>
                <td style="background-color: #FFFBD6">&nbsp;</td>
                <td class="auto-style1" style="background-color: #FFFBD6"></td>
            </tr>
            <tr>
                <td class="auto-style1" style="background-color: #FFFBD6">&nbsp;</td>
                <td style="background-color: #FFFBD6;">&nbsp;</td>
                <td style="background-color: #FFFBD6" colspan="4">
                    <table class="nav-justified">
                        <tr>
                            <td style="background-color: #990000; color: #FFFFFF">
                                <asp:Label ID="lblTxtNo5" runat="server" Font-Bold="True" Text="No."></asp:Label>
                            </td>
                            <td style="background-color: #990000; color: #FFFFFF">
                                <asp:Label ID="lblTxtActivities" runat="server" Text="Activities" Font-Bold="True"></asp:Label>
                            </td>
                            <td style="background-color: #990000; color: #FFFFFF">
                                <asp:Label ID="lblTxtResourceReq" runat="server" Text="Resource Requirements" Font-Bold="True"></asp:Label>
                            </td>
                            <td style="background-color: #990000; color: #FFFFFF">
                                <asp:Label ID="lblTxtRea" runat="server" Text="Reason/ Institutions Involved" Font-Bold="True"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td colspan="6" style="color: #FFFFFF; background-color: #990000;">
                    <asp:Label ID="lblTxtSecG" runat="server" Text="G. PROGRAM IMPLEMENTATION" Font-Bold="True"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style1" style="background-color: #FFFBD6">
                    <asp:Label ID="lblTextProg" runat="server" Text="No Of Program:" Font-Bold="True"></asp:Label>
                </td>
                <td style="background-color: #FFFBD6;">:</td>
                <td style="background-color: #FFFBD6">
                    <asp:Label ID="lblNoProg" runat="server" Text=""></asp:Label>
                </td>

                <td class="auto-style1" style="background-color: #FFFBD6"></td>
                <td style="background-color: #FFFBD6">&nbsp;</td>
                <td class="auto-style1" style="background-color: #FFFBD6"></td>
            </tr>
            <tr>
                <td class="auto-style1" style="background-color: #FFFBD6">&nbsp;</td>
                <td style="background-color: #FFFBD6;">&nbsp;</td>
                <td style="background-color: #FFFBD6" colspan="4">
                    <table class="nav-justified">
                        <tr>
                            <td style="background-color: #990000; color: #FFFFFF">
                                <asp:Label ID="lblTxtNo6" runat="server" Font-Bold="True" Text="No."></asp:Label>
                            </td>
                            <td style="background-color: #990000; color: #FFFFFF">
                                <asp:Label ID="lblTxtAct" runat="server" Text="Activities" Font-Bold="True"></asp:Label>
                            </td>
                            <td style="background-color: #990000; color: #FFFFFF">
                                <asp:Label ID="lblTxtMonth" runat="server" Text="Month" Font-Bold="True"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td colspan="6" style="color: #FFFFFF; background-color: #990000;">
                    <asp:Label ID="lblTxtSecTH" runat="server" Text="H. DESCRIPTION OF OUTPUT" Font-Bold="True"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style1" style="background-color: #FFFBD6" valign="top">
                    <asp:Label ID="lblTxtQuanT" runat="server" Text="Quantitative Output" Font-Bold="True"></asp:Label>
                </td>
                <td style="background-color: #FFFBD6;" valign="top">:</td>
                <td style="background-color: #FFFBD6" colspan="3" valign="top">
                    <asp:Label ID="lblQuantitative" runat="server" Text=""></asp:Label>
                </td>

                <td class="auto-style1" style="background-color: #FFFBD6"></td>
            </tr>
            <tr>
                <td class="auto-style1" style="background-color: #FFFBD6" valign="top">
                    <asp:Label ID="lblTxtQuanL" runat="server" Text="Qualitative Output" Font-Bold="True"></asp:Label>
                </td>
                <td style="background-color: #FFFBD6;" valign="top">:</td>
                <td style="background-color: #FFFBD6" colspan="3" valign="top">
                    <asp:Label ID="lblQualitative" runat="server" Text=""></asp:Label>
                </td>

                <td class="auto-style1" style="background-color: #FFFBD6"></td>
            </tr>
            <tr>
                <td colspan="6" style="color: #FFFFFF; background-color: #990000;">
                    <asp:Label ID="lblTxtIndivTest" runat="server" Text="I. INDIVIDUAL TESTIMONIALS" Font-Bold="True"></asp:Label>
                </td>
            </tr>
            <tr valign="top">
                <td class="auto-style1" style="background-color: #FFFBD6">
                    <asp:Label ID="lblTxtNoI" runat="server" Text="No Of Individual Testimonials:" Font-Bold="True"></asp:Label>
                </td>
                <td style="background-color: #FFFBD6;">:</td>
                <td style="background-color: #FFFBD6" colspan="3">
                    <asp:Label ID="lblNoTestimonials" runat="server" Text=""></asp:Label>
                </td>

                <td class="auto-style1" style="background-color: #FFFBD6"></td>
            </tr>
            <tr valign="top">
                <td class="auto-style1" style="background-color: #FFFBD6">&nbsp;</td>
                <td style="background-color: #FFFBD6;">&nbsp;</td>
                <td style="background-color: #FFFBD6" colspan="4">
                    <table class="nav-justified">
                        <tr>
                            <td style="background-color: #990000; color: #FFFFFF">
                                <asp:Label ID="lblTxtNo7" runat="server" Font-Bold="True" Text="No."></asp:Label>
                            </td>
                            <td style="background-color: #990000; color: #FFFFFF">
                                <asp:Label ID="lblTxtAct0" runat="server" Font-Bold="True" Text="Name"></asp:Label>
                            </td>
                            <td style="background-color: #990000; color: #FFFFFF">
                                <asp:Label ID="lblTxtMonth0" runat="server" Font-Bold="True" Text="Testimonials"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td colspan="6" style="color: #FFFFFF; background-color: #990000;">
                    <asp:Label ID="lblTxtSecTJ" runat="server" Text="J. KEY CONTACT PERSON" Font-Bold="True"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style1" style="background-color: #FFFBD6">
                    <asp:Label ID="lblTxtCont" runat="server" Text="Name" Font-Bold="True"></asp:Label>
                </td>
                <td style="background-color: #FFFBD6;">:</td>
                <td style="background-color: #FFFBD6">
                    <asp:Label ID="lblContPerson" runat="server" Text=""></asp:Label>
                </td>
                <td class="auto-style1" style="background-color: #FFFBD6"></td>
                <td style="background-color: #FFFBD6">&nbsp;</td>
                <td class="auto-style1" style="background-color: #FFFBD6"></td>
            </tr>
            <tr>
                <td class="auto-style1" style="background-color: #FFFBD6">
                    <asp:Label ID="lblTxtContNum" runat="server" Text="Contact Number" Font-Bold="True"></asp:Label>
                </td>
                <td style="background-color: #FFFBD6;">:</td>
                <td style="background-color: #FFFBD6">
                    <asp:Label ID="lblContNum" runat="server" Text=""></asp:Label>
                </td>

                <td class="auto-style1" style="background-color: #FFFBD6"></td>
                <td style="background-color: #FFFBD6">&nbsp;</td>
                <td class="auto-style1" style="background-color: #FFFBD6"></td>
            </tr>
            <tr>
                <td colspan="6" style="color: #FFFFFF; background-color: #990000;">
                    <asp:Label ID="lblTxtSecTK" runat="server" Text="K. APPENDIX" Font-Bold="True"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style1" style="background-color: #FFFBD6">&nbsp;</td>
                <td style="background-color: #FFFBD6;">&nbsp;</td>
                <td style="background-color: #FFFBD6">&nbsp;</td>
                <td class="auto-style1" style="background-color: #FFFBD6"></td>
                <td style="background-color: #FFFBD6">&nbsp;</td>
                <td class="auto-style1" style="background-color: #FFFBD6"></td>
            </tr>
        </table>
    </div>
</asp:Content>