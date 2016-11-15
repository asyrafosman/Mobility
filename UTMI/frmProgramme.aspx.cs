using System;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.IO;

public partial class UTMI_frmProgramme : System.Web.UI.Page
{
    private SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["UTMMobility"].ConnectionString);
    protected void btnSearch_Click1(object sender, EventArgs e)
    {
        GridView1.Visible = false;
        GridView2.Visible = true;
    }
    protected void ViewProg(object sender, EventArgs e)
    {
        string id = (sender as LinkButton).CommandArgument;

        Response.Redirect("frmViewProg.aspx");
    }
    protected void DeleteProg(object sender, EventArgs e)
    {
        con.Open();
        string id = (sender as LinkButton).CommandArgument;
        //File.Delete(id);

        string strQuery1 = "DELETE FROM Programme WHERE ProgId = '" + id + "'";
        SqlCommand cmd2 = new SqlCommand(strQuery1, con);
        cmd2.ExecuteNonQuery();
        GridView1.DataBind();

        con.Close();
    }
}