using System;
using System.Configuration;
using System.Data.SqlClient;

public partial class UTMID_frmViewStatus : System.Web.UI.Page
{
    private SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["UTMMobility"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        String strSelect;
        SqlCommand cmdSelect;
        SqlDataReader drSelect;
        //id = Session["pengguna"].ToString();
        int id = 1;

        con.Open();  // Open Connection with database

        strSelect = "SELECT SystemDate, SystemStatus, SvId, SvDate, SvStatus, TdaId, TdaDate, TdaStatus, TdaComment, UtmiArId, UtmiArDate, UtmiArStatus, UtmiDId, UtmiDDate, UtmiDStatus, TncaaId, TncaaDate, TncaaStatus from Verification where VerId='" + id + "'";
        cmdSelect = new SqlCommand(strSelect, con);
        drSelect = cmdSelect.ExecuteReader();
        drSelect.Read();

        DateTime systemDate = Convert.ToDateTime(drSelect["SystemDate"].ToString());
        DateTime svDate = Convert.ToDateTime(drSelect["SvDate"].ToString());
        DateTime tdaDate = Convert.ToDateTime(drSelect["TdaDate"].ToString());
        DateTime utmiarDate = Convert.ToDateTime(drSelect["UtmiArDate"].ToString());
        DateTime utmidDate = Convert.ToDateTime(drSelect["UtmiDDate"].ToString());
        DateTime tncaaDate = Convert.ToDateTime(drSelect["TncaaDate"].ToString());
        //DateTime today = DateTime.Now;
        //int x = Convert.ToInt32((today - systemDate).TotalDays);
        //lblDays.Text = x.ToString();

        Session["acadStudSs"] = "201620171";
        Session["acadStudNm"] = "MOHAMAD ASYRAF BIN OSMAN";
        Session["acadStudPr"] = "Bachelor Of Computer Science (Software Engineering)";
        Session["acadStudFn"] = "Computing";
        Session["acadStudMt"] = "A14CS0053";
        Session["acadStudBs"] = "5";
        Session["acadStudNs"] = "8";
        Session["acadStudSv"] = "Dr. Radziah Binti Mohamad";
        Session["acadStudDean"] = "Prof. Dr. Abd. Samad bin Haji Ismail";
        Session["acadStudTs"] = "Taught Course";
        Session["acadStudEm"] = "masyraf96@live.utm.my";
        Session["acadStudTl"] = "0172364838";
        Session["acadProgType"] = "Student Exchange";
        Session["acadProgUniversity"] = "Seoul National University";
        Session["acadProgCountry"] = "South Korea";
        Session["acadProgStartDate"] = "01-03-2017";
        Session["acadProgEndDate"] = "30-06-2017";
        Session["acadProgAAComment"] = "Good.";
        Session["acadProgDeanComment"] = "Excellent.";
        Session["acadProgSystemDate"] = systemDate.ToShortDateString();
        Session["acadProgSvDate"] = svDate.ToShortDateString();
        Session["acadProgDeanDate"] = tdaDate.ToShortDateString();
        Session["acadProgUtmiArDate"] = utmiarDate.ToShortDateString();
        Session["acadProgUtmiDDate"] = utmidDate.ToShortDateString();
        Session["acadProgTncaaDate"] = tncaaDate.ToShortDateString();
        Session["acadProgUtmiAr"] = "Siti Rahimah Mohd Yusop";
        Session["acadProgUtmiD"] = "Prof Dr Nor Haniza Sarmin";
        Session["acadProgTncaa"] = "Prof Dr Rose Alinda Alias";

        Session["statusSystem"] = drSelect["SystemStatus"].ToString();
        Session["statusAa"] = drSelect["SvStatus"].ToString();
        Session["statusDean"] = drSelect["TdaStatus"].ToString();
        Session["statusUtmiAr"] = drSelect["UtmiArStatus"].ToString();
        Session["statusUtmiD"] = drSelect["UtmiDStatus"].ToString();
        Session["statusTncaa"] = drSelect["TncaaStatus"].ToString();

        if (!IsPostBack)
        {
            string sesisem = Session["acadStudSs"].ToString();
            showProfile();
            showStatus();
        }
    }

    protected void showProfile()
    {
        imgPhoto.InnerHtml = "<img src=\"../Styles/images/PhotoStudent.ashx.jpeg\" class=\"img-profile\" width=\"100\" alt=\"profileimage\" />";
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
        if (Session["statusSystem"].ToString() == "1")
        {
            lblStatusSystem.Text = "<span class=\"label label-success\">Saved</span>";
        }
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