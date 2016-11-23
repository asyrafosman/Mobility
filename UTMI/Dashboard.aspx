<%@ Page Title="ACAD2016." Language="C#" MasterPageFile="~/UTMI/UTMIMasterPage.master" AutoEventWireup="true" CodeFile="Dashboard.aspx.cs" Inherits="UTMI_Dashboard" %>

<asp:Content ID="Content1" ContentPlaceHolderID="BodyContent" runat="Server">
    <div id="cssmenu2">
        <ul style="font-size: small">
            <li class="active"><a href="Dashboard.aspx"><span class="fa fa-inbox"></span>&nbsp;Inbox</a></li>
            <li><a href="frmInProcess.aspx"><span class="fa fa-play"></span>&nbsp;In Process</a></li>
            <li><a href="frmCompleted.aspx"><span class="fa fa-check"></span>&nbsp;Completed</a></li>
            <li><a href="frmRejected.aspx"><span class="fa fa-times"></span>&nbsp;Rejected</a></li>
        </ul>
    </div>
    <table style="float: right">
        <tr>
            <td>
                <asp:Label ID="Label1" runat="server" Text="" Font-Bold="True">Application <span class="fa fa-arrow-right"></span>&nbsp;Outbound <span class="fa fa-arrow-right"></span>&nbsp;Inbox</asp:Label>
            </td>
        </tr>
    </table>
    <br>
    <br>
    <%--<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Outbound]"></asp:SqlDataSource>--%>
    <%--<asp:GridView ID="GridView1" runat="server" CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" AutoGenerateColumns="False" DataKeyNames="applicationId" AllowPaging="True" AllowSorting="True" EmptyDataText="No record found" Style="width: 100%">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="applicationId" HeaderText="Application ID" ReadOnly="True" SortExpression="applicationId" />
            <asp:BoundField DataField="studentName" HeaderText="Student Name" SortExpression="studentName" />
            <asp:BoundField DataField="programmeType" HeaderText="Programme Type" SortExpression="programmeType" />
            <asp:BoundField DataField="programmeName" HeaderText="Programme Name" SortExpression="programmeName" />
            <asp:BoundField DataField="university" HeaderText="University" SortExpression="university" />
            <asp:BoundField DataField="ammountFunded" HeaderText="Ammount Funded" SortExpression="ammountFunded" />
            <asp:BoundField DataField="year" HeaderText="Year" SortExpression="year" />
            <asp:BoundField DataField="status" HeaderText="Status" SortExpression="status" />
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
    </asp:GridView>--%>
    <%--<asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Outbound] WHERE ([studentName] LIKE '%' + @studentName + '%')">
        <SelectParameters>
            <asp:ControlParameter ControlID="txtSearch" Name="studentName" PropertyName="Text" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>--%>
    <%--<asp:GridView ID="GridView2" runat="server" CellPadding="4" DataSourceID="SqlDataSource2" ForeColor="#333333" GridLines="None" AutoGenerateColumns="False" DataKeyNames="applicationId" AllowPaging="True" AllowSorting="True" EmptyDataText="No record found" Visible="False" Style="width: 100%">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="applicationId" HeaderText="Application ID" ReadOnly="True" SortExpression="applicationId" />
            <asp:BoundField DataField="studentName" HeaderText="Student Name" SortExpression="studentName" />
            <asp:BoundField DataField="programmeType" HeaderText="Programme Type" SortExpression="programmeType" />
            <asp:BoundField DataField="programmeName" HeaderText="Programme Name" SortExpression="programmeName" />
            <asp:BoundField DataField="university" HeaderText="University" SortExpression="university" />
            <asp:BoundField DataField="ammountFunded" HeaderText="Ammount Funded" SortExpression="ammountFunded" />
            <asp:BoundField DataField="year" HeaderText="Year" SortExpression="year" />
            <asp:BoundField DataField="status" HeaderText="Status" SortExpression="status" />
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
    </asp:GridView>--%>
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
            <td style="background-color: #FFFBD6"><asp:LinkButton ID="LinkButton1" runat="server" CommandArgument='<%# Eval("ProgId") %>' OnClick="ViewStudApp">
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
                <span class="fa fa-search"></span>&nbsp;View</asp:LinkButton>
            </td>
        </tr>
    </table>
</asp:Content>