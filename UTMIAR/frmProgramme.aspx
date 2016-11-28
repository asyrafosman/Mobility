<%@ Page Title="ACAD2016." Language="C#" MasterPageFile="~/UTMIAR/UTMIARMasterPage.master" AutoEventWireup="true" CodeFile="frmProgramme.aspx.cs" Inherits="UTMIAR_frmProgramme" %>

<asp:Content ID="Content1" ContentPlaceHolderID="BodyContent" Runat="Server">
    <div id="cssmenu2">
        <ul style="font-size: small">
            <li class="active"><a><span class="fa fa-list fa-lg"></span>&nbsp;List of Programmes</a></li>
        </ul>
    </div>
    <table style="float: right">
        <tr>
            <td>
                <asp:Label ID="Label1" runat="server" Text="" Font-Bold="True">Progamme <span class="fa fa-arrow-right"></span>&nbsp;Programme List</asp:Label>
            </td>
        </tr>
    </table>
    <br>
    <br>
    <table style="width: 100%">
        <tr>
            <td align="center">
                <asp:Label ID="lblSearch" runat="server" Text="Student Name: "></asp:Label>
                <asp:TextBox ID="txtSearch" runat="server" placeholder="- Programme Name -" style="width: 35%; border-radius: 5px; border: 1px solid CadetBlue;"></asp:TextBox>
                <asp:LinkButton ID="btnSearch" runat="server" Text="Search" OnClick="btnSearch_Click1"><i class="fa fa-search fa-lg" style="color:#FF9933"></i></asp:LinkButton>
            </td>
        </tr>
    </table>
    <table style="float: right">
        <tr>
            <td>
                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/UTMI/frmAddNewProg.aspx"><i class="fa fa-plus-circle fa-lg" style="color:maroon"></i> Add New Programme</asp:HyperLink>
            </td>
        </tr>
    </table>
    <br>
    <br>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:UTMMobility %>" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Programme]">
    </asp:SqlDataSource>
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" CellPadding="4" DataSourceID="SqlDataSource1" EmptyDataText="No record found" ForeColor="#333333" GridLines="None" AutoGenerateColumns="False" DataKeyNames="ProgId">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:TemplateField HeaderText="No.">
                <ItemTemplate>
                    <%#Container.DataItemIndex +1 %>.
                </ItemTemplate>
                <HeaderStyle HorizontalAlign="Center" Width="5%" />
                <ItemStyle HorizontalAlign="Center" VerticalAlign="Top" Width="3%" />
            </asp:TemplateField>
            <%--<asp:BoundField DataField="ProgId" HeaderText="ProgId" SortExpression="ProgId" InsertVisible="False" ReadOnly="True" />--%>
            <asp:BoundField DataField="Types" HeaderText="Types" SortExpression="Types" />
            <asp:BoundField DataField="ProgName" HeaderText="ProgName" SortExpression="ProgName" />
            <asp:BoundField DataField="University" HeaderText="University" SortExpression="University" />
            <asp:BoundField DataField="Country" HeaderText="Country" SortExpression="Country" />
            <%--<asp:BoundField DataField="StartDate" HeaderText="StartDate" SortExpression="StartDate" />--%>
            <%--<asp:BoundField DataField="EndDate" HeaderText="EndDate" SortExpression="EndDate" />--%>
            <asp:BoundField DataField="Deadline" HeaderText="Deadline" SortExpression="Deadline" />
            <%--<asp:BoundField DataField="IntakeSession" HeaderText="IntakeSession" SortExpression="IntakeSession" />--%>
            <asp:BoundField DataField="OpenTo" HeaderText="OpenTo" SortExpression="OpenTo" />
            <asp:TemplateField HeaderText="">
                <HeaderStyle Width="3%" />
             <ItemStyle Width="3%" />
                <ItemTemplate>
                    <asp:LinkButton ID="LinkButton1" runat="server" CommandArgument='<%# Eval("ProgId") %>'
                        OnClick="ViewProg">
                        <span class="fa fa-search fa-lg"></span></asp:LinkButton>
                </ItemTemplate>
                <HeaderStyle HorizontalAlign="Center" />
                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="5%" />
            </asp:TemplateField>
            <asp:TemplateField HeaderText="">
                <HeaderStyle Width="3%" />
             <ItemStyle Width="3%" />
                <ItemTemplate>
                    <asp:LinkButton ID="LinkButton2" runat="server" CommandArgument='<%# Eval("ProgId") %>'
                        OnClick="DeleteProg" OnClientClick="return confirm('Are you sure to delete this programme?');">
                        <span class="fa fa-trash fa-lg"></span></asp:LinkButton>
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
    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="ProgId" DataSourceID="SqlDataSource2" ForeColor="#333333" GridLines="None" AllowPaging="True" AllowSorting="True" Visible="False" EmptyDataText="No record found">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:TemplateField HeaderText="No.">
                <ItemTemplate>
                    <%#Container.DataItemIndex +1 %>.
                </ItemTemplate>
                <HeaderStyle HorizontalAlign="Center" Width="5%" />
                <ItemStyle HorizontalAlign="Center" VerticalAlign="Top" Width="3%" />
            </asp:TemplateField>
            <%--<asp:BoundField DataField="ProgId" HeaderText="ProgId" InsertVisible="False" ReadOnly="True" SortExpression="ProgId" />--%>
            <asp:BoundField DataField="Types" HeaderText="Types" SortExpression="Types" />
            <asp:BoundField DataField="ProgName" HeaderText="ProgName" SortExpression="ProgName" />
            <asp:BoundField DataField="University" HeaderText="University" SortExpression="University" />
            <asp:BoundField DataField="Country" HeaderText="Country" SortExpression="Country" />
            <%--<asp:BoundField DataField="StartDate" HeaderText="StartDate" SortExpression="StartDate" />--%>
            <%--<asp:BoundField DataField="EndDate" HeaderText="EndDate" SortExpression="EndDate" />--%>
            <asp:BoundField DataField="Deadline" HeaderText="Deadline" SortExpression="Deadline" />
            <%--<asp:BoundField DataField="IntakeSession" HeaderText="IntakeSession" SortExpression="IntakeSession" />--%>
            <asp:BoundField DataField="OpenTo" HeaderText="OpenTo" SortExpression="OpenTo" />
            <asp:TemplateField HeaderText="">
                <HeaderStyle Width="3%" />
             <ItemStyle Width="3%" />
                <ItemTemplate>
                    <asp:LinkButton ID="LinkButton1" runat="server" CommandArgument='<%# Eval("ProgId") %>'
                        OnClick="ViewProg">
                        <span class="fa fa-search fa-lg"></span></asp:LinkButton>
                </ItemTemplate>
                <HeaderStyle HorizontalAlign="Center" />
                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="5%" />
            </asp:TemplateField>
            <asp:TemplateField HeaderText="">
                <HeaderStyle Width="3%" />
             <ItemStyle Width="3%" />
                <ItemTemplate>
                    <asp:LinkButton ID="LinkButton2" runat="server" CommandArgument='<%# Eval("ProgId") %>'
                        OnClick="DeleteProg" OnClientClick="return confirm('Are you sure to delete this programme?');">
                        <span class="fa fa-trash fa-lg"></span></asp:LinkButton>
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
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:UTMMobility %>" SelectCommand="SELECT * FROM [Programme] WHERE ([ProgName] LIKE '%' + @ProgName + '%')">
        <SelectParameters>
            <asp:ControlParameter ControlID="txtSearch" Name="ProgName" PropertyName="Text" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
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
                <asp:LinkButton ID="LinkButton3" runat="server">
                <span class="fa fa-search fa-lg"></span>&nbsp;View Programme</asp:LinkButton>
                &nbsp;&nbsp;&nbsp;
                <asp:LinkButton ID="LinkButton4" runat="server">
                <span class="fa fa-trash fa-lg"></span>&nbsp;Delete Programme</asp:LinkButton>
            </td>
        </tr>
    </table>
</asp:Content>

