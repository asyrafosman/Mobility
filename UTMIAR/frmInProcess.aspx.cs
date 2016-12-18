using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class UTMIAR_frmInProcess : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (GridView1.Rows.Count == 0)
        {
            lblTxtSearchResult.Visible = false;
            lblResult.Visible = false;
        }
        else
        {
            lblResult.Text = GridView1.Rows.Count.ToString();
        }
    }
    protected void btnSearch_Click1(object sender, EventArgs e)
    {
        if (txtSearch.Text.Trim().Length == 0)
        {
            GridView1.Visible = true;
            GridView2.Visible = false;
            if (GridView1.Rows.Count == 0)
            {
                lblTxtSearchResult.Visible = false;
                lblResult.Visible = false;
            }
            else
            {
                lblResult.Text = GridView1.Rows.Count.ToString();
            }
        }
        else
        {
            GridView1.Visible = false;
            GridView2.Visible = true;
            if (GridView2.Rows.Count == 0)
            {
                lblTxtSearchResult.Visible = false;
                lblResult.Visible = false;
            }
            else
            {
                lblResult.Text = GridView2.Rows.Count.ToString();
            }
        }
    }
    protected void ViewStatus(object sender, EventArgs e)
    {
        string APP_APPID = (sender as LinkButton).CommandArgument;
        Session.Add("APP_APPID", APP_APPID);
        Response.Redirect("frmViewStatus.aspx");
    }
}