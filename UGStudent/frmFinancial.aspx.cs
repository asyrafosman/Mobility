using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class UGStudent_Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void chckSponsor_CheckedChanged(object sender, EventArgs e)
    {
        Panel1.Visible = chckSponsor.Checked;
    }

    protected void chckUTM_CheckedChanged(object sender, EventArgs e)
    {
        Panel2.Visible = chckUTM.Checked;
    }
}