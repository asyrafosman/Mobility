﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class TNCAA_Dashboard : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void ViewStudApp(object sender, EventArgs e)
    {
        Response.Redirect("frmViewStudApp.aspx");
    }
}