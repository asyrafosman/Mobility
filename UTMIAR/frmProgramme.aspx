<%@ Page Title="ACAD2016." Language="C#" MasterPageFile="~/UTMIAR/UTMIARMasterPage.master" AutoEventWireup="true" CodeFile="frmProgramme.aspx.cs" Inherits="UTMIAR_frmProgramme" %>

<asp:Content ID="Content1" ContentPlaceHolderID="BodyContent" Runat="Server">
    <div id="cssmenu2">
        <ul style="font-size: small">
            <li class="active"><a><span class="fa fa-inbox fa-lg"></span>&nbsp;Inbox</a></li>
            <li><a href=".aspx"><span class="fa fa-check fa-lg"></span>&nbsp;Completed</a></li>
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
                <asp:Label ID="lblSearch" runat="server" Text="Programme Name: "></asp:Label>
                <asp:TextBox ID="txtSearch" runat="server" placeholder="- Programme Name -" style="width: 35%; border-radius: 5px; border: 1px solid CadetBlue;"></asp:TextBox>
                <asp:LinkButton ID="btnSearch" runat="server" Text="Search" OnClick="btnSearch_Click1"><i class="fa fa-search fa-lg" style="color:#FF9933"></i></asp:LinkButton>
            </td>
        </tr>
    </table>
    <table style="float: right">
        <tr>
            <td>
                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/UTMIAR/frmAddNewProg.aspx"><i class="fa fa-plus-circle fa-lg" style="color:maroon"></i> Add New Programme</asp:HyperLink>
            </td>
        </tr>
    </table>
    <br>
    <br>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MOBILITY.XE %>" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM &quot;PROG_INBOX&quot;" ProviderName="<%$ ConnectionStrings:MOBILITY.XE.ProviderName %>">
    </asp:SqlDataSource>
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" CellPadding="4" DataSourceID="SqlDataSource1" EmptyDataText="No record found" ForeColor="#333333" GridLines="None" AutoGenerateColumns="False" Width="100%">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:TemplateField HeaderText="No.">
                <ItemTemplate>
                    <%#Container.DataItemIndex +1 %>.
                </ItemTemplate>
                <HeaderStyle HorizontalAlign="Center" Width="5%" />
                <ItemStyle HorizontalAlign="Center" VerticalAlign="Top" Width="3%" />
            </asp:TemplateField>
            <%--<asp:BoundField DataField="PROG_PROGID" HeaderText="PROG_PROGID" SortExpression="PROG_PROGID" />--%>
            <asp:BoundField DataField="PROG_TYPES" HeaderText="Types" SortExpression="PROG_TYPES" />
            <asp:BoundField DataField="PROG_PROGNAME" HeaderText="Programme Name" SortExpression="PROG_PROGNAME" />
            <asp:BoundField DataField="PROG_UNIVERSITY" HeaderText="University" SortExpression="PROG_UNIVERSITY" />
            <%--<asp:BoundField DataField="PROG_COUNTRY" HeaderText="PROG_COUNTRY" SortExpression="PROG_COUNTRY" />--%>
            <%--<asp:BoundField DataField="PROG_STARTDATE" HeaderText="PROG_STARTDATE" SortExpression="PROG_STARTDATE" DataFormatString="{0:dd-MMM-yyyy}" />--%>
            <%--<asp:BoundField DataField="PROG_ENDDATE" HeaderText="PROG_ENDDATE" SortExpression="PROG_ENDDATE" DataFormatString="{0:dd-MMM-yyyy}" />--%>
            <asp:BoundField DataField="PROG_DEADLINE" HeaderText="Deadline" SortExpression="PROG_DEADLINE" DataFormatString="{0:dd-MMM-yyyy}" />
            <%--<asp:BoundField DataField="PROG_STATUS" HeaderText="Status" SortExpression="PROG_STATUS" />--%>
            <asp:TemplateField HeaderText="Status" SortExpression="PROG_STATUS">
                <ItemTemplate>
                    <asp:Label ID="Status" runat="server" Text='<%# Eval("PROG_STATUS").ToString() == "0" ? "Draft" : "Submitted" %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="">
                <HeaderStyle Width="3%" />
             <ItemStyle Width="3%" />
                <ItemTemplate>
                    <asp:LinkButton ID="LinkButton1" runat="server" CommandArgument='<%# Eval("PROG_PROGID") %>'
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
                    <asp:LinkButton ID="LinkButton2" runat="server" CommandArgument='<%# Eval("PROG_PROGID") %>'
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
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:MOBILITY.XE %>" ProviderName="<%$ ConnectionStrings:MOBILITY.XE.ProviderName %>" SelectCommand="SELECT * FROM &quot;PROG_INBOX&quot; WHERE (&quot;PROG_PROGNAME&quot; = ?)">
        <SelectParameters>
            <asp:ControlParameter ControlID="txtSearch" Name="PROG_PROGNAME" PropertyName="Text" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
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
            <%--<asp:BoundField DataField="PROG_PROGID" HeaderText="PROG_PROGID" SortExpression="PROG_PROGID" />--%>
            <asp:BoundField DataField="PROG_TYPES" HeaderText="Types" SortExpression="PROG_TYPES" />
            <asp:BoundField DataField="PROG_PROGNAME" HeaderText="Programme Name" SortExpression="PROG_PROGNAME" />
            <asp:BoundField DataField="PROG_UNIVERSITY" HeaderText="University" SortExpression="PROG_UNIVERSITY" />
            <%--<asp:BoundField DataField="PROG_COUNTRY" HeaderText="PROG_COUNTRY" SortExpression="PROG_COUNTRY" />--%>
            <%--<asp:BoundField DataField="PROG_STARTDATE" HeaderText="PROG_STARTDATE" SortExpression="PROG_STARTDATE" DataFormatString="{0:dd-MMM-yyyy}" />--%>
            <%--<asp:BoundField DataField="PROG_ENDDATE" HeaderText="PROG_ENDDATE" SortExpression="PROG_ENDDATE" DataFormatString="{0:dd-MMM-yyyy}" />--%>
            <asp:BoundField DataField="PROG_DEADLINE" HeaderText="Deadline" SortExpression="PROG_DEADLINE" DataFormatString="{0:dd-MMM-yyyy}" />
            <%--<asp:BoundField DataField="PROG_STATUS" HeaderText="Status" SortExpression="PROG_STATUS" />--%>
            <asp:TemplateField HeaderText="Status" SortExpression="PROG_STATUS">
                <ItemTemplate>
                    <asp:Label ID="Status" runat="server" Text='<%# Eval("PROG_STATUS").ToString() == "0" ? "Draft" : "Submitted" %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="">
                <HeaderStyle Width="3%" />
             <ItemStyle Width="3%" />
                <ItemTemplate>
                    <asp:LinkButton ID="LinkButton1" runat="server" CommandArgument='<%# Eval("PROG_PROGID") %>'
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
                    <asp:LinkButton ID="LinkButton2" runat="server" CommandArgument='<%# Eval("PROG_PROGID") %>'
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

