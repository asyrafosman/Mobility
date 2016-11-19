<%@ Page Title="" Language="C#" MasterPageFile="~/UGStudent/UGMasterPage.master" AutoEventWireup="true" CodeFile="frmAcademic.aspx.cs" Inherits="UGStudent_Default" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" 
    TagPrefix="ajaxToolkit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="BodyContent" Runat="Server">
    <div id="cssmenu2">
        <ul  style="font-size: small; top: 0px; left: 0px;">
            <li class="active" style="text-align: center; top: 2px; left: 1px;"><a href="frmAcademic.aspx">New Application</a></li>
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
                            <li class="active"><a href="frmAcademic.aspx">Academic</a></li>
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


                            <table style="width: 100%" __designer:mapid="5e7">
                                <tr __designer:mapid="5e8">
                                    <td class="fa-inverse" colspan="5" style="background-color: #990000;" __designer:mapid="5e9"><strong __designer:mapid="5ea">C. Academic Details</strong></td>
                                </tr>
                                <tr __designer:mapid="5eb">
                                    <td style="color: #000000; width: 221px; height: 24px;" __designer:mapid="5ec">Expected Graduation Year:</td>
                                    <td style="color: #000000; width: 155px; height: 24px;" __designer:mapid="5ed">
                                    </td>
                                    <td style="color: #000000; width: 60px; height: 24px;" __designer:mapid="5ef"></td>
                                    <td style="color: #000000; width: 100px; height: 24px;" __designer:mapid="5f0">Status:</td>
                                    <td style="color: #000000; height: 24px;" __designer:mapid="5f1">
                                        <asp:Label runat="server" Text="Label" ID="Label14"></asp:Label>
                                    </td>
                                </tr>
                                <tr __designer:mapid="5f3">
                                    <td style="color: #000000; " colspan="5" __designer:mapid="5f4">&nbsp;</td>
                                </tr>
                            </table>
                            <table style="width: 100%" __designer:mapid="5f5">
                                <tr style="color: #FFFFFF; background-color: #990000" __designer:mapid="5f6">
                                    <td style="width: 172px; text-align: center; border-right-style: inset; font-weight: 700;" __designer:mapid="5f7">UTM</td>
                                    <td style="text-align: center; font-weight: 700" __designer:mapid="5f8">HOST UNIVERISTY</td>
                                </tr>
                            </table>
                            <br __designer:mapid="5f9" />
                            <table style="width: 100%" __designer:mapid="5fa">
                                <tr __designer:mapid="5fb">
                                    <td style="height: 23px; width: 90px; color: #000000;" __designer:mapid="5fc">Subject Code</td>
                                    <td style="width: 86px; height: 23px;" __designer:mapid="5fd">
                                        <asp:TextBox runat="server" Width="71px" ID="txtUTMSubjectCode"></asp:TextBox>
                                    </td>
                                    <td style="height: 23px; width: 109px; color: #000000;" __designer:mapid="5ff">Subject Code</td>
                                    <td style="width: 76px; height: 23px" __designer:mapid="600">
                                        <asp:TextBox runat="server" Width="67px" ID="txtHostSubjectCode"></asp:TextBox>
                                    </td>
                                    <td style="height: 23px; width: 108px; color: #000000;" __designer:mapid="602">Subject name</td>
                                    <td style="width: 250px; height: 23px" __designer:mapid="603">
                                        <asp:TextBox runat="server" Width="235px" ID="txtHostSubjectName"></asp:TextBox>
                                    </td>
                                    <td style="height: 23px; width: 54px; color: #000000;" __designer:mapid="605">Credit</td>
                                    <td style="height: 23px; width: 49px" __designer:mapid="606">
                                        <asp:TextBox runat="server" Width="25px" ID="txtHostCredit"></asp:TextBox>
                                    </td>
                                    <td style="height: 23px" __designer:mapid="608">
                                        <asp:Button runat="server" Text="Add" ID="btnAdd" ForeColor="Black"  ></asp:Button>
                                        
                                    </td>
                                </tr>
                            </table>



                            <br __designer:mapid="60a" />
                            <br __designer:mapid="60b" />
                            <br __designer:mapid="60c" />
                            <br __designer:mapid="60d" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<table style="width: 100%" __designer:mapid="591">
                                            <tr __designer:mapid="592">
                                                <td __designer:mapid="593" style="width: 217px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</td>
                                                <td style="width: 129px" __designer:mapid="594">
                                                    <asp:Button ID="btnCancel3" runat="server" ForeColor="Black" Text="Cancel" PostBackUrl="~/UGStudent/frmFinancial.aspx" CssClass="btn-sm" />

                                                </td>
                                                <td style="width: 60px" __designer:mapid="596">
                                                    <asp:Button ID="btnSave3" runat="server" ForeColor="Black" Text="Save &amp; Continue" PostBackUrl="~/UGStudent/frmFinancial.aspx" CssClass="btn-sm" />

                                                </td>
                                                <td __designer:mapid="598"><span style="color: #000000" __designer:mapid="599">&nbsp;Page 3 of 6</span></td>
                                            </tr>
                                        </table>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
</asp:Content>

