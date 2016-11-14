using System;

public partial class UTMI_frmViewStudent : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Session["acadUserSs"] = "201620171";
        Session["acadUserNm"] = "MOHAMAD ASYRAF BIN OSMAN";
        Session["acadUserPr"] = "Bachelor Of Computer Science (Software Engineering)";
        Session["acadUserFn"] = "Computing";
        Session["acadUserMt"] = "A14CS0053";
        Session["acadUserBs"] = "5";
        Session["acadUserNs"] = "8";
        Session["acadUserSv"] = "Dr. Radziah Binti Mohamad";
        Session["acadUserTda"] = "Prof. Dr. Habibollah Bin Harun";
        Session["acadUserTs"] = "Taught Course";
        Session["acadUserEm"] = "masyraf96@live.utm.my";
        Session["acadUserTl"] = "0172364838";
        Session["acadProgType"] = "Student Exchange";
        Session["acadProgUniversity"] = "Seoul National University";
        Session["acadProgCountry"] = "South Korea";
        Session["acadProgStartDate"] = "01-03-2017";
        Session["acadProgEndDate"] = "30-06-2017";
        Session["acadProgAAComment"] = "Good.";
        Session["acadProgTDAComment"] = "Excellent.";
        Session["acadProgSystemDate"] = "1/11/2016";
        Session["acadProgSvDate"] = "3/11/2016";
        Session["acadProgTdaDate"] = "6/11/2016";
        Session["acadProgUtmiArDate"] = "8/11/2016";
        Session["acadProgUtmiDDate"] = "10/11/2016";
        Session["acadProgTncaaDate"] = "12/11/2016";
        Session["acadProgUtmiAr"] = "Siti Rahimah Mohd Yusop";
        Session["acadProgUtmiD"] = "Prof Dr Nor Haniza Sarmin";
        Session["acadProgTncaa"] = "Prof Dr Rose Alinda Alias";

        Session["statusSystem"] = "Saved";
        Session["statusAa"] = "Reviewed";
        Session["statusTda"] = "Recommended";
        Session["statusUtmiAr"] = "In Process";
        Session["statusUtmiD"] = "Revert";
        Session["statusTncaa"] = "Not Approved";

        if (!IsPostBack)
        {
            string sesisem = Session["acadUserSs"].ToString();
            showProfile();
        }
    }

    protected void showProfile()
    {
        imgPhoto.InnerHtml = "<img src=\"../Styles/images/PhotoStudent.ashx.jpeg\" class=\"img-profile\" width=\"100\" alt=\"profileimage\" />";
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

        if (Session["statusSystem"].ToString() == "Saved")
        {
            lblStatusSystem.Text = "<span class=\"label label-success\">Saved</span>";
        }
        lblSystemDate.Text = Session["acadProgSystemDate"].ToString();

        if (Session["statusAa"].ToString() == "In Process")
        {
            lblStatusAA.Text = "<span class=\"label label-warning\">In Process</span>";
        }
        if (Session["statusAa"].ToString() == "Reviewed")
        {
            lblStatusAA.Text = "<span class=\"label label-success\">Reviewed</span>";
        }
        if (Session["statusAa"].ToString() == "Revert")
        {
            lblStatusAA.Text = "<span class=\"label label-primary\">Need to Modify</span>";
        }
        lblAAName.Text = Session["acadUserSv"].ToString();
        lblAADate.Text = Session["acadProgSvDate"].ToString();

        if (Session["statusTda"].ToString() == "In Process")
        {
            lblStatusTDA.Text = "<span class=\"label label-warning\">In Process</span>";
        }
        if (Session["statusTda"].ToString() == "Recommended")
        {
            lblStatusTDA.Text = "<span class=\"label label-success\">Recommended</span>";
        }
        if (Session["statusTda"].ToString() == "Not Recommended")
        {
            lblStatusTDA.Text = "<span class=\"label label-danger\">Not Recommended</span>";
        }
        if (Session["statusTda"].ToString() == "Revert")
        {
            lblStatusTDA.Text = "<span class=\"label label-primary\">Need to Modify</span>";
        }
        lblTDAName.Text = Session["acadUserTda"].ToString();
        lblTDADate.Text = Session["acadProgTdaDate"].ToString();

        if (Session["statusUtmiAr"].ToString() == "In Process")
        {
            lblStatusUTMIAR.Text = "<span class=\"label label-warning\">In Process</span>";
        }
        if (Session["statusUtmiAr"].ToString() == "Reviewed")
        {
            lblStatusUTMIAR.Text = "<span class=\"label label-success\">Reviewed</span>";
        }
        if (Session["statusUtmiAr"].ToString() == "Revert")
        {
            lblStatusUTMIAR.Text = "<span class=\"label label-primary\">Need to Modify</span>";
        }
        lblUTMIARName.Text = Session["acadProgUtmiAr"].ToString();
        lblUTMIARDate.Text = Session["acadProgUtmiArDate"].ToString();

        if (Session["statusUtmiD"].ToString() == "In Process")
        {
            lblStatusUTMID.Text = "<span class=\"label label-warning\">In Process</span>";
        }
        if (Session["statusUtmiD"].ToString() == "Recommended")
        {
            lblStatusUTMID.Text = "<span class=\"label label-success\">Recommended</span>";
        }
        if (Session["statusUtmiD"].ToString() == "Not Recommended")
        {
            lblStatusUTMID.Text = "<span class=\"label label-danger\">Not Recommended</span>";
        }
        if (Session["statusUtmiD"].ToString() == "Revert")
        {
            lblStatusUTMID.Text = "<span class=\"label label-primary\">Need to Modify</span>";
        }
        lblUTMIDName.Text = Session["acadProgUtmiD"].ToString();
        lblUTMIDDate.Text = Session["acadProgUtmiDDate"].ToString();

        if (Session["statusTncaa"].ToString() == "In Process")
        {
            lblStatusTNCAA.Text = "<span class=\"label label-warning\">In Process</span>";
        }
        if (Session["statusTncaa"].ToString() == "Approved")
        {
            lblStatusTNCAA.Text = "<span class=\"label label-success\">Approved</span>";
        }
        if (Session["statusTncaa"].ToString() == "Not Approved")
        {
            lblStatusTNCAA.Text = "<span class=\"label label-danger\">Not Approved</span>";
        }
        lblTNCAAName.Text = Session["acadProgTncaa"].ToString();
        lblTNCAADate.Text = Session["acadProgTncaaDate"].ToString();
    }
}