using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class UTMID_frmInProcess : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnSearch_Click1(object sender, EventArgs e)
    {
        //GridView1.Visible = false;
        //GridView2.Visible = true;
    }
    protected void ViewStatus(object sender, EventArgs e)
    {
        //string id = (sender as LinkButton).CommandArgument;

        Response.Redirect("frmViewStatus.aspx");
    }
}