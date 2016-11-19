<%@ Page Title="" Language="C#" MasterPageFile="~/UGStudent/UGMasterPage.master" AutoEventWireup="true" CodeFile="frmAttachment.aspx.cs" Inherits="UGStudent_Default" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" 
    TagPrefix="ajaxToolkit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="BodyContent" Runat="Server">
    <div id="cssmenu2">
        <ul  style="font-size: small; top: 0px; left: 0px;">
            <li class="active" style="text-align: center; top: 2px; left: 1px;"><a href="frmAttachment.aspx">New Application</a></li>
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
                            <li><a href="frmPersonal.aspx">Personal</a></li>
                            <li><a href="frmAcademic.aspx">Academic</a></li>
                            <li><a href="frmFinancial.aspx">Financial</a></li>
                            <li class="active"><a href="frmAttachment.aspx">Attachment</a></li>
                            <li><a href="frmDeclaration.aspx">Declaration</a></li>
                         </ul>  
                        </td>
                            
                    </tr>
                    <tr>
                        <td style="color: #FFFFFF; background-color: #FFFFFF; font-size: small; height: 19px;">
                            <asp:ScriptManager ID="ScriptManager1" runat="server">
                            </asp:ScriptManager>
                            <table style="width: 100%" __designer:mapid="637">
                                <tr __designer:mapid="638">
                                    <td class="fa-inverse" colspan="2" style="background-color: #990000;" __designer:mapid="639"><strong __designer:mapid="63a">E. Attachment</strong></td>
                                </tr>
                                <tr __designer:mapid="63b">
                                    <td style="color: #000000; width: 156px;" __designer:mapid="63c">Study Plan:&nbsp;&nbsp;
                                        <asp:RequiredFieldValidator runat="server" ForeColor="Red" ControlToValidate="upldStudyPlan" ErrorMessage="Study Plan" ID="RequiredFieldValidator6">*</asp:RequiredFieldValidator>
                                    </td>
                                    <td style="color: #000000; margin-left: 40px;" __designer:mapid="63e">
                                        <asp:FileUpload runat="server" ID="upldStudyPlan"></asp:FileUpload>
                                    </td>
                                </tr>
                                <tr __designer:mapid="640">
                                    <td style="color: #000000; width: 156px; height: 37px;" __designer:mapid="641">Acceptance Letter:&nbsp;
                                        <asp:RequiredFieldValidator runat="server" ForeColor="Red" ControlToValidate="upldAcceptanceLetter" ErrorMessage="Acceptance Letter" ID="RequiredFieldValidator7">*</asp:RequiredFieldValidator>
                                    </td>
                                    <td style="color: #000000; height: 37px;" __designer:mapid="643">
                                        <asp:FileUpload runat="server" ID="upldAcceptanceLetter"></asp:FileUpload>
                                    </td>
                                </tr>
                                <tr __designer:mapid="645">
                                    <td style="color: #000000; width: 156px; height: 27px;" __designer:mapid="646">IC Copy:&nbsp;
                                        <asp:RequiredFieldValidator runat="server" ForeColor="Red" ControlToValidate="upldICCopy" ErrorMessage="IC copy" ID="RequiredFieldValidator8">*</asp:RequiredFieldValidator>
                                    </td>
                                    <td style="color: #000000; height: 27px;" __designer:mapid="648">
                                        <asp:FileUpload runat="server" ID="upldICCopy"></asp:FileUpload>
                                    </td>
                                </tr>
                                <tr __designer:mapid="64a">
                                    <td style="color: #000000; width: 156px; height: 29px;" __designer:mapid="64b">Bank Book Copy:&nbsp;
                                        <asp:RequiredFieldValidator runat="server" ForeColor="Red" ControlToValidate="upldBankBookCopy" ErrorMessage="Bank Book Copy" ID="RequiredFieldValidator9">*</asp:RequiredFieldValidator>
                                    </td>
                                    <td style="color: #000000; height: 29px;" __designer:mapid="64d">
                                        <asp:FileUpload runat="server" ID="upldBankBookCopy"></asp:FileUpload>
                                    </td>
                                </tr>
                                <tr __designer:mapid="64f">
                                    <td colspan="2" style="color: #000000; " __designer:mapid="650">
                                        <asp:ValidationSummary ID="ValidationSummary3" runat="server" ForeColor="Red" HeaderText="Please upload required files to continue" />
                                    </td>
                                </tr>
                            </table>
                            <br __designer:mapid="651" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<table style="width: 100%" __designer:mapid="591">
                                            <tr __designer:mapid="592">
                                                <td __designer:mapid="593" style="width: 217px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</td>
                                                <td style="width: 129px" __designer:mapid="594">
                                                    <asp:Button ID="btnCancel5" runat="server" ForeColor="Black" Text="Cancel" PostBackUrl="~/UGStudent/frmDeclaration.aspx" CssClass="btn-sm" />

                                                </td>
                                                <td style="width: 60px" __designer:mapid="596">
                                                    <asp:Button ID="btnSave5" runat="server" ForeColor="Black" Text="Save &amp; Continue" PostBackUrl="~/UGStudent/frmDeclaration.aspx" CssClass="btn-sm" />

                                                </td>
                                                <td __designer:mapid="598"><span style="color: #000000" __designer:mapid="599">&nbsp;Page 5 of 6</span></td>
                                            </tr>
                                        </table>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
</asp:Content>

