using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class UTMIAR_frmViewReport : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Session["acadStudSs"] = "201620171";
        Session["acadStudNm"] = "MOHAMAD ASYRAF BIN OSMAN";
        Session["acadStudPr"] = "Bachelor Of Computer Science (Software Engineering)";
        Session["acadStudFn"] = "Computing";
        Session["acadStudMt"] = "A14CS0053";
        Session["acadStudBs"] = "5";
        Session["acadStudNs"] = "8";
        Session["acadStudSv"] = "Dr. Radziah Binti Mohamad";
        Session["acadStudTda"] = "Prof. Dr. Habibollah Bin Harun";
        Session["acadStudTs"] = "Taught Course";
        Session["acadStudEm"] = "masyraf96@live.utm.my";
        Session["acadStudTl"] = "0172364838";
        Session["acadStudIC"] = "950405055261";
        Session["acadStudDoB"] = "05-04-1995";
        Session["acadStudReligion"] = "1-Islam";
        Session["acadStudRace"] = "A-Melayu Semenanjung";
        Session["acadStudCitizenship"] = "MAL-Malaysia";
        Session["acadStudNextOfKin"] = "OSMAN BIN ABDUL LATIFF";
        Session["acadStudEmergencyContact"] = "0123039064";
        Session["acadStudAddress"] = "NO. 2, JALAN BBI 5, TAMAN BUKIT BERUANG INDAH, 75450, MELAKA";
        Session["acadStudPassport"] = "1234567890";
        Session["acadStudPassportEx"] = "31/12/2020";
        Session["acadStudCGPA"] = "3.98";
        Session["acadStudStatus"] = "Active";
        Session["acadStudGraduation"] = "2018";
        Session["acadStudField"] = "-";

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
            string sesisem = Session["acadStudSs"].ToString();
            showForm();
        }
    }

    protected void showForm()
    {
        //imgPhoto.InnerHtml = "<img src=\"../Styles/images/PhotoStudent.ashx.jpeg\" class=\"img-profile\" width=\"100\" alt=\"profileimage\" />";
        lblName.Text = Session["acadStudNm"].ToString();
        lblFaculty.Text = Session["acadStudFn"].ToString();
        lblMatric.Text = Session["acadStudMt"].ToString();
        lblDoB.Text = Session["acadStudDoB"].ToString();

        lblProgType.Text = Session["acadProgType"].ToString();
        lblProgName.Text = Session["acadProgName"].ToString();
        lblDestination.Text = Session["acadProgUniversity"].ToString();

    }
}