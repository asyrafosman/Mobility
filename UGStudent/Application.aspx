<%@ Page Title="" Language="C#" MasterPageFile="~/UGStudent/UGMasterPage.master" AutoEventWireup="true" CodeFile="Application.aspx.cs" Inherits="UGStudent_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="BodyContent" runat="Server">
    <div id="cssmenu2">
        <ul style="font-size: small; top: 0px; left: 0px;">
            <li class="active" style="text-align: center; top: 2px; left: 1px;"><a href="Application.aspx">New Application</a></li>
            <li></li>
        </ul>
    </div>
    <table style="width: 100%;">
        <tr>
            <td class="style158">
                <table style="width: 100%">
                    <tr>
                        <td style="color: #FFFFFF; background-color: #FFFFFF; font-size: small; height: 18px;">
                            <asp:ScriptManager ID="ScriptManager1" runat="server">
                            </asp:ScriptManager>
                            <ajaxToolkit:TabContainer ID="TabContainer1" runat="server" ActiveTabIndex="5" BackColor="White" BorderColor="White" BorderStyle="None" Height="437px" Width="916px" Style="color: #000000" outline-style="none">
                                <ajaxToolkit:TabPanel runat="server" HeaderText="TabPanel1" ID="TabPanel1">
                                    <HeaderTemplate>
                                        Programme
                                    </HeaderTemplate>
                                    <ContentTemplate>
                                        <table style="width: 100%">
                                            <tr>
                                                <td class="fa-inverse" colspan="5" style="background-color: #990000;"><strong>A. Program Details</strong></td>
                                            </tr>
                                            <tr>
                                                <td style="color: #000000; width: 158px;">Programme Type:</td>
                                                <td style="color: #000000; width: 222px;">&nbsp;</td>
                                                <td style="color: #000000">&nbsp;</td>
                                                <td style="color: #000000; width: 122px;">&nbsp;</td>
                                                <td style="color: #000000">&nbsp;</td>
                                            </tr>
                                            <tr>
                                                <td style="color: #000000; width: 158px;">Start Date:</td>
                                                <td style="color: #000000; width: 222px;">
                                                    <asp:Calendar ID="Calendar1" runat="server" BackColor="#FFFFCC" BorderColor="#FFCC66" BorderWidth="1px" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="#663399" Height="200px" ShowGridLines="True" Width="220px">
                                                        <DayHeaderStyle BackColor="#FFCC66" Font-Bold="True" Height="1px" />
                                                        <NextPrevStyle Font-Size="9pt" ForeColor="#FFFFCC" />
                                                        <OtherMonthDayStyle ForeColor="#CC9966" />
                                                        <SelectedDayStyle BackColor="#CCCCFF" Font-Bold="True" />
                                                        <SelectorStyle BackColor="#FFCC66" />
                                                        <TitleStyle BackColor="#990000" Font-Bold="True" Font-Size="9pt" ForeColor="#FFFFCC" Wrap="True" />
                                                        <TodayDayStyle BackColor="#FFCC66" ForeColor="White" />
                                                    </asp:Calendar>
                                                </td>
                                                <td style="color: #000000">&nbsp;</td>
                                                <td style="color: #000000; width: 122px;">End Date:</td>
                                                <td style="color: #000000">
                                                    <asp:Calendar ID="Calendar2" runat="server" BackColor="#FFFFCC" BorderColor="#FFCC66" BorderWidth="1px" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="#663399" Height="200px" ShowGridLines="True" Width="220px">
                                                        <DayHeaderStyle BackColor="#FFCC66" Font-Bold="True" Height="1px" />
                                                        <NextPrevStyle Font-Size="9pt" ForeColor="#FFFFCC" />
                                                        <OtherMonthDayStyle ForeColor="#CC9966" />
                                                        <SelectedDayStyle BackColor="#CCCCFF" Font-Bold="True" />
                                                        <SelectorStyle BackColor="#FFCC66" />
                                                        <TitleStyle BackColor="#990000" Font-Bold="True" Font-Size="9pt" ForeColor="#FFFFCC" />
                                                        <TodayDayStyle BackColor="#FFCC66" ForeColor="White" />
                                                    </asp:Calendar>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td style="color: #000000; width: 158px;">Country:</td>
                                                <td style="color: #000000; width: 222px;">
                                                    <asp:DropDownList ID="DropDownList1" runat="server">
                                                        <asp:ListItem>Korea</asp:ListItem>
                                                        <asp:ListItem>Indonesia</asp:ListItem>
                                                        <asp:ListItem>Japan</asp:ListItem>
                                                        <asp:ListItem>Spain</asp:ListItem>
                                                    </asp:DropDownList>
                                                </td>
                                                <td style="color: #000000">&nbsp;</td>
                                                <td style="color: #000000; width: 122px;">University Name:</td>
                                                <td style="color: #000000">
                                                    <asp:TextBox ID="TextBox1" runat="server" Width="254px"></asp:TextBox>
                                                </td>
                                            </tr>
                                        </table>
                                        <br />
                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                        <asp:Button ID="Button12" runat="server" Text="Cancel" />
                                        &nbsp;&nbsp;&nbsp;&nbsp;
                                        <asp:Button ID="Button13" runat="server" Text="Save &amp; Continue" />
                                        <span style="color: #000000">&nbsp; Page 1 of 6</span>
                                    </ContentTemplate>
                                </ajaxToolkit:TabPanel>
                                <ajaxToolkit:TabPanel ID="TabPanel2" runat="server" HeaderText="TabPanel2">
                                    <HeaderTemplate>
                                        Personal
                                    </HeaderTemplate>
                                    <ContentTemplate>
                                        <table style="width: 100%">
                                            <tr>
                                                <td class="fa-inverse" colspan="5" style="background-color: #990000;"><strong>B. Personal Details</strong></td>
                                            </tr>
                                            <tr>
                                                <td style="color: #000000; width: 123px; height: 18px; text-align: left;">Date of Birth:</td>
                                                <td style="color: #000000; width: 178px; height: 18px;">&nbsp;</td>
                                                <td style="color: #000000; width: 49px; height: 18px;">&nbsp;</td>
                                                <td style="color: #000000; width: 149px; text-align: left; height: 18px;">Citizenship:</td>
                                                <td style="color: #000000; height: 18px;">&nbsp;</td>
                                            </tr>
                                            <tr>
                                                <td style="color: #000000; width: 123px; text-align: left;">Religion:</td>
                                                <td style="color: #000000; width: 178px;">&nbsp;</td>
                                                <td style="color: #000000; width: 49px;">&nbsp;</td>
                                                <td style="color: #000000; width: 149px; text-align: left;">Email:</td>
                                                <td style="color: #000000">&nbsp;</td>
                                            </tr>
                                            <tr>
                                                <td style="color: #000000; width: 123px; text-align: left;">IC Number:</td>
                                                <td style="color: #000000; width: 178px;">&nbsp;</td>
                                                <td style="color: #000000; width: 49px;">&nbsp;</td>
                                                <td style="color: #000000; width: 149px; text-align: left;">Race:</td>
                                                <td style="color: #000000">&nbsp;</td>
                                            </tr>
                                            <tr>
                                                <td style="color: #000000; width: 123px; text-align: left;">Home Address:</td>
                                                <td style="color: #000000; width: 178px;">&nbsp;</td>
                                                <td style="color: #000000; width: 49px;">&nbsp;</td>
                                                <td style="color: #000000; width: 149px; text-align: left;">Next of Kin:</td>
                                                <td style="color: #000000; width: 123px; text-align: right;">&nbsp;</td>
                                            </tr>
                                            <tr>
                                                <td style="color: #000000; width: 123px;">Passport Number:</td>
                                                <td style="color: #000000; width: 178px;">
                                                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                                                </td>
                                                <td style="color: #000000; width: 49px;">&nbsp;</td>
                                                <td style="color: #000000; width: 149px; text-align: left;">Passport Expired Date:</td>
                                                <td style="color: #000000">&nbsp;</td>
                                            </tr>
                                            <tr>
                                                <td style="color: #000000; width: 123px;">Emergency Contact:</td>
                                                <td style="color: #000000; width: 178px;"></td>
                                                <td style="color: #000000; width: 49px;"></td>
                                                <td style="color: #000000; width: 149px; text-align: left;">Next of Kin Address:</td>
                                                <td style="color: #000000"></td>
                                            </tr>
                                        </table>
                                        <br />
                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                        <asp:Button ID="Button14" runat="server" Text="Cancel" />
                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                        <asp:Button ID="Button15" runat="server" Text="Save &amp; Continue" />
                                        &nbsp;<span style="color: #000000">Page 2 of 6</span>
                                    </ContentTemplate>
                                </ajaxToolkit:TabPanel>
                                <ajaxToolkit:TabPanel ID="TabPanel3" runat="server" HeaderText="TabPanel3">
                                    <HeaderTemplate>
                                        Academic
                                    </HeaderTemplate>
                                    <ContentTemplate>
                                        <table style="width: 100%">
                                            <tr>
                                                <td class="fa-inverse" colspan="5" style="background-color: #990000;"><strong>C. Academic Details</strong></td>
                                            </tr>
                                            <tr>
                                                <td style="color: #000000; width: 221px;">Expected Graduation Year:</td>
                                                <td style="color: #000000; width: 155px;">&nbsp;</td>
                                                <td style="color: #000000; width: 60px;">&nbsp;</td>
                                                <td style="color: #000000; width: 100px;">Status:</td>
                                                <td style="color: #000000">&nbsp;</td>
                                            </tr>
                                            <tr>
                                                <td style="color: #000000;" colspan="5">&nbsp;</td>
                                            </tr>
                                        </table>
                                        <br />
                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                                        <asp:Button ID="Button16" runat="server" Text="Cancel" />
                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                        <asp:Button ID="Button17" runat="server" Text="Save &amp; Continue" />
                                        &nbsp;<span style="color: #000000">Page 3 of 6</span>
                                    </ContentTemplate>
                                </ajaxToolkit:TabPanel>
                                <ajaxToolkit:TabPanel ID="TabPanel4" runat="server" HeaderText="TabPanel4">
                                    <HeaderTemplate>
                                        Financial
                                    </HeaderTemplate>
                                    <ContentTemplate>
                                        <table style="width: 100%">
                                            <tr>
                                                <td class="fa-inverse" style="background-color: #990000;"><strong>D. Financial Details</strong></td>
                                            </tr>
                                            <tr>
                                                <td style="color: #000000">How do you intend to finance your program?</td>
                                            </tr>
                                            <tr>
                                                <td style="color: #000000">
                                                    <asp:CheckBoxList ID="CheckBoxList1" runat="server" RepeatDirection="Horizontal">
                                                        <asp:ListItem>Self-Sponsored</asp:ListItem>
                                                        <asp:ListItem>Sponsor</asp:ListItem>
                                                        <asp:ListItem>UTM</asp:ListItem>
                                                    </asp:CheckBoxList>
                                                </td>
                                            </tr>
                                        </table>
                                        <br />
                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                        <asp:Button ID="Button18" runat="server" Text="Cancel" />
                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                        <asp:Button ID="Button19" runat="server" Text="Save &amp; Continue" />
                                        &nbsp;Page 4 of 6
                                    </ContentTemplate>
                                </ajaxToolkit:TabPanel>
                                <ajaxToolkit:TabPanel ID="TabPanel5" runat="server" HeaderText="TabPanel5">
                                    <HeaderTemplate>
                                        Attachment
                                    </HeaderTemplate>
                                    <ContentTemplate>
                                        <table style="width: 100%">
                                            <tr>
                                                <td class="fa-inverse" colspan="2" style="background-color: #990000;"><strong>E. Attachment</strong></td>
                                            </tr>
                                            <tr>
                                                <td style="color: #000000; width: 156px;">Study Plan:</td>
                                                <td style="color: #000000; margin-left: 40px;">
                                                    <asp:FileUpload ID="FileUpload1" runat="server" />
                                                </td>
                                            </tr>
                                            <tr>
                                                <td style="color: #000000; width: 156px; height: 37px;">Acceptance Letter:</td>
                                                <td style="color: #000000; height: 37px;">
                                                    <asp:FileUpload ID="FileUpload2" runat="server" />
                                                </td>
                                            </tr>
                                            <tr>
                                                <td style="color: #000000; width: 156px; height: 24px;">IC Copy:</td>
                                                <td style="color: #000000; height: 24px;">
                                                    <asp:FileUpload ID="FileUpload3" runat="server" />
                                                </td>
                                            </tr>
                                            <tr>
                                                <td style="color: #000000; width: 156px;">Bank Book Copy:</td>
                                                <td style="color: #000000">
                                                    <asp:FileUpload ID="FileUpload4" runat="server" />
                                                </td>
                                            </tr>
                                        </table>
                                        <br />
                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                        <asp:Button ID="Button20" runat="server" Text="Cancel" />
                                        &nbsp;&nbsp;&nbsp;&nbsp;
                                        <asp:Button ID="Button21" runat="server" Text="Save &amp; Continue" />
                                        &nbsp;Page 5 of 6<br />
                                        &nbsp;
                                    </ContentTemplate>
                                </ajaxToolkit:TabPanel>
                                <ajaxToolkit:TabPanel ID="TabPanel6" runat="server" HeaderText="TabPanel6">
                                    <HeaderTemplate>
                                        Declaration
                                    </HeaderTemplate>
                                    <ContentTemplate>
                                        <div style="text-align: justify">
                                            <table style="width: 100%">
                                                <tr>
                                                    <td class="fa-inverse" style="background-color: #990000"><strong>F. Declaration</strong></td>
                                                </tr>
                                            </table>
                                            <br />
                                            <asp:HyperLink ID="HyperLink1" runat="server">View your application</asp:HyperLink>
                                            <br />
                                            <br />
                                            <asp:CheckBox ID="CheckBox1" runat="server" />
                                            <span id="rtr-s-Paragraph_2_0" style="padding: 0px; margin: 0px; outline: 0px; zoom: 1; -webkit-tap-highlight-color: transparent; color: rgb(0, 0, 0); text-align: center; text-decoration: none; font-family: Calibri, Arial; font-size: 12pt; font-style: normal; font-weight: 700; line-height: 12pt; font-variant: normal; letter-spacing: normal; orphans: auto; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);">I hereby declare that the information provided in this form is true. &nbsp;I acknowledge that Universiti Teknologi Malaysia reserves the right to vary or reserve any decision regarding admission or enrolment made on the basis of the given information.</span><span id="rtr-s-Paragraph_2_1" style="padding: 0px; margin: 0px; outline: 0px; zoom: 1; -webkit-tap-highlight-color: transparent; color: rgb(0, 0, 0); text-align: left; text-decoration: none; font-family: Calibri, Arial; font-size: 12pt; font-style: normal; font-weight: normal; line-height: 12pt; font-variant: normal; letter-spacing: normal; orphans: auto; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);"><span class="Apple-converted-space">&nbsp;<br />
                                                <br />
                                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            <asp:Button ID="Button10" runat="server" Text="Cancel" />
                                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            <asp:Button ID="Button11" runat="server" Text="Submit" />
                                                &nbsp;Page 6 of 6<br />
                                                &nbsp;&nbsp;&nbsp;&nbsp; </span></span>
                                        </div>
                                    </ContentTemplate>
                                </ajaxToolkit:TabPanel>
                            </ajaxToolkit:TabContainer>
                        </td>
                    </tr>
                    <tr>
                        <td style="color: #FFFFFF; background-color: #FFFFFF; font-size: small; height: 19px;"></td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
</asp:Content>