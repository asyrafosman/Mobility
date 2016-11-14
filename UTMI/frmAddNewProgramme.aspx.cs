using System;
using System.Configuration;
using System.Data.SqlClient;
using System.Web.UI;

public partial class UTMI_frmAddNewProgramme : System.Web.UI.Page
{
    private SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);

    protected void Page_Load(object sender, EventArgs e)
    {
    }

    protected void btnSave_Click(object sender, EventArgs e)
    {
        {
            // Declaration
            String strInsertProgramme;
            SqlCommand cmdInsertProgramme;

            con.Open();  // Open Connection with database

            strInsertProgramme = "insert into Programme (Types, ProgrammeName, University, Country, StartDate, EndDate, Deadline, IntakeSession, OpenTo) values(@Types, @ProgrammeName, @University, @Country, @StartDate, @EndDate, @Deadline, @IntakeSession, @OpenTo)";
            cmdInsertProgramme = new SqlCommand(strInsertProgramme, con);
            cmdInsertProgramme.Parameters.AddWithValue("@Types", ddlTypes.Text);
            cmdInsertProgramme.Parameters.AddWithValue("@ProgrammeName", txtProgName.Text);
            cmdInsertProgramme.Parameters.AddWithValue("@University", txtUniversity.Text);
            cmdInsertProgramme.Parameters.AddWithValue("@Country", ddlCountry.SelectedValue);
            cmdInsertProgramme.Parameters.AddWithValue("@StartDate", DateTime.Parse(txtStartDate.Text));
            cmdInsertProgramme.Parameters.AddWithValue("@EndDate", DateTime.Parse(txtEndDate.Text));
            cmdInsertProgramme.Parameters.AddWithValue("@Deadline", DateTime.Parse(txtDeadline.Text));
            cmdInsertProgramme.Parameters.AddWithValue("@IntakeSession", txtIntakeSession.Text);
            cmdInsertProgramme.Parameters.AddWithValue("@OpenTo", cblOpenTo.SelectedValue);
            cmdInsertProgramme.ExecuteNonQuery();
            cmdInsertProgramme.Parameters.Clear();

            // Message Box
            string script = "alert('New Programme Added.'); window.location.reload();\n";
            Page.ClientScript.RegisterStartupScript(GetType(), "msgbox", script, true);

            Response.Redirect("frmProgramme.aspx");

            con.Close();  // Close Connection with database
        }
    }
}