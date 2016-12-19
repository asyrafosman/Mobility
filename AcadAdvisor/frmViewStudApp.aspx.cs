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
        Session["acadUserMt"] = dr["STUD_MATRIC"].ToString();
        Session["acadUserNm"] = dr["STUD_NAME"].ToString();
        Session["acadUserTl"] = dr["STUD_CONTACT"].ToString();
        Session["acadUserEm"] = dr["STUD_EMAIL"].ToString();
        Session["acadUserSv"] = dr["VER_SVID"].ToString();

        Session["acadUserSs"] = "201620171";
        Session["acadUserPr"] = "Bachelor Of Computer Science (Software Engineering)";
        Session["acadUserFn"] = "Computing";
        Session["acadUserBs"] = "5";
        Session["acadUserNs"] = "8";
        Session["acadUserTs"] = "Taught Course";

        Session["acadProgType"] = dr["PROG_TYPES"].ToString();
        Session["acadProgUniversity"] = dr["PROG_UNIVERSITY"].ToString();
        Session["acadProgCountry"] = dr["PROG_COUNTRY"].ToString();
        Session["acadProgStartDate"] = String.Format("{0:dd-MMM-yyyy}", dr["PROG_STARTDATE"]);
        Session["acadProgEndDate"] = String.Format("{0:dd-MMM-yyyy}", dr["PROG_ENDDATE"]);

        Session["VER_ID"] = dr["VER_ID"].ToString();
        con.Close();

        if (!IsPostBack)
        {
            string sesisem = Session["acadUserSs"].ToString();
            showProfile();
        }
    }
    protected void showProfile()
    {
        imgPhoto.InnerHtml = "<img src=\"../Styles/images/nophoto.png\" class=\"img-profile\" width=\"100\" alt=\"profileimage\" />";
        lblName.Text = Session["acadUserNm"].ToString();
        lblProgramme.Text = Session["acadUserPr"].ToString();
        lblFaculty.Text = Session["acadUserFn"].ToString();
        lblMatric.Text = Session["acadUserMt"].ToString();
        lblBilSemester.Text = Session["acadUserBs"].ToString() + " / " + Session["acadUserNs"].ToString();
        lblAA.Text = Session["acadUserSv"].ToString();
        lblToS.Text = Session["acadUserTs"].ToString() + " (Full Time)";
        lblEmail.Text = Session["acadUserEm"].ToString();
        lblPhone.Text = Session["acadUserTl"].ToString();
        lblProgType.Text = Session["acadProgType"].ToString();
        lblUniversity.Text = Session["acadProgUniversity"].ToString();
        lblCountry.Text = Session["acadProgCountry"].ToString();
        lblStartDate.Text = Session["acadProgStartDate"].ToString();
        lblEndDate.Text = Session["acadProgEndDate"].ToString();
    }

    protected void btnRevert_Click(object sender, EventArgs e)
    {
        Response.Redirect("Dashboard.aspx");
    }

    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        string APP_APPID = Session["APP_APPID"].ToString();
        string VER_ID = Session["VER_ID"].ToString();
        string sqlUpdate = "UPDATE VERIFICATION SET SVID = :ID, SVDATE = :TODAYSDATE, SVSTATUS = :SVSTATUS, SVCOMMENT = :COMMENTTEXT, TDASTATUS = :TDASTATUS WHERE APPID = :APP_APPID AND VERID = :VER_ID";
        con.Open();
        OracleCommand cmd = new OracleCommand();
        cmd.CommandText = sqlUpdate;
        cmd.Parameters.Add(new OracleParameter("ID", "1"));
        cmd.Parameters.Add(new OracleParameter("TODAYSDATE", DateTime.Today.ToString("dd-MMM-yyyy")));
        cmd.Parameters.Add(new OracleParameter("SVSTATUS", "3"));
        cmd.Parameters.Add(new OracleParameter("COMMENTTEXT", txtComment.Text));
        cmd.Parameters.Add(new OracleParameter("TDASTATUS", "0"));
        cmd.Parameters.Add(new OracleParameter("APP_APPID", APP_APPID));
        cmd.Parameters.Add(new OracleParameter("VER_ID", VER_ID));
        cmd.Connection = con;
        cmd.ExecuteNonQuery();
        cmd.Parameters.Clear();
        con.Close();
        Response.Redirect("Dashboard.aspx");
    }
}