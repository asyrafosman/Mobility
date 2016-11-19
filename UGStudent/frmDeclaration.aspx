<%@ Page Title="" Language="C#" MasterPageFile="~/UGStudent/UGMasterPage.master" AutoEventWireup="true" CodeFile="frmDeclaration.aspx.cs" Inherits="UGStudent_Default" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" 
    TagPrefix="ajaxToolkit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="BodyContent" Runat="Server">
    <div id="cssmenu2">
        <ul  style="font-size: small; top: 0px; left: 0px;">
            <li class="active" style="text-align: center; top: 2px; left: 1px;"><a href="frmDeclaration.aspx">New Application</a></li>
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
                            <li><a href="frmAttachment.aspx">Attachment</a></li>
                            <li class="active"><a href="frmDeclaration.aspx">Declaration</a></li>
                         </ul>  
                        </td>
                            
                    </tr>
                    <tr>
                        <td style="color: #FFFFFF; background-color: #FFFFFF; font-size: small; height: 19px;">
                            <asp:ScriptManager ID="ScriptManager1" runat="server">
                            </asp:ScriptManager>
                            <table style="width: 100%" __designer:mapid="660">
                                <tr __designer:mapid="661">
                                    <td class="fa-inverse" style="background-color: #990000" __designer:mapid="662"><strong __designer:mapid="663">F. Declaration</strong></td>
                                </tr>
                            </table>
                            <br __designer:mapid="664" />
                            <asp:HyperLink runat="server" ID="HyperLink1">View your application</asp:HyperLink>
                            <br __designer:mapid="666" />
                            <br __designer:mapid="667" />
                            <asp:CheckBox runat="server" ID="chckDeclaration" AutoPostBack="True" OnCheckedChanged="chckDeclaration_CheckedChanged"></asp:CheckBox>
                            <span id="rtr-s-Paragraph_2_0" style="padding: 0px; margin: 0px; outline: 0px; zoom: 1; -webkit-tap-highlight-color: transparent; color: rgb(0, 0, 0); text-align: center; text-decoration: none; font-family: Calibri, Arial; font-size: 12pt; font-style: normal; font-weight: 700; line-height: 12pt; font-variant: normal; letter-spacing: normal; orphans: auto; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);" __designer:mapid="669">I hereby declare that the information provided in this form is true. &nbsp;I acknowledge that Universiti Teknologi Malaysia reserves the right to vary or reserve any decision regarding admission or enrolment made on the basis of the given information.</span><span id="rtr-s-Paragraph_2_1" style="padding: 0px; margin: 0px; outline: 0px; zoom: 1; -webkit-tap-highlight-color: transparent; color: rgb(0, 0, 0); text-align: left; text-decoration: none; font-family: Calibri, Arial; font-size: 12pt; font-style: normal; font-weight: normal; line-height: 12pt; font-variant: normal; letter-spacing: normal; orphans: auto; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);" __designer:mapid="66a"><span class="Apple-converted-space" __designer:mapid="66b">&nbsp;<br __designer:mapid="66c" />
                            <br __designer:mapid="66d" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<table style="width: 100%" __designer:mapid="591">
                                            <tr __designer:mapid="592">
                                                <td __designer:mapid="593" style="width: 217px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</td>
                                                <td style="width: 129px" __designer:mapid="594">
                                                    <asp:Button ID="btnCancel6" runat="server" ForeColor="Black" Text="Cancel" PostBackUrl="~/UGStudent/Home.aspx" CssClass="btn-sm" />

                                                </td>
                                                <td style="width: 60px" __designer:mapid="596">
                                                    <asp:Button ID="btnSubmit" runat="server" ForeColor="Black" Text="Submit" PostBackUrl="~/UGStudent/Homeafter.aspx" CssClass="btn-sm" Visible="False" />

                                                    <ajaxToolkit:ConfirmButtonExtender ID="btnSubmit_ConfirmButtonExtender" runat="server" BehaviorID="btnSubmit_ConfirmButtonExtender" ConfirmText="Are you sure want to submit?" TargetControlID="btnSubmit" />

                                                </td>
                                                <td __designer:mapid="598"><span style="color: #000000" __designer:mapid="599">&nbsp;Page 6 of 6</span></td>
                                            </tr>
                                        </table>
                            </span></span></td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
</asp:Content>

