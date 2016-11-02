<%@ Page Title="" Language="C#" MasterPageFile="~/UGStudent/UGMasterPage.master" AutoEventWireup="true" CodeFile="YourFileHere2.aspx.cs" Inherits="UGStudent_frm_kosong" %>

<asp:Content ID="Content1" ContentPlaceHolderID="BodyContent" Runat="Server">
    <div id="cssmenu2">
        <ul style="font-size: small">
            <li><a href="YourFileHere1.aspx"><span class="fa fa-user"></span>Title 1 Here</a></li>
            <li class="active"><a href="YourFileHere2.aspx"><span class="fa fa-user"></span>Title 2 Here</a></li>
        </ul>
    </div>
    <asp:Label ID="Label1" runat="server" Text="Some Info Here For Tab 2"></asp:Label>
    <br /><br />
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:SMUTM %>" 
        ProviderName="<%$ ConnectionStrings:SMUTM.ProviderName %>" 
        SelectCommand="SELECT * FROM &quot;KOD_KAUM&quot;"></asp:SqlDataSource>
    <asp:GridView ID="GridView1" runat="server" DataSourceID="SqlDataSource1">
    </asp:GridView>
</asp:Content>

