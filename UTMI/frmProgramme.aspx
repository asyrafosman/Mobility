<%@ Page Title="" Language="C#" MasterPageFile="~/UTMI/UTMIMasterPage.master" AutoEventWireup="true" CodeFile="frmProgramme.aspx.cs" Inherits="UTMI_frmProgramme" %>

<asp:Content ID="Content1" ContentPlaceHolderID="BodyContent" Runat="Server">
    <div id="cssmenu2">
        <ul style="font-size: small">
            <li class="active"><a href="frmProgramme.aspx"><span class="fa fa-list"></span> List of Programmes</a></li>
        </ul>
    </div>
    <table align="right">
        <tr>
            <td>
                <asp:Label ID="Label1" runat="server" Text="" Font-Bold="True">Progamme <span class="fa fa-arrow-right"></span>&nbsp;Programme List</asp:Label>
            </td>
        </tr>
    </table>
    <br>
    <br>
    <table align="center">
        <tr>
            <td>
                <asp:Label ID="lblSearch" runat="server" Text="Programme Name: "></asp:Label>
                <asp:TextBox ID="txtSearch" runat="server" placeholder="- Programme Name -"></asp:TextBox>
                <asp:Button ID="btnSearch" runat="server" Text="Search" OnClick="btnSearch_Click1" />
            </td>
        </tr>
    </table>
    <table align="right">
        <tr>
            <td>
                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/UTMI/frmAddNewProgramme.aspx"><i class="fa fa-plus-circle fa-lg" style="color:maroon"></i> Add New Programme</asp:HyperLink>
            </td>
        </tr>
    </table>
    <br>
    <br>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Programme] WHERE [Id] = @original_Id AND [Types] = @original_Types AND [ProgrammeName] = @original_ProgrammeName AND [University] = @original_University AND [Country] = @original_Country AND (([StartDate] = @original_StartDate) OR ([StartDate] IS NULL AND @original_StartDate IS NULL)) AND (([EndDate] = @original_EndDate) OR ([EndDate] IS NULL AND @original_EndDate IS NULL)) AND [Deadline] = @original_Deadline AND (([IntakeSession] = @original_IntakeSession) OR ([IntakeSession] IS NULL AND @original_IntakeSession IS NULL)) AND (([OpenTo] = @original_OpenTo) OR ([OpenTo] IS NULL AND @original_OpenTo IS NULL))" InsertCommand="INSERT INTO [Programme] ([Types], [ProgrammeName], [University], [Country], [StartDate], [EndDate], [Deadline], [IntakeSession], [OpenTo]) VALUES (@Types, @ProgrammeName, @University, @Country, @StartDate, @EndDate, @Deadline, @IntakeSession, @OpenTo)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Programme]" UpdateCommand="UPDATE [Programme] SET [Types] = @Types, [ProgrammeName] = @ProgrammeName, [University] = @University, [Country] = @Country, [StartDate] = @StartDate, [EndDate] = @EndDate, [Deadline] = @Deadline, [IntakeSession] = @IntakeSession, [OpenTo] = @OpenTo WHERE [Id] = @original_Id AND [Types] = @original_Types AND [ProgrammeName] = @original_ProgrammeName AND [University] = @original_University AND [Country] = @original_Country AND (([StartDate] = @original_StartDate) OR ([StartDate] IS NULL AND @original_StartDate IS NULL)) AND (([EndDate] = @original_EndDate) OR ([EndDate] IS NULL AND @original_EndDate IS NULL)) AND [Deadline] = @original_Deadline AND (([IntakeSession] = @original_IntakeSession) OR ([IntakeSession] IS NULL AND @original_IntakeSession IS NULL)) AND (([OpenTo] = @original_OpenTo) OR ([OpenTo] IS NULL AND @original_OpenTo IS NULL))">
        <DeleteParameters>
            <asp:Parameter Name="original_Id" Type="Int32" />
            <asp:Parameter Name="original_Types" Type="String" />
            <asp:Parameter Name="original_ProgrammeName" Type="String" />
            <asp:Parameter Name="original_University" Type="String" />
            <asp:Parameter Name="original_Country" Type="String" />
            <asp:Parameter Name="original_StartDate" DbType="Date" />
            <asp:Parameter DbType="Date" Name="original_EndDate" />
            <asp:Parameter DbType="Date" Name="original_Deadline" />
            <asp:Parameter Name="original_IntakeSession" Type="String" />
            <asp:Parameter Name="original_OpenTo" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Types" Type="String" />
            <asp:Parameter Name="ProgrammeName" Type="String" />
            <asp:Parameter Name="University" Type="String" />
            <asp:Parameter Name="Country" Type="String" />
            <asp:Parameter Name="StartDate" DbType="Date" />
            <asp:Parameter Name="EndDate" DbType="Date" />
            <asp:Parameter DbType="Date" Name="Deadline" />
            <asp:Parameter Name="IntakeSession" Type="String" />
            <asp:Parameter Name="OpenTo" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Types" Type="String" />
            <asp:Parameter Name="ProgrammeName" Type="String" />
            <asp:Parameter Name="University" Type="String" />
            <asp:Parameter Name="Country" Type="String" />
            <asp:Parameter Name="StartDate" DbType="Date" />
            <asp:Parameter DbType="Date" Name="EndDate" />
            <asp:Parameter DbType="Date" Name="Deadline" />
            <asp:Parameter Name="IntakeSession" Type="String" />
            <asp:Parameter Name="OpenTo" Type="String" />
            <asp:Parameter Name="original_Id" Type="Int32" />
            <asp:Parameter Name="original_Types" Type="String" />
            <asp:Parameter Name="original_ProgrammeName" Type="String" />
            <asp:Parameter Name="original_University" Type="String" />
            <asp:Parameter Name="original_Country" Type="String" />
            <asp:Parameter Name="original_StartDate" DbType="Date" />
            <asp:Parameter Name="original_EndDate" DbType="Date" />
            <asp:Parameter DbType="Date" Name="original_Deadline" />
            <asp:Parameter Name="original_IntakeSession" Type="String" />
            <asp:Parameter Name="original_OpenTo" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" CellPadding="4" DataSourceID="SqlDataSource1" EmptyDataText="No record found" ForeColor="#333333" GridLines="None" AutoGenerateColumns="False" DataKeyNames="Id">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="Types" HeaderText="Types" SortExpression="Types" />
            <asp:BoundField DataField="ProgrammeName" HeaderText="Programme Name" SortExpression="ProgrammeName" />
            <asp:BoundField DataField="University" HeaderText="University" SortExpression="University" />
            <asp:BoundField DataField="Country" HeaderText="Country" SortExpression="Country" />
            <asp:BoundField DataField="StartDate" HeaderText="Start Date" SortExpression="StartDate" />
            <asp:BoundField DataField="EndDate" HeaderText="End Date" SortExpression="EndDate" />
            <asp:BoundField DataField="Deadline" HeaderText="Deadline" SortExpression="Deadline" />
            <asp:BoundField DataField="IntakeSession" HeaderText="Intake Session" SortExpression="IntakeSession" />
            <asp:BoundField DataField="OpenTo" HeaderText="Open To" SortExpression="OpenTo" />
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
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

