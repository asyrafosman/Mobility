<%@ Page Title="" Language="C#" MasterPageFile="~/UGStudent/UGMasterPage.master" AutoEventWireup="true" CodeFile="frmFinancial.aspx.cs" Inherits="UGStudent_Default" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" 
    TagPrefix="ajaxToolkit" %>



<asp:Content ID="Content1" ContentPlaceHolderID="BodyContent" Runat="Server">
    <div id="cssmenu2">
        <ul  style="font-size: small; top: 0px; left: 0px;">
            <li class="active" style="text-align: center; top: 2px; left: 1px;"><a href="frmFinancial.aspx">New Application</a></li>
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
                            <li class="active"><a href="frmFinancial.aspx">Financial</a></li>
                            <li><a href="frmAttachment.aspx">Attachment</a></li>
                            <li><a href="frmDeclaration.aspx">Declaration</a></li>
                         </ul>  
                        </td>
                            
                    </tr>
                    <tr>
                        <td style="color: #FFFFFF; background-color: #FFFFFF; font-size: small; height: 19px;">
                            <asp:ScriptManager ID="ScriptManager1" runat="server">
                            </asp:ScriptManager>

                   
                            <table style="width: 100%; height: 55px;" __designer:mapid="61a">
                                <tr __designer:mapid="61b">
                                    <td class="fa-inverse" style="background-color: #990000;" __designer:mapid="61c"><strong __designer:mapid="61d">D. Financial Details</strong></td>
                                </tr>
                                <tr __designer:mapid="61e">
                                    <td style="color: #000000" __designer:mapid="61f">How do you intend to finance your program?</td>
                                </tr>
                                <tr __designer:mapid="620">
                                    <td style="color: #000000; height: 20px;" __designer:mapid="621">
                                        
                                        <asp:CheckBox ID="chckSelf" runat="server" Text="Self-sponsored"  />
&nbsp;
                                        <asp:CheckBox ID="chckSponsor" runat="server" AutoPostBack="True" Text="Sponsor" OnCheckedChanged="chckSponsor_CheckedChanged" />
&nbsp;
                                        <asp:CheckBox ID="chckUTM" runat="server" AutoPostBack="True" Text="UTM" OnCheckedChanged="chckUTM_CheckedChanged" />
                                            
                                        </td>
                                </tr>
                            </table>
                            <br __designer:mapid="627" />

                                                    <asp:Panel ID="Panel1" runat="server" Visible="False" Width="305px">
                                                        <table style="width: 41%">
                                                            <tr>
                                                                <td style="background-color: #990000; height: 24px;" class="fa-inverse" colspan="2"><strong>Sponsor Details</strong></td>
                                                            </tr>
                                                            <tr>
                                                                <td style="color: #000000; width: 122px">Sponsor Name:</td>
                                                                <td>
                                                                    <asp:TextBox runat="server" ID="TextBox1"></asp:TextBox>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td style="color: #000000; width: 122px">Document:</td>
                                                                <td>
                                                                    <asp:FileUpload runat="server" ID="FileUpload1">
                                                                    </asp:FileUpload>
                                                                </td>
                                                            </tr>
                                                        </table>
                                                        <br />
                            </asp:Panel>
                            <asp:Panel ID="Panel2" runat="server" Visible="False" Width="304px">
                                <table style="width: 41%; height: 232px">
                                    <tr>
                                        <td style="background-color: #990000;"><strong>No</strong></td>
                                        <td style="background-color: #990000;"><strong>Expenses Type</strong></td>
                                        <td class="fa-inverse" style="background-color: #990000; text-align: left; width: 154px;"><strong>Amount(RM)</strong></td>
                                    </tr>
                                    <tr>
                                        <td style="color: #000000">1</td>
                                        <td style="color: #000000">Program fee</td>
                                        <td style="color: #000000; width: 154px;">
                                            <asp:TextBox runat="server" ID="txtProgramFee" onblur="Additional()"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="color: #000000">2</td>
                                        <td style="color: #000000">Transportation</td>
                                        <td style="color: #000000; width: 154px;">
                                            <asp:TextBox runat="server" ID="txtTransportation" onblur="Additional()"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="color: #000000">3</td>
                                        <td style="color: #000000">Accommodation</td>
                                        <td style="color: #000000; width: 154px;">
                                            <asp:TextBox runat="server" ID="txtAccommodation" onblur="Additional()"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="color: #000000; height: 27px;">4</td>
                                        <td style="color: #000000; height: 27px;">Meal</td>
                                        <td style="color: #000000; height: 27px; width: 154px;">
                                            <asp:TextBox runat="server" ID="txtMeal" onblur="Additional()"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="color: #000000">5</td>
                                        <td style="color: #000000">Contingency</td>
                                        <td style="color: #000000; width: 154px;">
                                            <asp:TextBox runat="server" ID="txtContingency" onblur="Additional()"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="color: #000000">&nbsp;</td>
                                        <td style="color: #000000; text-align: right;">Total</td>
                                        <td style="color: #000000; width: 154px;">
                                            <script>

                                            function Additional() {
                                             var text1 = document.getElementById('<%= txtProgramFee.ClientID %>');
                                             var text2 = document.getElementById('<%= txtTransportation.ClientID %>');
                                             var text3 = document.getElementById('<%= txtAccommodation.ClientID %>');
                                             var text4 = document.getElementById('<%= txtMeal.ClientID %>');
                                             var text5 = document.getElementById('<%= txtContingency.ClientID %>');

                                                var a = parseInt(text1.value);
                                               var b = parseInt(text2.value);
                                              var c = parseInt(text3.value);
                                              var d = parseInt(text4.value);
                                             var e = parseInt(text5.value);
                                                                            document.getElementById('<%= txtTotal.ClientID %>').value = a+b+c+d+e;
                                                                    }
                                                                    </script>
                                            <asp:TextBox runat="server" ID="txtTotal" onfocus="Additional()"></asp:TextBox>
                                        </td>
                                    </tr>
                                </table>
                            </asp:Panel>
                                    <br />
                            <br __designer:mapid="628" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <br __designer:mapid="629" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<table style="width: 100%" __designer:mapid="591">
                                            <tr __designer:mapid="592">
                                                <td __designer:mapid="593" style="width: 217px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</td>
                                                <td style="width: 129px" __designer:mapid="594">
                                                    <asp:Button ID="btnCancel4" runat="server" ForeColor="Black" Text="Cancel" PostBackUrl="~/UGStudent/Home.aspx" CausesValidation="False" CssClass="btn-sm" />

                                                </td>
                                                <td style="width: 60px" __designer:mapid="596">
                                                    <asp:Button ID="btnSave4" runat="server" ForeColor="Black" Text="Save &amp; Continue" PostBackUrl="~/UGStudent/frmAttachment.aspx" CssClass="btn-sm" />

                                                </td>
                                                <td __designer:mapid="598"><span style="color: #000000" __designer:mapid="599">&nbsp;Page 4 of 6</span></td>
                                            </tr>
                                        </table>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
</asp:Content>

