using System;
using System.Configuration;
using System.Data.SqlClient;
using System.Web.UI;
using Oracle.ManagedDataAccess.Client;

public partial class UTMIAR_frmViewReport : System.Web.UI.Page
{
    OracleConnection con = new OracleConnection(ConfigurationManager.ConnectionStrings["MOBILITY.XE"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        // Declaration
        string APP_APPID = Session["APP_APPID"].ToString();

        string sql = "SELECT * FROM APP_REPORT WHERE APP_APPID = " + APP_APPID;
        con.Open();
        OracleCommand cmd = new OracleCommand();
        cmd.CommandText = sql;
        cmd.Connection = con;
        OracleDataReader dr = null;
        dr = cmd.ExecuteReader();
        dr.Read();
        Session["acadStudMt"] = dr["APP_MATRIC"].ToString();
        Session["acadStudNm"] = dr["STUD_NAME"].ToString();
        Session["acadStudDoB"] = String.Format("{0:dd-MMM-yyyy}", dr["STUD_DOB"]);
        Session["acadStudIC"] = dr["STUD_IC"].ToString();
        Session["acadStudTl"] = dr["STUD_CONTACT"].ToString();
        Session["acadStudEm"] = dr["STUD_EMAIL"].ToString();
        Session["acadStudReligion"] = dr["STUD_RELIGION"].ToString();
        Session["acadStudCitizenship"] = dr["STUD_CITIZEN"].ToString();
        Session["acadStudRace"] = dr["STUD_RACE"].ToString();
        Session["acadStudAddress"] = dr["STUD_ADDRESS"].ToString();
        Session["acadStudNextOfKin"] = dr["STUD_KIN"].ToString();
        Session["acadStudEmergencyContact"] = dr["STUD_EMERCONT"].ToString();
        Session["acadStudKinAddress"] = dr["STUD_KINADDRESS"].ToString();

        Session["acadStudSs"] = "201620171";
        Session["acadStudPr"] = "Bachelor Of Computer Science (Software Engineering)";
        Session["acadStudFn"] = "Computing";
        Session["acadStudBs"] = "5";
        Session["acadStudNs"] = "8";
        Session["acadStudPassport"] = "1234567890";
        Session["acadStudPassportEx"] = "31/12/2020";
        Session["acadStudCGPA"] = "3.98";
        Session["acadStudStatus"] = "Active";
        Session["acadStudGraduation"] = "2018";
        Session["acadStudField"] = "-";

        Session["acadProgType"] = dr["PROG_TYPES"].ToString();
        Session["acadProgName"] = dr["PROG_NAME"].ToString();
        Session["acadProgUniversity"] = dr["PROG_UNIVERSITY"].ToString();
        Session["acadProgCountry"] = dr["PROG_COUNTRY"].ToString();
        Session["acadProgStartDate"] = String.Format("{0:dd-MMM-yyyy}", dr["PROG_STARTDATE"]);
        Session["acadProgEndDate"] = String.Format("{0:dd-MMM-yyyy}", dr["PROG_ENDDATE"]);

        Session["acadReportQuan"] = dr["REP_QUAN"].ToString();
        Session["acadReportQual"] = dr["REP_QUAL"].ToString();
        Session["acadReportTest"] = dr["REP_TEST"].ToString();

        con.Close();  // Close Connection with database

        if (!IsPostBack)
        {
            string sesisem = Session["acadStudSs"].ToString();
            showReport();
        }
    }

    protected void showReport()
    {
        lblName.Text = Session["acadStudNm"].ToString();
        lblFaculty.Text = Session["acadStudFn"].ToString();
        lblMatric.Text = Session["acadStudMt"].ToString();
        lblDoB.Text = Session["acadStudDoB"].ToString();

        lblProgType.Text = Session["acadProgType"].ToString();
        lblProgName.Text = Session["acadProgName"].ToString();
        lblDestination.Text = Session["acadProgUniversity"].ToString();

        lblQuantitative.Text = Session["acadReportQuan"].ToString();
        lblQualitative.Text = Session["acadReportQual"].ToString();
        lblTestimonials.Text = Session["acadReportTest"].ToString();

        lblContPerson.Text = Session["acadStudNm"].ToString();
        lblContNum.Text = Session["acadStudTl"].ToString();
    }
}