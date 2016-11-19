using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AcadAdvisor_Dashboard : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void ViewStudApp(object sender, EventArgs e)
    {
        string id = (sender as LinkButton).CommandArgument;

        Response.Redirect("frmViewStudApp.aspx");
    }
}