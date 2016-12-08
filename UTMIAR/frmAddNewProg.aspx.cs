using System;
using System.Configuration;
using System.Data.SqlClient;
using System.Web.UI;
using Oracle.ManagedDataAccess.Client;

public partial class UTMIAR_frmAddNewProg : System.Web.UI.Page
{
    OracleConnection con = new OracleConnection(ConfigurationManager.ConnectionStrings["MOBILITY.XE"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
    }
    protected void btnSave_Click(object sender, EventArgs e)
    {
        {
            // Declaration
            string strInsertProgramme = "INSERT INTO PROGRAMME (TYPES, PROGNAME, UNIVERSITY, COUNTRY, STARTDATE, ENDDATE, DEADLINE, INTAKESESSION, OPENTO) VALUES (:TYPES, :PROGNAME, :UNIVERSITY, :COUNTRY, :STARTDATE, :ENDDATE, :DEADLINE, :INTAKESESSION, :OPENTO)";
   
            con.Open();  // Open Connection with database

            OracleCommand cmd = new OracleCommand();
            cmd.CommandText = strInsertProgramme;
            cmd.Parameters.Add(new OracleParameter("TYPES", ddlTypes.Text));
            cmd.Parameters.Add(new OracleParameter("PROGNAME", txtProgName.Text));
            cmd.Parameters.Add(new OracleParameter("UNIVERSITY", txtUniversity.Text));
            cmd.Parameters.Add(new OracleParameter("COUNTRY", ddlCountry.SelectedValue));
            cmd.Parameters.Add(new OracleParameter("STARTDATE", DateTime.ParseExact(txtStartDate.Text, "dd/MM/yyyy", null)));//txtStartDate.Text
            cmd.Parameters.Add(new OracleParameter("ENDDATE", DateTime.ParseExact(txtEndDate.Text, "dd/MM/yyyy", null)));//txtEndDate.Text
            cmd.Parameters.Add(new OracleParameter("DEADLINE", DateTime.ParseExact(txtDeadline.Text, "dd/MM/yyyy", null)));//txtDeadline.Text
            cmd.Parameters.Add(new OracleParameter("INTAKESESSION", txtIntakeSession.Text));
            cmd.Parameters.Add(new OracleParameter("OPENTO", cblOpenTo.SelectedValue));
            cmd.Connection = con;
            cmd.ExecuteNonQuery();
            cmd.Parameters.Clear();

            con.Close();  // Close Connection with database

            // Message Box
            string script = "alert('New Programme Added.'); window.location.reload();\n";
            Page.ClientScript.RegisterStartupScript(GetType(), "msgbox", script, true);

            Response.Redirect("frmProgramme.aspx");
        }
    }
}