using System;
using System.Configuration;
using Oracle.ManagedDataAccess.Client;

public partial class UTMIAR_frmViewStatus : System.Web.UI.Page
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

        Session["statusAa"] = dr["VER_SVSTATUS"].ToString();
        Session["statusDean"] = dr["VER_TDASTATUS"].ToString();
        Session["statusUtmiAr"] = dr["VER_UTMIARSTATUS"].ToString();
        Session["statusUtmiD"] = dr["VER_UTMIDSTATUS"].ToString();
        Session["statusTncaa"] = dr["VER_TNCAASTATUS"].ToString();

        Session["acadProgSystemDate"] = String.Format("{0:dd-MMM-yyyy}", dr["VER_SYSDATE"]);
        Session["acadProgSvDate"] = String.Format("{0:dd-MMM-yyyy}", dr["VER_SVDATE"]);
        Session["acadProgDeanDate"] = String.Format("{0:dd-MMM-yyyy}", dr["VER_TDADATE"]);
        Session["acadProgUtmiArDate"] = String.Format("{0:dd-MMM-yyyy}", dr["VER_UTMIARDATE"]);
        Session["acadProgUtmiDDate"] = String.Format("{0:dd-MMM-yyyy}", dr["VER_UTMIDDATE"]);
        Session["acadProgTncaaDate"] = String.Format("{0:dd-MMM-yyyy}", dr["VER_TNCAADATE"]);

        Session["acadStudSv"] = dr["VER_SVID"].ToString();
        Session["acadStudDean"] = dr["VER_TDAID"].ToString();
        Session["acadProgUtmiAr"] = dr["VER_UTMIARID"].ToString();//"Siti Rahimah Mohd Yusop";
        Session["acadProgUtmiD"] = dr["VER_UTMIDID"].ToString(); //"Prof Dr Nor Haniza Sarmin";
        Session["acadProgTncaa"] = dr["VER_TNCAAID"].ToString(); //"Prof Dr Rose Alinda Alias";

        con.Close();

        if (!IsPostBack)
        {
            string sesisem = Session["acadStudSs"].ToString();
            showProfile();
            showStatus();
        }
    }

    protected void showProfile()
    {
        imgPhoto.InnerHtml = "<img src=\"../Styles/images/nophoto.png\" class=\"img-profile\" width=\"100\" alt=\"profileimage\" />";
        lblName.Text = Session["acadStudNm"].ToString();
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

    public void showStatus()
    {
        lblStatusSystem.Text = "<span class=\"label label-success\">Saved</span>";
        lblSystemDate.Text = Session["acadProgSystemDate"].ToString();

        if (Session["statusAa"].ToString() == "0")
        {
            lblStatusAA.Text = "<span class=\"label label-warning\">In Process</span>";
        }
        if (Session["statusAa"].ToString() == "3")
        {
            lblStatusAA.Text = "<span class=\"label label-success\">Reviewed</span>";
        }
        if (Session["statusAa"].ToString() == "2")
        {
            lblStatusAA.Text = "<span class=\"label label-primary\">Need to Modify</span>";
        }
        lblAAName.Text = Session["acadStudSv"].ToString();
        lblAADate.Text = Session["acadProgSvDate"].ToString();

        if (Session["statusDean"].ToString() == "0")
        {
            lblStatusDean.Text = "<span class=\"label label-warning\">In Process</span>";
        }
        if (Session["statusDean"].ToString() == "4")
        {
            lblStatusDean.Text = "<span class=\"label label-success\">Recommended</span>";
        }
        if (Session["statusDean"].ToString() == "5")
        {
            lblStatusDean.Text = "<span class=\"label label-danger\">Not Recommended</span>";
        }
        if (Session["statusDean"].ToString() == "2")
        {
            lblStatusDean.Text = "<span class=\"label label-primary\">Need to Modify</span>";
        }
        lblDeanName.Text = Session["acadStudDean"].ToString();
        lblDeanDate.Text = Session["acadProgDeanDate"].ToString();

        if (Session["statusUtmiAr"].ToString() == "0")
        {
            lblStatusUTMIAR.Text = "<span class=\"label label-warning\">In Process</span>";
        }
        if (Session["statusUtmiAr"].ToString() == "3")
        {
            lblStatusUTMIAR.Text = "<span class=\"label label-success\">Reviewed</span>";
        }
        if (Session["statusUtmiAr"].ToString() == "2")
        {
            lblStatusUTMIAR.Text = "<span class=\"label label-primary\">Need to Modify</span>";
        }
        lblUTMIARName.Text = Session["acadProgUtmiAr"].ToString();
        lblUTMIARDate.Text = Session["acadProgUtmiArDate"].ToString();

        if (Session["statusUtmiD"].ToString() == "0")
        {
            lblStatusUTMID.Text = "<span class=\"label label-warning\">In Process</span>";
        }
        if (Session["statusUtmiD"].ToString() == "4")
        {
            lblStatusUTMID.Text = "<span class=\"label label-success\">Recommended</span>";
        }
        if (Session["statusUtmiD"].ToString() == "5")
        {
            lblStatusUTMID.Text = "<span class=\"label label-danger\">Not Recommended</span>";
        }
        if (Session["statusUtmiD"].ToString() == "2")
        {
            lblStatusUTMID.Text = "<span class=\"label label-primary\">Need to Modify</span>";
        }
        lblUTMIDName.Text = Session["acadProgUtmiD"].ToString();
        lblUTMIDDate.Text = Session["acadProgUtmiDDate"].ToString();

        if (Session["statusTncaa"].ToString() == "0")
        {
            lblStatusTNCAA.Text = "<span class=\"label label-warning\">In Process</span>";
        }
        if (Session["statusTncaa"].ToString() == "6")
        {
            lblStatusTNCAA.Text = "<span class=\"label label-success\">Approved</span>";
        }
        if (Session["statusTncaa"].ToString() == "7")
        {
            lblStatusTNCAA.Text = "<span class=\"label label-danger\">Not Approved</span>";
        }
        lblTNCAAName.Text = Session["acadProgTncaa"].ToString();
        lblTNCAADate.Text = Session["acadProgTncaaDate"].ToString();
    }
}