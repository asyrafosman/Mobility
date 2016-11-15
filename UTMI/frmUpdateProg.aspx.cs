using System;
using System.Configuration;
using System.Data.SqlClient;
using System.Web.UI;

public partial class UTMI_frmAddNewProgramme : System.Web.UI.Page
{
    private SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["UTMMobility"].ConnectionString);

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            // Declaration
            //string id = Request.QueryString["ProgId"];
            String strSelect;
            SqlCommand cmdSelect;
            SqlDataReader drSelect;
            //id = Session["pengguna"].ToString();
            int id = 2;

            con.Open();  // Open Connection with database

            strSelect = "select Types, ProgName, University, Country, StartDate, EndDate, Deadline, IntakeSession, OpenTo from Programme where ProgId='" + id + "'";
            cmdSelect = new SqlCommand(strSelect, con);
            drSelect = cmdSelect.ExecuteReader();
            drSelect.Read();
            
            DateTime startDate = Convert.ToDateTime(drSelect["StartDate"].ToString());
            DateTime endDate = Convert.ToDateTime(drSelect["EndDate"].ToString());
            DateTime deadLine = Convert.ToDateTime(drSelect["Deadline"].ToString());

            ddlTypes.Text = drSelect["Types"].ToString();
            txtProgName.Text = drSelect["ProgName"].ToString();
            txtUniversity.Text = drSelect["University"].ToString();
            ddlCountry.SelectedValue = drSelect["Country"].ToString();
            txtStartDate.Text = startDate.ToShortDateString();
            txtEndDate.Text = endDate.ToShortDateString();
            txtDeadline.Text = deadLine.ToShortDateString();
            txtIntakeSession.Text = drSelect["IntakeSession"].ToString();
            cblOpenTo.SelectedValue = drSelect["OpenTo"].ToString();

            con.Close();  // Close Connection with database
        }
    }

    protected void btnSave_Click(object sender, EventArgs e)
    {
        {
            String strUpdate;
            SqlCommand cmdUpdate;
            //SqlDataReader drSelect;
            int id = 1;

            con.Open();  // Open Connection with database

            strUpdate = "update Programme set Types=@Types, ProgName=@ProgName, University=@University, Country=@Country, StartDate=@StartDate, EndDate=@EndDate, Deadline=@Deadline, OpenTo=@OpenTo where ProgId='" + id + "'";
            cmdUpdate = new SqlCommand(strUpdate, con);
            cmdUpdate.Parameters.AddWithValue("@Types", ddlTypes.Text);
            cmdUpdate.Parameters.AddWithValue("@ProgName", txtProgName.Text);
            cmdUpdate.Parameters.AddWithValue("@University", txtUniversity.Text);
            cmdUpdate.Parameters.AddWithValue("@Country", ddlCountry.SelectedValue);
            cmdUpdate.Parameters.AddWithValue("@StartDate", DateTime.Parse(txtStartDate.Text));
            cmdUpdate.Parameters.AddWithValue("@EndDate", DateTime.Parse(txtEndDate.Text));
            cmdUpdate.Parameters.AddWithValue("@Deadline", DateTime.Parse(txtDeadline.Text));
            cmdUpdate.Parameters.AddWithValue("@IntakeSession", txtIntakeSession.Text);
            cmdUpdate.Parameters.AddWithValue("@OpenTo", cblOpenTo.SelectedValue);

            cmdUpdate.ExecuteNonQuery();
            cmdUpdate.Parameters.Clear();

            // Message Box
            string script = "alert('Update Programme Successful.'); window.location.reload();\n";
            Page.ClientScript.RegisterStartupScript(GetType(), "msgbox", script, true);
            Response.Redirect("frmProgramme.aspx");

            con.Close();  // Close Connection with database
        }
    }
}