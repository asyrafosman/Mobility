using System;
using System.Configuration;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Oracle.ManagedDataAccess.Client;
using System.Data;

public partial class UTMID_frmActivityList : System.Web.UI.Page
{
    OracleConnection con = new OracleConnection(ConfigurationManager.ConnectionStrings["MOBILITY.XE"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        string APP_APPID = Session["APP_APPID"].ToString();
        string sql = "SELECT * FROM STUDENT_ACTIVITY WHERE APP_APPID = " + APP_APPID;
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
        Session["acadStudSv"] = "Pm Dr. Ismail Bin Mat Amin";

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

        Session["acadInfoPhone"] = dr["INFO_PHONENUMBER"].ToString();
        Session["acadInfoAddress"] = dr["INFO_ADDRESS"].ToString();
        Session["acadInfoContName"] = dr["INFO_CONTACTNAME"].ToString();
        Session["acadInfoContRel"] = dr["INFO_CONTACTREL"].ToString();
        Session["acadInfoContPhone"] = dr["INFO_CONTACTPHONE"].ToString();

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

        lblNewPhone.Text = Session["acadInfoPhone"].ToString();
        lblNewAddress.Text = Session["acadInfoAddress"].ToString();
        lblNewConName.Text = Session["acadInfoContName"].ToString();
        lblNewConRelation.Text = Session["acadInfoContRel"].ToString();
        lblNewConPhone.Text = Session["acadInfoContPhone"].ToString();
    }
    private void BindRepeater()
    {
        string APP_APPID = Session["APP_APPID"].ToString();
        using (OracleConnection con = new OracleConnection(ConfigurationManager.ConnectionStrings["MOBILITY.XE"].ConnectionString))
        {
            using (OracleCommand cmd = new OracleCommand("SELECT * FROM ACTIVITY WHERE APPID = " + APP_APPID, con))
            {
                using (OracleDataAdapter sda = new OracleDataAdapter(cmd))
                {
                    DataTable dt = new DataTable();
                    sda.Fill(dt);
                    rptActivities.DataSource = dt;
                    rptActivities.DataBind();
                }
            }
        }
    }
}