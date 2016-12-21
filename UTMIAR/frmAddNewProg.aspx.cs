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
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        {
            // Declaration
            string strInsertProgramme = "INSERT INTO PROGRAMME (TYPES, PROGNAME, UNIVERSITY, COUNTRY, STARTDATE, ENDDATE, DEADLINE, STATUS) VALUES (:TYPES, :PROGNAME, :UNIVERSITY, :COUNTRY, :STARTDATE, :ENDDATE, :DEADLINE, :STATUS)";
   
            con.Open();  // Open Connection with database

            OracleCommand cmd = new OracleCommand();
            cmd.CommandText = strInsertProgramme;
            cmd.Parameters.Add(new OracleParameter("TYPES", ddlTypes.Text));
            cmd.Parameters.Add(new OracleParameter("PROGNAME", txtProgName.Text));
            cmd.Parameters.Add(new OracleParameter("UNIVERSITY", txtUniversity.Text));
            cmd.Parameters.Add(new OracleParameter("COUNTRY", ddlCountry.SelectedValue));
            cmd.Parameters.Add(new OracleParameter("STARTDATE", DateTime.ParseExact(txtStartDate.Text, "dd-MMM-yyyy", null)));
            cmd.Parameters.Add(new OracleParameter("ENDDATE", DateTime.ParseExact(txtEndDate.Text, "dd-MMM-yyyy", null)));
            cmd.Parameters.Add(new OracleParameter("DEADLINE", DateTime.ParseExact(txtDeadline.Text, "dd-MMM-yyyy", null)));
            cmd.Parameters.Add(new OracleParameter("STATUS", "1"));
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

    protected void btnDraft_Click(object sender, EventArgs e)
    {
        // Declaration
        string strInsertProgramme = "INSERT INTO PROGRAMME (TYPES, PROGNAME, UNIVERSITY, COUNTRY, STARTDATE, ENDDATE, DEADLINE, STATUS) VALUES (:TYPES, :PROGNAME, :UNIVERSITY, :COUNTRY, :STARTDATE, :ENDDATE, :DEADLINE, :STATUS)";

        con.Open();  // Open Connection with database

        OracleCommand cmd = new OracleCommand();
        cmd.CommandText = strInsertProgramme;
        cmd.Parameters.Add(new OracleParameter("TYPES", ddlTypes.Text));
        cmd.Parameters.Add(new OracleParameter("PROGNAME", txtProgName.Text));
        cmd.Parameters.Add(new OracleParameter("UNIVERSITY", txtUniversity.Text));
        cmd.Parameters.Add(new OracleParameter("COUNTRY", ddlCountry.SelectedValue));
        cmd.Parameters.Add(new OracleParameter("STARTDATE", DateTime.ParseExact(txtStartDate.Text, "dd-MMM-yyyy", null)));
        cmd.Parameters.Add(new OracleParameter("ENDDATE", DateTime.ParseExact(txtEndDate.Text, "dd-MMM-yyyy", null)));
        cmd.Parameters.Add(new OracleParameter("DEADLINE", DateTime.ParseExact(txtDeadline.Text, "dd-MMM-yyyy", null)));
        cmd.Parameters.Add(new OracleParameter("STATUS", "0"));
        cmd.Connection = con;
        cmd.ExecuteNonQuery();
        cmd.Parameters.Clear();

        con.Close();  // Close Connection with database

        // Message Box
        string script = "alert('New Programme Drafted.'); window.location.reload();\n";
        Page.ClientScript.RegisterStartupScript(GetType(), "msgbox", script, true);

        Response.Redirect("frmProgramme.aspx");
    }
}