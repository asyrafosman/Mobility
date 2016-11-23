<%@ Page Title="ACAD2016." Language="C#" MasterPageFile="~/AcadAdvisor/AAMasterPage.master" AutoEventWireup="true" CodeFile="frmStudMobility.aspx.cs" Inherits="AcadAdvisor_frmStudMobility" %>

<asp:Content ID="Content1" ContentPlaceHolderID="BodyContent" Runat="Server">
    <div id="cssmenu2">
        <ul style="font-size: small">
            <li><a href="Dashboard.aspx">
                <img alt="" class="tab-icon" src="../Styles/images/NavBtn/Active/ic_mail_black_24dp.png">&nbsp;Inbox</a></li>
            <li><a href="ActiveStudent.aspx">
                <img alt="" class="tab-icon" src="../Styles/images/NavBtn/Active/people.png">&nbsp;Active</a></li>
            <li><a href="GradStudent.aspx">
                <img alt="" class="tab-icon" src="../Styles/images/NavBtn/Active/tool.png">&nbsp;Graduated</a></li>
            <li><a href="Subject.aspx">
                <img alt="" class="tab-icon" src="../Styles/images/NavBtn/Active/ic_library_books_black_24dp.png">&nbsp;Subject</a></li>
            <li><a href="Advisor.aspx">
                <img alt="" class="tab-icon" src="../Styles/images/NavBtn/Active/ic_account_circle_black_24dp.png">&nbsp;Academic
                Advisor</a></li>
            <li class="active"><a href="frmStudMobility.aspx"><span class="fa fa-plane"></span>&nbsp;Student Mobility</a></li>
        </ul>
    </div>
    <br />
    <table style="width: 100%">
        <tr>
            <td style="background-color: #990000; color: #FFFFFF; font-weight: bold">No</td>
            <td style="background-color: #990000; color: #FFFFFF; font-weight: bold">Student Name</td>
            <td style="background-color: #990000; color: #FFFFFF; font-weight: bold">Programme Type</td>
            <td style="background-color: #990000; color: #FFFFFF; font-weight: bold">University</td>
            <td style="background-color: #990000; color: #FFFFFF; font-weight: bold">Start Date</td>
            <td style="background-color: #990000; color: #FFFFFF; font-weight: bold">End Date</td>
            <td style="background-color: #990000; color: #FFFFFF; font-weight: bold">&nbsp;</td>
        </tr>
        <tr>
            <td style="background-color: #FFFBD6">1.</td>
            <td style="background-color: #FFFBD6">Mohamad Asyraf bin Osman</td>
            <td style="background-color: #FFFBD6">Student Exchange</td>
            <td style="background-color: #FFFBD6">Seoul National University</td>
            <td style="background-color: #FFFBD6">01-03-2017</td>
            <td style="background-color: #FFFBD6">30-06-2017</td>
            <td style="background-color: #FFFBD6"><asp:LinkButton ID="LinkButton1" runat="server" CommandArgument='<%# Eval("AppId") %>' OnClick="ViewActivityList">
                <span class="fa fa-search"></span></asp:LinkButton></td>
        </tr>
    </table>
    <br />
    <table style="border: 1px dotted #64001C; border-radius: 15px; width: 100%">
        <tr>
            <td colspan="4">
                <strong>Legends:</strong>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;
                <asp:LinkButton ID="LinkButton2" runat="server">
                <span class="fa fa-search"></span>&nbsp;View Activity List</asp:LinkButton>
            </td>
        </tr>
    </table>
</asp:Content>

