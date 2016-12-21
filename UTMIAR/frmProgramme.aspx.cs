using System;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.IO;

public partial class UTMIAR_frmProgramme : System.Web.UI.Page
{
    private SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["UTMMobility"].ConnectionString);
    protected void btnSearch_Click1(object sender, EventArgs e)
    {
        GridView1.Visible = false;
        GridView2.Visible = true;
    }
    protected void ViewProg(object sender, EventArgs e)
    {
        string PROG_PROGID = (sender as LinkButton).CommandArgument;
        Session.Add("PROG_PROGID", PROG_PROGID);
        Response.Redirect("frmViewProg.aspx");
    }
    protected void DeleteProg(object sender, EventArgs e)
    {
        con.Open();
        string PROG_PROGID = (sender as LinkButton).CommandArgument;
        //File.Delete(id);

        string strQuery1 = "DELETE FROM PROG_INBOX WHERE PROG_PROGID = '" + PROG_PROGID + "'";
        SqlCommand cmd = new SqlCommand(strQuery1, con);
        cmd.ExecuteNonQuery();
        GridView1.DataBind();

        con.Close();
    }
}