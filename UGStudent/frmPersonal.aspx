<%@ Page Title="" Language="C#" MasterPageFile="~/UGStudent/UGMasterPage.master" AutoEventWireup="true" CodeFile="frmPersonal.aspx.cs" Inherits="UGStudent_Default" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" 
    TagPrefix="ajaxToolkit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="BodyContent" Runat="Server">
    <div id="cssmenu2">
        <ul  style="font-size: small; top: 0px; left: 0px;">
            <li class="active" style="text-align: center; top: 2px; left: 1px;"><a href="frmPersonal.aspx">New Application</a></li>
            <li></li>
        </ul>
    </div>
    <table style="width: 100%;">
        <tr>
            <td class="style158">
                <table style="width: 100%">
                    <tr>
                        <td style="color: #FFFFFF; background-color: #FFFFFF; font-size: small; height: 18px;">
                        <ul class="nav nav-tabs">
                            <li><a href="frmProgramme.aspx">Programme</a></li>
                            <li class="active"><a href="frmPersonal.aspx">Personal</a></li>
                            <li><a href="frmAcademic.aspx">Academic</a></li>
                            <li><a href="frmFinancial.aspx">Financial</a></li>
                            <li><a href="frmAttachment.aspx">Attachment</a></li>
                            <li><a href="frmDeclaration.aspx">Declaration</a></li>
                         </ul>  
                        </td>
                            
                    </tr>
                    <tr>
                        <td style="color: #FFFFFF; background-color: #FFFFFF; font-size: small; height: 19px;">
                            <asp:ScriptManager ID="ScriptManager1" runat="server">
                            </asp:ScriptManager>
                            <table style="width: 100%" __designer:mapid="59f">
                                <tr __designer:mapid="5a0">
                                    <td class="fa-inverse" colspan="5" style="background-color: #990000;" __designer:mapid="5a1"><strong __designer:mapid="5a2">B. Personal Details</strong></td>
                                </tr>
                                <tr __designer:mapid="5a3">
                                    <td style="color: #000000; width: 110px; height: 18px; text-align: left;" __designer:mapid="5a4">Date of Birth:</td>
                                    <td style="color: #000000; width: 178px; height: 18px;" __designer:mapid="5a5">
                                        <asp:Label runat="server" ID="lblDOB"></asp:Label>
                                    </td>
                                    <td style="color: #000000; width: 49px; height: 18px;" __designer:mapid="5a7">&nbsp;</td>
                                    <td style="color: #000000; width: 149px; text-align: left; height: 18px;" __designer:mapid="5a8">Citizenship:</td>
                                    <td style="color: #000000; height: 18px;" __designer:mapid="5a9">
                                        <asp:Label runat="server" ID="lblCitizenship"></asp:Label>
                                    </td>
                                </tr>
                                <tr __designer:mapid="5ab">
                                    <td style="color: #000000; width: 110px; text-align: left;" __designer:mapid="5ac">Religion:</td>
                                    <td style="color: #000000; width: 178px;" __designer:mapid="5ad">
                                        <asp:Label runat="server" ID="lblReligion"></asp:Label>
                                    </td>
                                    <td style="color: #000000; width: 49px;" __designer:mapid="5af">&nbsp;</td>
                                    <td style="color: #000000; width: 149px; text-align: left;" __designer:mapid="5b0">Email:</td>
                                    <td style="color: #000000" __designer:mapid="5b1">
                                        <asp:Label runat="server" ID="lblEmail"></asp:Label>
                                    </td>
                                </tr>
                                <tr __designer:mapid="5b3">
                                    <td style="color: #000000; width: 110px; text-align: left;" __designer:mapid="5b4">IC Number:</td>
                                    <td style="color: #000000; width: 178px;" __designer:mapid="5b5">
                                        <asp:Label runat="server" ID="lblIC"></asp:Label>
                                    </td>
                                    <td style="color: #000000; width: 49px;" __designer:mapid="5b7">&nbsp;</td>
                                    <td style="color: #000000; width: 149px; text-align: left;" __designer:mapid="5b8">Race:</td>
                                    <td style="color: #000000" __designer:mapid="5b9">
                                        <asp:Label runat="server" ID="lblRace"></asp:Label>
                                    </td>
                                </tr>
                                <tr __designer:mapid="5bb">
                                    <td style="color: #000000; width: 110px; text-align: left;" __designer:mapid="5bc">Home Address:</td>
                                    <td style="color: #000000; width: 178px;" __designer:mapid="5bd">
                                        <asp:Label runat="server" ID="lblHomeAddress"></asp:Label>
                                    </td>
                                    <td style="color: #000000; width: 49px;" __designer:mapid="5bf">&nbsp;</td>
                                    <td style="color: #000000; width: 149px; text-align: left;" __designer:mapid="5c0">Next of Kin:</td>
                                    <td style="color: #000000; width: 123px; text-align: left;" __designer:mapid="5c1">
                                        <asp:Label runat="server" ID="lblNextofKin"></asp:Label>
                                    </td>
                                </tr>
                                <tr __designer:mapid="5c3">
                                    <td style="color: #000000; width: 110px;" __designer:mapid="5c4">Passport Number:</td>
                                    <td style="color: #000000; width: 178px;" __designer:mapid="5c5">
                                        <asp:TextBox runat="server" ID="txtPassportNumber"></asp:TextBox>
                                        <ajaxToolkit:CalendarExtender runat="server" BehaviorID="TextBox2_CalendarExtender" TargetControlID="txtPassportNumber" ID="txtPassportNumber_CalendarExtender"></ajaxToolkit:CalendarExtender>
                                        <ajaxToolkit:DropDownExtender runat="server" DynamicServicePath="" BehaviorID="TextBox2_DropDownExtender" TargetControlID="txtPassportNumber" ID="txtPassportNumber_DropDownExtender">
                                        </ajaxToolkit:DropDownExtender>
                                        <asp:RequiredFieldValidator runat="server" ForeColor="Red" ControlToValidate="txtPassportNumber" ErrorMessage="Passport Number" ID="RequiredFieldValidator4">*</asp:RequiredFieldValidator>
                                    </td>
                                    <td style="color: #000000; width: 49px;" __designer:mapid="5ca">&nbsp;</td>
                                    <td style="color: #000000; width: 149px; text-align: left;" __designer:mapid="5cb">Passport Expired Date:</td>
                                    <td style="color: #000000" __designer:mapid="5cc">
                                        <asp:TextBox runat="server" ID="txtPassportExpiredDate"></asp:TextBox>
                                        <ajaxToolkit:CalendarExtender runat="server" BehaviorID="_content_TextBox5_CalendarExtender" TargetControlID="txtPassportExpiredDate" ID="txtPassportExpiredDate_CalendarExtender"></ajaxToolkit:CalendarExtender>
                                        <asp:RequiredFieldValidator runat="server" ForeColor="Red" ControlToValidate="txtPassportExpiredDate" ErrorMessage="Passport Expired Date" ID="RequiredFieldValidator5">*</asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                                <tr __designer:mapid="5d0">
                                    <td style="color: #000000; width: 110px;" __designer:mapid="5d1">Emergency Contact:</td>
                                    <td style="color: #000000; width: 178px;" __designer:mapid="5d2">
                                        <asp:Label runat="server" ID="lblContact"></asp:Label>
                                    </td>
                                    <td style="color: #000000; width: 49px;" __designer:mapid="5d4"></td>
                                    <td style="color: #000000; width: 149px; text-align: left;" __designer:mapid="5d5">Next of Kin Address:</td>
                                    <td style="color: #000000" __designer:mapid="5d6">
                                        <asp:Label runat="server" ID="lblKinAddress"></asp:Label>
                                    </td>
                                </tr>
                                <tr __designer:mapid="5d8">
                                    <td colspan="5" style="color: #000000; " __designer:mapid="5d9">
                                        <asp:ValidationSummary ID="ValidationSummary2" runat="server" ForeColor="Red" HeaderText="Please fill in these details to continue" />
                                    </td>
                                </tr>
                            </table>
                            <br __designer:mapid="5da" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<table style="width: 100%" __designer:mapid="591">
                                            <tr __designer:mapid="592">
                                                <td __designer:mapid="593" style="width: 217px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</td>
                                                <td style="width: 129px" __designer:mapid="594">
                                                    <asp:Button ID="btnCancel2" runat="server" ForeColor="Black" Text="Cancel" PostBackUrl="~/UGStudent/Home.aspx" CssClass="btn-sm" />

                                                </td>
                                                <td style="width: 60px" __designer:mapid="596">
                                                    <asp:Button ID="btnSave2" runat="server" ForeColor="Black" Text="Save &amp; Continue" PostBackUrl="~/UGStudent/frmAcademic.aspx" CssClass="btn-sm" />

                                                </td>
                                                <td __designer:mapid="598"><span style="color: #000000" __designer:mapid="599">&nbsp;Page 2 of 6</span></td>
                                            </tr>
                                        </table>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
</asp:Content>

