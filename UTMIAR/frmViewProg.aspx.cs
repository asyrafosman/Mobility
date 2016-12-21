using System;
using System.Configuration;
using System.Data.SqlClient;
using System.Web.UI;
using Oracle.ManagedDataAccess.Client;

public partial class UTMIAR_frmViewProg : System.Web.UI.Page
{
    OracleConnection con = new OracleConnection(ConfigurationManager.ConnectionStrings["MOBILITY.XE"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            // Declaration
            string PROG_PROGID = Session["PROG_PROGID"].ToString();
            String strSelect;
            OracleCommand cmdSelect;
            OracleDataReader drSelect;

            con.Open();  // Open Connection with database

            strSelect = "SELECT PROGID, TYPES, PROGNAME, UNIVERSITY, COUNTRY, STARTDATE, ENDDATE, DEADLINE, STATUS FROM PROGRAMME WHERE PROGID='" + PROG_PROGID + "'";
            cmdSelect = new OracleCommand(strSelect, con);
            drSelect = cmdSelect.ExecuteReader();
            drSelect.Read();

            ddlTypes.Text = drSelect["TYPES"].ToString();
            txtProgName.Text = drSelect["PROGNAME"].ToString();
            txtUniversity.Text = drSelect["UNIVERSITY"].ToString();
            ddlCountry.SelectedValue = drSelect["COUNTRY"].ToString();
            txtStartDate.Text = String.Format("{0:dd-MMM-yyyy}", drSelect["STARTDATE"]);
            txtEndDate.Text = String.Format("{0:dd-MMM-yyyy}", drSelect["ENDDATE"]);
            txtDeadline.Text = String.Format("{0:dd-MMM-yyyy}", drSelect["DEADLINE"]);

            con.Close();  // Close Connection with database
        }
    }

    protected void btnDraft_Click(object sender, EventArgs e)
    {
        string PROG_PROGID = Session["PROG_PROGID"].ToString();
        string strInsertProgramme = "UPDATE PROGRAMME SET TYPES = :TYPES, PROGNAME = :PROGNAME, UNIVERSITY = :UNIVERSITY, COUNTRY = :COUNTRY, STARTDATE = :STARTDATE, ENDDATE = :ENDDATE, DEADLINE = :DEADLINE, STATUS = :STATUS WHERE PROGID = :PROGID";

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
        cmd.Parameters.Add(new OracleParameter("PROGID", PROG_PROGID));
        cmd.Connection = con;
        cmd.ExecuteNonQuery();
        cmd.Parameters.Clear();

        con.Close();  // Close Connection with database

        // Message Box
        string script = "alert('New Programme Drafted.'); window.location.reload();\n";
        Page.ClientScript.RegisterStartupScript(GetType(), "msgbox", script, true);

        Response.Redirect("frmProgramme.aspx");
    }

    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        string PROG_PROGID = Session["PROG_PROGID"].ToString();
        // Declaration
        string strInsertProgramme = "UPDATE PROGRAMME SET TYPES = :TYPES, PROGNAME = :PROGNAME, UNIVERSITY = :UNIVERSITY, COUNTRY = :COUNTRY, STARTDATE = :STARTDATE, ENDDATE = :ENDDATE, DEADLINE = :DEADLINE, STATUS = :STATUS WHERE PROGID = :PROGID";

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
        cmd.Parameters.Add(new OracleParameter("PROGID", PROG_PROGID));
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