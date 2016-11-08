<%@ Page Title="" Language="C#" MasterPageFile="~/UGStudent/UGMasterPage.master" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="UGStudent_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="BodyContent" Runat="Server">
    <div id="cssmenu2">
        <ul style="font-size: small">
            <li class="active"><a href="Home.aspx"><span class="fa fa-home"></span> Home</a></li>
        </ul>
    </div>
    <table style="width: 100%;">
        <tr>
            <td class="style158">
                <table style="width: 100%">
                    <tr>
                        <td style="width: 148px; color: #FFFFFF; background-color: #CC0066; text-align: center;"><br />
                        </td>
                        <td style="width: 318px; background-color: #CC0066; color: #FFFFFF; text-align: center;"><strong>Research Internship</strong></td>
                        <td style="width: 28px; background-color: #FFFFFF; color: #FFFFFF; text-align: center;">&nbsp;</td>
                        <td style="color: #FFFFFF; background-color: #CC0066; font-size: x-large; font-weight: 700; width: 154px; text-align: center;">&nbsp;</td>
                        <td style="background-color: #CC0066; color: #FFFFFF; width: 293px; text-align: center;"><strong>Student Exchage</strong></td>
                    </tr>
                    <tr>
                        <td style="width: 148px; background-color: #CC0066; text-align: center; color: #000000;">
                            <span style="font-size: x-large" class="fa-inverse"><strong>RI</strong></span><br />
                            <asp:Button ID="Button1" runat="server" Text="Apply" PostBackUrl="~/UGStudent/RI.aspx" />
                        </td>
                        <td style="width: 318px; text-align: center"><span style="color: rgb(85, 85, 85); font-family: Arial, Helvetica, Tahoma, sans-serif; font-size: 13px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); display: inline !important; float: none;">Research Internship is a program which will allow you to go for a joint research study or internship under the supervision of an academic staff at institutions or industries abroad.</span></td>
                        <td style="width: 28px; text-align: center">&nbsp;</td>
                        <td style="background-color: #CC0066; width: 154px; text-align: center;">
                            <span class="fa-inverse" style="font-size: x-large"><strong>SE</strong></span><br />
                            <asp:Button ID="Button2" runat="server" Text="Apply" PostBackUrl="~/UGStudent/SE.aspx" />
                        </td>
                        <td style="width: 293px; text-align: center"><span style="color: rgb(85, 85, 85); font-family: Arial, Helvetica, Tahoma, sans-serif; font-size: 13px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); display: inline !important; float: none;">Study Abroad/ Student Exchange program is a program which will allow you to spend one or two semesters at universities abroad and take courses in a regular semester with credit transfer opportunity. Students are encouraged to study at universities partners to all over the world.</span></td>
                    </tr>
                    <tr>
                        <td style="width: 148px; text-align: center">&nbsp;</td>
                        <td style="width: 318px; text-align: center">&nbsp;</td>
                        <td style="width: 28px; text-align: center">&nbsp;</td>
                        <td style="width: 154px; text-align: center">&nbsp;</td>
                        <td style="width: 293px; text-align: center">&nbsp;</td>
                    </tr>
                    <tr>
                        <td style="width: 148px; font-size: x-large; background-color: #CC0066; color: #FFFFFF; font-weight: 700; text-align: center;">&nbsp;</td>
                        <td style="width: 318px; background-color: #CC0066; color: #FFFFFF; font-weight: 700; text-align: center;">International Invitation Program</td>
                        <td style="width: 28px; text-align: center">&nbsp;</td>
                        <td style="width: 154px; background-color: #CC0066; color: #FFFFFF; font-weight: 700; font-size: x-large; text-align: center;">&nbsp;</td>
                        <td style="width: 293px; background-color: #CC0066; color: #FFFFFF; font-weight: 700; text-align: center;">Summer S<strong>c</strong>hool</td>
                    </tr>
                    <tr>
                        <td style="width: 148px; background-color: #CC0066; height: 41px; text-align: center;">
                            <span class="fa-inverse" style="font-size: x-large"><strong>IIP</strong></span><br />
                            <asp:Button ID="Button3" runat="server" Text="Apply" PostBackUrl="~/UGStudent/IIP.aspx" />
                        </td>
                        <td style="width: 318px; height: 41px; text-align: center"><span style="color: rgb(85, 85, 85); font-family: Arial, Helvetica, Tahoma, sans-serif; font-size: small; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); display: inline !important; float: none;">IIP is a program which allows students to participate in a program offered by institution/ organization/ society with the theme<span class="Apple-converted-space">&nbsp;</span></span></td>
                        <td style="width: 28px; height: 41px"></td>
                        <td style="width: 154px; background-color: #CC0066; height: 41px; text-align: center;">
                            <span class="fa-inverse" style="font-size: x-large"><strong>SS</strong></span><br />
                            <asp:Button ID="Button4" runat="server" Text="Apply" PostBackUrl="~/UGStudent/SS.aspx" />
                        </td>
                        <td style="width: 293px; height: 41px; text-align: center"><span style="color: rgb(85, 85, 85); font-family: Arial, Helvetica, Tahoma, sans-serif; font-size: small; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); display: inline !important; float: none;">Summer school is a program which designed to provide educational opportunities in 4 to 8 weeks during summer holiday. It has a wide-application related to the environment, local community, heritage and tradition. The courses incorporate theory and practice, blended with the local culture and social activities.</span></td>
                    </tr>
                    <tr>
                        <td style="width: 148px; text-align: center; height: 19px"></td>
                        <td style="width: 318px; text-align: center; height: 19px"></td>
                        <td style="width: 28px; text-align: center; height: 19px"></td>
                        <td style="width: 154px; text-align: center; height: 19px"></td>
                        <td style="width: 293px; text-align: center; height: 19px"></td>
                    </tr>
                    <tr>
                        <td style="width: 148px; font-size: x-large; font-weight: 700; color: #FFFFFF; background-color: #CC0066; text-align: center;">&nbsp;</td>
                        <td style="width: 318px; font-weight: 700; color: #FFFFFF; background-color: #CC0066; text-align: center;">Global Outreach Program</td>
                        <td style="width: 28px; text-align: center">&nbsp;</td>
                        <td style="width: 154px; text-align: center">&nbsp;</td>
                        <td style="width: 293px; text-align: center">&nbsp;</td>
                    </tr>
                    <tr>
                        <td style="width: 148px; background-color: #CC0066; text-align: center; height: 118px;">
                            <span class="fa-inverse" style="font-size: x-large"><strong>GOP</strong></span><br />
                            <asp:Button ID="Button5" runat="server" Text="Apply" PostBackUrl="~/UGStudent/GOP.aspx" />
                        </td>
                        <td style="width: 318px; text-align: center; height: 118px">GOP is a 7 to 144 days academic based program to experience various cultures in other countries. It includes immersion elements such as research &amp; academic activities, social responsibility, and cross cultural activities</td>
                        <td style="width: 28px; text-align: center; height: 118px"></td>
                        <td style="width: 154px; text-align: center; height: 118px"></td>
                        <td style="width: 293px; text-align: center; height: 118px"></td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
</asp:Content>

