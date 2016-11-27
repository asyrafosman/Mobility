using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class UTMID_frmViewReport : System.Web.UI.Page
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
        Session["acadUserIC"] = "950405055261";
        Session["acadUserDoB"] = "05-04-1995";
        Session["acadUserReligion"] = "1-Islam";
        Session["acadUserRace"] = "A-Melayu Semenanjung";
        Session["acadUserCitizenship"] = "MAL-Malaysia";
        Session["acadUserNextOfKin"] = "OSMAN BIN ABDUL LATIFF";
        Session["acadUserEmergencyContact"] = "0123039064";
        Session["acadUserAddress"] = "NO. 2, JALAN BBI 5, TAMAN BUKIT BERUANG INDAH, 75450, MELAKA";
        Session["acadUserPassport"] = "1234567890";
        Session["acadUserPassportEx"] = "31/12/2020";
        Session["acadUserCGPA"] = "3.98";
        Session["acadUserStatus"] = "Active";
        Session["acadUserGraduation"] = "2018";
        Session["acadUserField"] = "-";

        Session["acadProgType"] = "Student Exchange";
        Session["acadProgName"] = "-";
        Session["acadProgUniversity"] = "Seoul National University";
        Session["acadProgCountry"] = "South Korea";
        Session["acadProgStartDate"] = "01-03-2017";
        Session["acadProgEndDate"] = "30-06-2017";

        Session["acadFinancialFee"] = "3000";
        Session["acadFinancialTransportation"] = "2000";
        Session["acadFinancialAccommodation"] = "1000";
        Session["acadFinancialMeal"] = "2000";
        Session["acadFinancialContigency"] = "1500";
        Session["acadFinancialTotalAllocated"] = "3000";

        if (!IsPostBack)
        {
            string sesisem = Session["acadUserSs"].ToString();
            showForm();
        }
    }
    protected void showForm()
    {
        //imgPhoto.InnerHtml = "<img src=\"../Styles/images/PhotoStudent.ashx.jpeg\" class=\"img-profile\" width=\"100\" alt=\"profileimage\" />";
        lblName.Text = Session["acadUserNm"].ToString();
        lblFaculty.Text = Session["acadUserFn"].ToString();
        lblMatric.Text = Session["acadUserMt"].ToString();
        lblDoB.Text = Session["acadUserDoB"].ToString();

        lblProgType.Text = Session["acadProgType"].ToString();
        lblProgName.Text = Session["acadProgName"].ToString();
        lblDestination.Text = Session["acadProgUniversity"].ToString();
    }
}