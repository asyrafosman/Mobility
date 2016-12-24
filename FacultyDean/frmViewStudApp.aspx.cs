using System;
using System.Configuration;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Oracle.ManagedDataAccess.Client;
using System.Data;
using System.Net;

public partial class FacultyDean_frmViewStudApp : System.Web.UI.Page
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
        Session["acadStudSv"] = dr["VER_SVID"].ToString();
        Session["acadProgAAComment"] = dr["VER_SVCOMMENT"].ToString();
        Session["acadProgAADate"] = String.Format("{0:dd-MMM-yyyy}", dr["VER_SVDATE"]);

        con.Close();

        if (!IsPostBack)
        {
            string sesisem = Session["acadStudSs"].ToString();
            showProfile();
            BindRepeater();
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

        lblAAName.Text = Session["acadStudSv"].ToString();
        lblAAComment.Text = Session["acadProgAAComment"].ToString();
        lblAADate.Text = Session["acadProgAADate"].ToString();
    }
    private void BindRepeater()
    {
        string APP_APPID = Session["APP_APPID"].ToString();
        using (OracleConnection con = new OracleConnection(ConfigurationManager.ConnectionStrings["MOBILITY.XE"].ConnectionString))
        {
            using (OracleCommand cmd = new OracleCommand("SELECT * FROM APP_SUBJECT WHERE HSUB_APPID = " + APP_APPID, con))
            {
                using (OracleDataAdapter sda = new OracleDataAdapter(cmd))
                {
                    DataTable dt = new DataTable();
                    sda.Fill(dt);
                    rptSubjects.DataSource = dt;
                    rptSubjects.DataBind();
                }
            }
        }
    }
    protected void OpenFile(object sender, EventArgs e)
    {
        con.Open();
        try
        {
            string fileExtension = (sender as LinkButton).CommandArgument;
            string file = Server.MapPath(fileExtension);
            WebClient User = new WebClient();
            Byte[] FileBuffer = User.DownloadData(file);
            if (FileBuffer != null)
            {
                Response.ContentType = "application/pdf";
                Response.AddHeader("content-length", FileBuffer.Length.ToString());
                Response.BinaryWrite(FileBuffer);
            }
        }
        catch (Exception ex)
        {
        }
        con.Close();
    }

    protected void btnRevert_Click(object sender, EventArgs e)
    {
        string APP_APPID = Session["APP_APPID"].ToString();
        string VER_ID = Session["VER_ID"].ToString();
        string sqlUpdate = "UPDATE VERIFICATION SET TDAID = :TDAID, TDADATE = :TDADATE, TDASTATUS = :TDASTATUS, TDACOMMENT = :TDACOMMENT WHERE APPID = :APP_APPID AND VERID = :VER_ID";
        con.Open();
        OracleCommand cmd = new OracleCommand();
        cmd.CommandText = sqlUpdate;
        cmd.Parameters.Add(new OracleParameter("TDAID", Session["acadUserNm"].ToString()));
        cmd.Parameters.Add(new OracleParameter("TDADATE", DateTime.Today.ToString("dd-MMM-yyyy")));
        cmd.Parameters.Add(new OracleParameter("TDASTATUS", "2"));
        cmd.Parameters.Add(new OracleParameter("TDACOMMENT", txtComment.Text));
        cmd.Parameters.Add(new OracleParameter("APP_APPID", APP_APPID));
        cmd.Parameters.Add(new OracleParameter("VER_ID", VER_ID));
        cmd.Connection = con;
        cmd.ExecuteNonQuery();
        cmd.Parameters.Clear();

        sqlUpdate = "UPDATE APPLICATION SET STATUS = :STATUS WHERE APPID = :APP_APPID";
        cmd.CommandText = sqlUpdate;
        cmd.Parameters.Add(new OracleParameter("STATUS", 2));
        cmd.Parameters.Add(new OracleParameter("APP_APPID", APP_APPID));
        cmd.Connection = con;
        cmd.ExecuteNonQuery();
        cmd.Parameters.Clear();
        con.Close();
        Response.Redirect("Dashboard.aspx");
    }

    protected void btnNotRecommend_Click(object sender, EventArgs e)
    {
        string APP_APPID = Session["APP_APPID"].ToString();
        string VER_ID = Session["VER_ID"].ToString();
        string sqlUpdate = "UPDATE VERIFICATION SET TDAID = :TDAID, TDADATE = :TDADATE, TDASTATUS = :TDASTATUS, TDACOMMENT = :TDACOMMENT WHERE APPID = :APP_APPID AND VERID = :VER_ID";
        con.Open();
        OracleCommand cmd = new OracleCommand();
        cmd.CommandText = sqlUpdate;
        cmd.Parameters.Add(new OracleParameter("TDAID", Session["acadUserNm"].ToString()));
        cmd.Parameters.Add(new OracleParameter("TDADATE", DateTime.Today.ToString("dd-MMM-yyyy")));
        cmd.Parameters.Add(new OracleParameter("TDASTATUS", "5"));
        cmd.Parameters.Add(new OracleParameter("TDACOMMENT", txtComment.Text));
        cmd.Parameters.Add(new OracleParameter("APP_APPID", APP_APPID));
        cmd.Parameters.Add(new OracleParameter("VER_ID", VER_ID));
        cmd.Connection = con;
        cmd.ExecuteNonQuery();
        cmd.Parameters.Clear();

        sqlUpdate = "UPDATE APPLICATION SET STATUS = :STATUS WHERE APPID = :APP_APPID";
        cmd.CommandText = sqlUpdate;
        cmd.Parameters.Add(new OracleParameter("STATUS", 4));
        cmd.Parameters.Add(new OracleParameter("APP_APPID", APP_APPID));
        cmd.Connection = con;
        cmd.ExecuteNonQuery();
        cmd.Parameters.Clear();
        con.Close();
        Response.Redirect("Dashboard.aspx");
    }

    protected void btnRecommend_Click(object sender, EventArgs e)
    {
        string APP_APPID = Session["APP_APPID"].ToString();
        string VER_ID = Session["VER_ID"].ToString();
        string sqlUpdate = null;
        con.Open();
        OracleCommand cmd = new OracleCommand();
        foreach (RepeaterItem item in rptSubjects.Items)
        {
            // Checking the item is a data item
            if (item.ItemType == ListItemType.Item || item.ItemType == ListItemType.AlternatingItem)
            {
                Label HSUB_SUBCODE = item.FindControl("HSUB_SUBCODE") as Label;
                RadioButton Approve = item.FindControl("Approve") as RadioButton;
                if (Approve != null && Approve.Checked)
                {
                    sqlUpdate = "UPDATE HSUBJECT SET STATUS = :STATUS WHERE APPID = :APPID AND SUBJECTCODE = :SUBJECTCODE";
                    cmd.CommandText = sqlUpdate;
                    cmd.Parameters.Add(new OracleParameter("STATUS", "Approve"));
                    cmd.Parameters.Add(new OracleParameter("APPID", APP_APPID));
                    cmd.Parameters.Add(new OracleParameter("SUBJECTCODE", HSUB_SUBCODE));
                    cmd.Connection = con;
                    cmd.ExecuteNonQuery();
                    cmd.Parameters.Clear();
                }
                RadioButton Disapprove = item.FindControl("Disapprove") as RadioButton;
                if (Disapprove != null && Disapprove.Checked)
                {
                    sqlUpdate = "UPDATE HSUBJECT SET STATUS = :STATUS WHERE APPID = :APPID AND SUBJECTCODE = :SUBJECTCODE";
                    cmd.CommandText = sqlUpdate;
                    cmd.Parameters.Add(new OracleParameter("STATUS", "Disapprove"));
                    cmd.Parameters.Add(new OracleParameter("APPID", APP_APPID));
                    cmd.Parameters.Add(new OracleParameter("SUBJECTCODE", HSUB_SUBCODE));
                    cmd.Connection = con;
                    cmd.ExecuteNonQuery();
                    cmd.Parameters.Clear();
                }
            }
        }

        sqlUpdate = "UPDATE VERIFICATION SET TDAID = :TDAID, TDADATE = :TDADATE, TDASTATUS = :TDASTATUS, TDACOMMENT = :TDACOMMENT, UTMIARSTATUS = :UTMIARSTATUS WHERE APPID = :APP_APPID AND VERID = :VER_ID";
        cmd.CommandText = sqlUpdate;
        cmd.Parameters.Add(new OracleParameter("TDAID", Session["acadUserNm"].ToString()));
        cmd.Parameters.Add(new OracleParameter("TDADATE", DateTime.Today.ToString("dd-MMM-yyyy")));
        cmd.Parameters.Add(new OracleParameter("TDASTATUS", "4"));
        cmd.Parameters.Add(new OracleParameter("TDACOMMENT", txtComment.Text));
        cmd.Parameters.Add(new OracleParameter("UTMIARSTATUS", "0"));
        cmd.Parameters.Add(new OracleParameter("APP_APPID", APP_APPID));
        cmd.Parameters.Add(new OracleParameter("VER_ID", VER_ID));
        cmd.Connection = con;
        cmd.ExecuteNonQuery();
        cmd.Parameters.Clear();
        con.Close();
        Response.Redirect("Dashboard.aspx");
    }
}