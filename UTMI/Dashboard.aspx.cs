using System;

public partial class UTMI_Dashboard : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
    }
    protected void ViewStudApp(object sender, EventArgs e)
    {
        //string id = (sender as LinkButton).CommandArgument;

        Response.Redirect("frmViewStudApp.aspx");
    }
}