using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class UTMID_frmStudActivity : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnSearch_Click1(object sender, EventArgs e)
    {
        //GridView1.Visible = false;
        //GridView2.Visible = true;
    }
    protected void ViewActivityList(object sender, EventArgs e)
    {
        string APP_APPID = (sender as LinkButton).CommandArgument;
        Session.Add("APP_APPID", APP_APPID);
        Response.Redirect("frmActivityList.aspx");
    }
}