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
                    <asp:Label ID="lblTxtSecTH" runat="server" Text="E. DESCRIPTION OF OUTPUT" Font-Bold="True"></asp:Label>
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
                    <asp:Label ID="lblTxtIndivTest" runat="server" Text="F. INDIVIDUAL TESTIMONIALS" Font-Bold="True"></asp:Label>
                </td>
            </tr>
            <tr valign="top">
                <td class="auto-style1" style="background-color: #FFFBD6">
                    <asp:Label ID="lblTxtNoI" runat="server" Text="Testimonials" Font-Bold="True"></asp:Label>
                </td>
                <td style="background-color: #FFFBD6;">:</td>
                <td style="background-color: #FFFBD6" colspan="3">
                    <asp:Label ID="lblTestimonials" runat="server" Text=""></asp:Label>
                </td>

                <td class="auto-style1" style="background-color: #FFFBD6"></td>
            </tr>
            <tr>
                <td colspan="6" style="color: #FFFFFF; background-color: #990000;">
                    <asp:Label ID="lblTxtSecTJ" runat="server" Text="G. KEY CONTACT PERSON" Font-Bold="True"></asp:Label>
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
        </table>
    </div>
</asp:Content>