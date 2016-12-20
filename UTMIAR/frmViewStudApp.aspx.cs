using System;
using System.Configuration;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Oracle.ManagedDataAccess.Client;

public partial class UTMIAR_frmViewStudApp : System.Web.UI.Page
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
        Session["acadStudDean"] = dr["VER_TDAID"].ToString();
        Session["acadProgDeanComment"] = dr["VER_TDACOMMENT"].ToString();
        Session["acadProgDeanDate"] = String.Format("{0:dd-MMM-yyyy}", dr["VER_TDADATE"]);
       
        Session["acadFinancialFee"] = dr["FIN_FEE"].ToString();
        Session["acadFinancialTransportation"] = dr["FIN_TRAN"].ToString();
        Session["acadFinancialAccommodation"] = dr["FIN_ACCO"].ToString();
        Session["acadFinancialMeal"] = dr["FIN_MEAL"].ToString();
        Session["acadFinancialContigency"] = dr["FIN_CONT"].ToString();
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

        lblAAName.Text = Session["acadStudSv"].ToString();
        lblAAComment.Text = Session["acadProgAAComment"].ToString();
        lblAADate.Text = Session["acadProgAADate"].ToString();
        lblDeanName.Text = Session["acadStudDean"].ToString();
        lblDeanComment.Text = Session["acadProgDeanComment"].ToString();
        lblDeanDate.Text = Session["acadProgDeanDate"].ToString();

        lblFee.Text = string.Format("{0:RM #,#.##}", int.Parse(Session["acadFinancialFee"].ToString()));
        lblTransportation.Text = string.Format("{0:RM #,#.##}", int.Parse(Session["acadFinancialTransportation"].ToString()));
        lblAccommodation.Text = string.Format("{0:RM #,#.##}", int.Parse(Session["acadFinancialAccommodation"].ToString()));
        lblMeal.Text = string.Format("{0:RM #,#.##}", int.Parse(Session["acadFinancialMeal"].ToString()));
        lblContingency.Text = string.Format("{0:RM #,#.##}", int.Parse(Session["acadFinancialContigency"].ToString()));
        int total = int.Parse(Session["acadFinancialFee"].ToString()) + int.Parse(Session["acadFinancialTransportation"].ToString()) + int.Parse(Session["acadFinancialAccommodation"].ToString()) + int.Parse(Session["acadFinancialMeal"].ToString()) + int.Parse(Session["acadFinancialContigency"].ToString());
        lblTotalProposed.Text = string.Format("{0:RM #,#.##}", total);
    }

    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        string APP_APPID = Session["APP_APPID"].ToString();
        string VER_ID = Session["VER_ID"].ToString();
        string sqlUpdate = "UPDATE VERIFICATION SET UTMIARID = :UTMIARID, UTMIARDATE = :UTMIARDATE, UTMIARSTATUS = :UTMIARSTATUS, UTMIARCOMMENT = :UTMIARCOMMENT, UTMIARFUND = :UTMIARFUND, UTMIDSTATUS = :UTMIDSTATUS WHERE APPID = :APPID AND VERID = :VERID";
        con.Open();
        OracleCommand cmd = new OracleCommand();
        cmd.CommandText = sqlUpdate;
        cmd.Parameters.Add(new OracleParameter("UTMIARID", "1"));
        cmd.Parameters.Add(new OracleParameter("UTMIARDATE", DateTime.Today.ToString("dd-MMM-yyyy")));
        cmd.Parameters.Add(new OracleParameter("UTMIARSTATUS", "3"));
        cmd.Parameters.Add(new OracleParameter("UTMIARCOMMENT", txtComment.Text));
        cmd.Parameters.Add(new OracleParameter("UTMIARFUND", txtTotalAllocated.Text));
        cmd.Parameters.Add(new OracleParameter("UTMIDSTATUS", "0"));
        cmd.Parameters.Add(new OracleParameter("APPID", APP_APPID));
        cmd.Parameters.Add(new OracleParameter("VERID", VER_ID));
        cmd.Connection = con;
        cmd.ExecuteNonQuery();
        cmd.Parameters.Clear();
        con.Close();
        Response.Redirect("frmInbox.aspx");
    }

    protected void btnRevert_Click(object sender, EventArgs e)
    {
        string APP_APPID = Session["APP_APPID"].ToString();
        string VER_ID = Session["VER_ID"].ToString();
        string sqlUpdate = "UPDATE VERIFICATION SET UTMIARID = :UTMIARID, UTMIARDATE = :UTMIARDATE, UTMIARSTATUS = :UTMIARSTATUS, UTMIARCOMMENT = :UTMIARCOMMENT, UTMIARFUND = :UTMIARFUND, UTMIDSTATUS = :UTMIDSTATUS WHERE APPID = :APPID AND VERID = :VERID";
        con.Open();
        OracleCommand cmd = new OracleCommand();
        cmd.CommandText = sqlUpdate;
        cmd.Parameters.Add(new OracleParameter("UTMIARID", "1"));
        cmd.Parameters.Add(new OracleParameter("UTMIARDATE", DateTime.Today.ToString("dd-MMM-yyyy")));
        cmd.Parameters.Add(new OracleParameter("UTMIARSTATUS", "2"));
        cmd.Parameters.Add(new OracleParameter("UTMIARCOMMENT", txtComment.Text));
        cmd.Parameters.Add(new OracleParameter("UTMIARFUND", txtTotalAllocated.Text));
        cmd.Parameters.Add(new OracleParameter("APPID", APP_APPID));
        cmd.Parameters.Add(new OracleParameter("VERID", VER_ID));
        cmd.Connection = con;
        cmd.ExecuteNonQuery();
        cmd.Parameters.Clear();
        con.Close();
        Response.Redirect("frmInbox.aspx");
    }
}