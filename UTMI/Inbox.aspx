﻿<%@ Page Title="" Language="C#" MasterPageFile="~/UTMI/UTMIMasterPage.master" AutoEventWireup="true" CodeFile="Inbox.aspx.cs" Inherits="UTMI_Dashboard" %>

<asp:Content ID="Content1" ContentPlaceHolderID="BodyContent" Runat="Server">
    <div id="cssmenu2">
        <ul style="font-size: small">
            <li class="active"><a href="Inbox.aspx"><span class="fa fa-inbox"></span> Inbox</a></li>
            <li><a href="InProcess.aspx"><span class="fa fa-play"></span> In Process</a></li>
            <li><a href="Completed.aspx"><span class="fa fa-check"></span> Completed</a></li>
            <li><a href="Rejected.aspx"><span class="fa fa-times"></span> Rejected</a></li>
        </ul>
    </div>
    <br>
    <table align="center">
        <tr>
            <td><asp:Label ID="Label2" runat="server" Text="Search" Font-Bold="True"></asp:Label></td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblSearch" runat="server" Text="Student Name: "></asp:Label>
                <asp:TextBox ID="txtSearch" runat="server" placeholder="- Student Name -"></asp:TextBox>
                <asp:Button ID="btnSearch" runat="server" Text="Search" OnClick="btnSearch_Click1" />
            </td>
        </tr>
    </table>
    <br>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Outbound]">
    </asp:SqlDataSource>
    <asp:GridView ID="GridView1" runat="server" CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" AutoGenerateColumns="False" DataKeyNames="applicationId" AllowPaging="True" AllowSorting="True" EmptyDataText="No record" style="width: 100%">
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
    </asp:GridView>
     <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Outbound] WHERE ([studentName] LIKE '%' + @studentName + '%')">
        <SelectParameters>
            <asp:ControlParameter ControlID="txtSearch" Name="studentName" PropertyName="Text" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:GridView ID="GridView2" runat="server" CellPadding="4" DataSourceID="SqlDataSource2" ForeColor="#333333" GridLines="None" AutoGenerateColumns="False" DataKeyNames="applicationId" AllowPaging="True" AllowSorting="True" EmptyDataText="No record" Visible="False" style="width: 100%">
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
    </asp:GridView>
</asp:Content>

