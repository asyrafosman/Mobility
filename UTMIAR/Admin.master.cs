using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class UTMIAR_Admin : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Session["acadUserSs"] = "201620171";
        Session["acadUserNm"] = "Siti Rahimah Mohd Yusop";

        if (!IsPostBack)
        {
            string sesisem = Session["acadUserSs"].ToString();
            lblLoggedInUser.Text = Session["acadUserNm"].ToString().ToUpper();
        }
    }
}
