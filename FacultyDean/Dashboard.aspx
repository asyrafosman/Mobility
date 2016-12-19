<%@ Page Title="ACAD2016." Language="C#" MasterPageFile="~/FacultyDean/DeanMasterPage.master" AutoEventWireup="true" CodeFile="Dashboard.aspx.cs" Inherits="FacultyDean_Dashboard" %>

<asp:Content ID="Content1" ContentPlaceHolderID="BodyContent" Runat="Server">
    <div id="cssmenu2">
        <ul style="font-size: small">
            <li class="active"><a>
                <img alt="" class="tab-icon" src="../Styles/images/NavBtn/Non Active/ic_mail_white_24dp.png">&nbsp;Inbox</a></li>
            <li><a href="ActiveStudent.aspx">
                <img alt="" class="tab-icon" src="../Styles/images/NavBtn/Active/people.png">&nbsp;Active</a></li>
            <li><a href="GradStudent.aspx">
                <img alt="" class="tab-icon" src="../Styles/images/NavBtn/Active/tool.png">&nbsp;Graduated</a></li>
            <li><a href="Subject.aspx">
                <img alt="" class="tab-icon" src="../Styles/images/NavBtn/Active/ic_library_books_black_24dp.png">&nbsp;Subject</a></li>
            <li><a href="Advisor.aspx">
                <img alt="" class="tab-icon" src="../Styles/images/NavBtn/Active/ic_account_circle_black_24dp.png">&nbsp;Academic
                Advisor</a></li>
            <li><a href="frmStudMobility.aspx"><span class="fa fa-plane fa-lg"></span>&nbsp;Student Mobility</a></li>
        </ul>
    </div>
    <br />
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MOBILITY.XE %>" SelectCommand="SELECT * FROM &quot;INBOX_DEAN&quot;" ProviderName="<%$ ConnectionStrings:MOBILITY.XE.ProviderName %>">
    </asp:SqlDataSource>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" AllowPaging="True" AllowSorting="True" Style="width: 100%" EmptyDataText="No record found">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:TemplateField HeaderText="No.">
                <ItemTemplate>
                    <%#Container.DataItemIndex +1 %>.
                </ItemTemplate>
                <HeaderStyle HorizontalAlign="Center" Width="5%" />
                <ItemStyle HorizontalAlign="Center" VerticalAlign="Top" Width="3%" />
            </asp:TemplateField>
            <%--<asp:BoundField DataField="APP_APPID" HeaderText="APP_APPID" SortExpression="APP_APPID" />--%>
            <%--<asp:BoundField DataField="APP_MATRIC" HeaderText="APP_MATRIC" SortExpression="APP_MATRIC" />--%>
            <%--<asp:BoundField DataField="APP_STATUS" HeaderText="APP_STATUS" SortExpression="APP_STATUS" />--%>
            <%--<asp:BoundField DataField="STUD_MATRIC" HeaderText="STUD_MATRIC" SortExpression="STUD_MATRIC" />--%>
            <asp:BoundField DataField="STUD_NAME" HeaderText="Student Name" SortExpression="STUD_NAME" />
            <%--<asp:BoundField DataField="PROG_PROGID" HeaderText="PROG_PROGID" SortExpression="PROG_PROGID" />--%>
            <%--<asp:BoundField DataField="PROG_APPID" HeaderText="PROG_APPID" SortExpression="PROG_APPID" />--%>
            <asp:BoundField DataField="PROG_TYPES" HeaderText="Programme Type" SortExpression="PROG_TYPES" />
            <asp:BoundField DataField="PROG_UNIVERSITY" HeaderText="University" SortExpression="PROG_UNIVERSITY" />
            <asp:BoundField DataField="PROG_STARTDATE" HeaderText="Start Date" SortExpression="PROG_STARTDATE" DataFormatString="{0:dd-MMM-yyyy}" />
            <asp:BoundField DataField="PROG_ENDDATE" HeaderText="End Date" SortExpression="PROG_ENDDATE" DataFormatString="{0:dd-MMM-yyyy}" />
            <asp:TemplateField HeaderText="">
                <HeaderStyle Width="3%" />
             <ItemStyle Width="3%" />
                <ItemTemplate>
                    <asp:LinkButton ID="LinkButton1" runat="server" CommandArgument='<%# Eval("APP_APPID") %>'
                        OnClick="ViewStudApp">
                        <span class="fa fa-search fa-lg"></span></asp:LinkButton>
                </ItemTemplate>
                <HeaderStyle HorizontalAlign="Center" />
                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="5%" />
            </asp:TemplateField>
        </Columns>
        <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
        <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
        <SortedAscendingCellStyle BackColor="#FDF5AC" />
        <SortedAscendingHeaderStyle BackColor="#4D0000" />
        <SortedDescendingCellStyle BackColor="#FCF6C0" />
        <SortedDescendingHeaderStyle BackColor="#820000" />
    </asp:GridView>
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
                <span class="fa fa-search fa-lg"></span>&nbsp;View Application</asp:LinkButton>
            </td>
        </tr>
    </table>
</asp:Content>

