using System;
using System.Configuration;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Oracle.ManagedDataAccess.Client;

public partial class AcadAdvisor_frmViewStudApp : System.Web.UI.Page
{
    OracleConnection con = new OracleConnection(ConfigurationManager.ConnectionStrings["MOBILITY.XE"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        string APP_APPID = Session["APP_APPID"].ToString();
        string sql = "SELECT * FROM STUDENT_APP WHERE APP_APPID = " + APP_APPID;
        con.Open();
        OracleCommand cmd = new OracleCommand();
        cmd.CommandText = sql;
        cmd.Connection = con;
        OracleDataReader dr = null;
        dr = cmd.ExecuteReader();
        dr.Read();
        Session["acadStudMt"] = dr["STUD_MATRIC"].ToString();
        Session["acadStudNm"] = dr["STUD_NAME"].ToString();
        Session["acadStudTl"] = dr["STUD_CONTACT"].ToString();
        Session["acadStudEm"] = dr["STUD_EMAIL"].ToString();
        Session["acadStudSv"] = dr["VER_SVID"].ToString();

        Session["acadStudSs"] = "201620171";
        Session["acadStudPr"] = "Bachelor Of Computer Science (Software Engineering)";
        Session["acadStudFn"] = "Computing";
        Session["acadStudBs"] = "5";
        Session["acadStudNs"] = "8";
        Session["acadStudTs"] = "Taught Course";

        Session["acadProgType"] = dr["PROG_TYPES"].ToString();
        Session["acadProgUniversity"] = dr["PROG_UNIVERSITY"].ToString();
        Session["acadProgCountry"] = dr["PROG_COUNTRY"].ToString();
        Session["acadProgStartDate"] = String.Format("{0:dd-MMM-yyyy}", dr["PROG_STARTDATE"]);
        Session["acadProgEndDate"] = String.Format("{0:dd-MMM-yyyy}", dr["PROG_ENDDATE"]);

        Session["VER_ID"] = dr["VER_ID"].ToString();
        con.Close();

        if (!IsPostBack)
        {
            string sesisem = Session["acadStudSs"].ToString();
            showProfile();
        }
    }
    protected void showProfile()
    {
        imgPhoto.InnerHtml = "<img src=\"../Styles/images/nophoto.png\" class=\"img-profile\" width=\"100\" alt=\"profileimage\" />";
        lblName.Text = Session["acadStudNm"].ToString().ToUpper();
        lblProgramme.Text = Session["acadStudPr"].ToString();
        lblFaculty.Text = Session["acadStudFn"].ToString();
        lblMatric.Text = Session["acadStudMt"].ToString();
        lblBilSemester.Text = Session["acadStudBs"].ToString() + " / " + Session["acadStudNs"].ToString();
        lblAA.Text = Session["acadStudSv"].ToString();
        lblToS.Text = Session["acadStudTs"].ToString() + " (Full Time)";
        lblEmail.Text = Session["acadStudEm"].ToString();
        lblPhone.Text = Session["acadStudTl"].ToString();
        lblProgType.Text = Session["acadProgType"].ToString();
        lblUniversity.Text = Session["acadProgUniversity"].ToString();
        lblCountry.Text = Session["acadProgCountry"].ToString();
        lblStartDate.Text = Session["acadProgStartDate"].ToString();
        lblEndDate.Text = Session["acadProgEndDate"].ToString();
    }

    protected void btnRevert_Click(object sender, EventArgs e)
    {
        string APP_APPID = Session["APP_APPID"].ToString();
        string VER_ID = Session["VER_ID"].ToString();
        string sqlUpdate = "UPDATE VERIFICATION SET SVID = :ID, SVDATE = :TODAYSDATE, SVSTATUS = :SVSTATUS, SVCOMMENT = :COMMENTTEXT WHERE APPID = :APP_APPID AND VERID = :VER_ID";
        con.Open();
        OracleCommand cmd = new OracleCommand();
        cmd.CommandText = sqlUpdate;
        cmd.Parameters.Add(new OracleParameter("ID", "1"));
        cmd.Parameters.Add(new OracleParameter("TODAYSDATE", DateTime.Today.ToString("dd-MMM-yyyy")));
        cmd.Parameters.Add(new OracleParameter("SVSTATUS", "2"));
        cmd.Parameters.Add(new OracleParameter("COMMENTTEXT", txtComment.Text));
        cmd.Parameters.Add(new OracleParameter("APP_APPID", APP_APPID));
        cmd.Parameters.Add(new OracleParameter("VER_ID", VER_ID));
        cmd.Connection = con;
        cmd.ExecuteNonQuery();
        cmd.Parameters.Clear();
        con.Close();
        Response.Redirect("Dashboard.aspx");
    }

    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        string APP_APPID = Session["APP_APPID"].ToString();
        string VER_ID = Session["VER_ID"].ToString();
        string sqlUpdate = "UPDATE VERIFICATION SET SVID = :SVID, SVDATE = :SVDATE, SVSTATUS = :SVSTATUS, SVCOMMENT = :SVCOMMENT, TDASTATUS = :TDASTATUS WHERE APPID = :APPID AND VERID = :VERID";
        con.Open();
        OracleCommand cmd = new OracleCommand();
        cmd.CommandText = sqlUpdate;
        cmd.Parameters.Add(new OracleParameter("SVID", "1"));
        cmd.Parameters.Add(new OracleParameter("SVDATE", DateTime.Today.ToString("dd-MMM-yyyy")));
        cmd.Parameters.Add(new OracleParameter("SVSTATUS", "3"));
        cmd.Parameters.Add(new OracleParameter("SVCOMMENT", txtComment.Text));
        cmd.Parameters.Add(new OracleParameter("TDASTATUS", "0"));
        cmd.Parameters.Add(new OracleParameter("APPID", APP_APPID));
        cmd.Parameters.Add(new OracleParameter("VERID", VER_ID));
        cmd.Connection = con;
        cmd.ExecuteNonQuery();
        cmd.Parameters.Clear();
        con.Close();
        Response.Redirect("Dashboard.aspx");
    }
}