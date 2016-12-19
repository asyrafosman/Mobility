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
        Session["acadUserMt"] = dr["STUD_MATRIC"].ToString();
        Session["acadUserNm"] = dr["STUD_NAME"].ToString();
        Session["acadUserTl"] = dr["STUD_CONTACT"].ToString();
        Session["acadUserEm"] = dr["STUD_EMAIL"].ToString();

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

        Session["acadUserSv"] = dr["VER_SVID"].ToString();
        Session["acadUserDean"] = dr["VER_TDAID"].ToString();
        Session["acadProgUtmiAr"] = dr["VER_UTMIARID"].ToString();//"Siti Rahimah Mohd Yusop";
        Session["acadProgUtmiD"] = dr["VER_UTMIDID"].ToString(); //"Prof Dr Nor Haniza Sarmin";
        Session["acadProgTncaa"] = dr["VER_TNCAAID"].ToString(); //"Prof Dr Rose Alinda Alias";

        con.Close();

        if (!IsPostBack)
        {
            string sesisem = Session["acadUserSs"].ToString();
            showProfile();
            showStatus();
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
        lblAAName.Text = Session["acadUserSv"].ToString();
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
        lblDeanName.Text = Session["acadUserDean"].ToString();
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