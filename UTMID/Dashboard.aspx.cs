using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class UTMID_Dashboard : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void MOBILITY_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("frmInbox.aspx");
    }
}