using System;
using System.Configuration;
using System.Data.SqlClient;
using System.Web.UI;

public partial class UTMIAR_frmViewForm : System.Web.UI.Page
{
    private SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["UTMMobility"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        // Declaration
        //string id = Request.QueryString["ProgId"];
        String strSelect;
        SqlCommand cmdSelect;
        SqlDataReader drSelect;
        //id = Session["pengguna"].ToString();
        string Matric = "A14CS0053";

        con.Open();  // Open Connection with database

        strSelect = "SELECT Matric, Name, IC, DoB, ContactNum, Email, Religion, Citizenship, Race, Address, Kin, EmergencyContact, KinAddress FROM Student WHERE Matric='" + Matric + "'";
        cmdSelect = new SqlCommand(strSelect, con);
        drSelect = cmdSelect.ExecuteReader();
        drSelect.Read();

        Session["acadUserSs"] = "201620171";
        Session["acadUserNm"] = drSelect["Name"].ToString();
        Session["acadUserPr"] = "Bachelor Of Computer Science (Software Engineering)";
        Session["acadUserFn"] = "Computing";
        Session["acadUserMt"] = drSelect["Matric"].ToString();
        Session["acadUserBs"] = "5";
        Session["acadUserNs"] = "8";
        Session["acadUserEm"] = drSelect["Email"].ToString();
        Session["acadUserTl"] = drSelect["ContactNum"].ToString();
        Session["acadUserIC"] = drSelect["IC"].ToString();
        Session["acadUserDoB"] = drSelect["DoB"].ToString();
        Session["acadUserReligion"] = drSelect["Religion"].ToString();
        Session["acadUserRace"] = drSelect["Race"].ToString();
        Session["acadUserCitizenship"] = drSelect["Citizenship"].ToString();
        Session["acadUserNextOfKin"] = drSelect["Kin"].ToString();
        Session["acadUserEmergencyContact"] = drSelect["EmergencyContact"].ToString();
        Session["acadUserAddress"] = drSelect["Address"].ToString();
        Session["acadUserKinAddress"] = drSelect["KinAddress"].ToString();
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

        con.Close();  // Close Connection with database

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
        lblProgramme.Text = Session["acadUserPr"].ToString();
        lblFaculty.Text = Session["acadUserFn"].ToString();
        lblMatric.Text = Session["acadUserMt"].ToString();
        lblSemesterNorm.Text = Session["acadUserBs"].ToString() + " / " + Session["acadUserNs"].ToString();
        lblEmail.Text = Session["acadUserEm"].ToString();
        lblContact.Text = Session["acadUserTl"].ToString();
        lblIC.Text = Session["acadUserIC"].ToString();
        lblDoB.Text = Session["acadUserDoB"].ToString();
        lblReligion.Text = Session["acadUserReligion"].ToString();
        lblRace.Text = Session["acadUserRace"].ToString();
        lblCitizenship.Text = Session["acadUserCitizenship"].ToString();
        lblNextKin.Text = Session["acadUserNextOfKin"].ToString();
        lblEmergency.Text = Session["acadUserEmergencyContact"].ToString();
        lblAddress.Text = Session["acadUserAddress"].ToString();
        lblNextKinAddress.Text = Session["acadUserKinAddress"].ToString();
        lblPassportNo.Text = Session["acadUserPassport"].ToString();
        lblPassportExDate.Text = Session["acadUserPassportEx"].ToString();
        lblCGPA.Text = Session["acadUserCGPA"].ToString();
        lblStatus.Text = Session["acadUserStatus"].ToString();
        lblGraduation.Text = Session["acadUserGraduation"].ToString();
        lblField.Text = Session["acadUserField"].ToString();

        lblProgType.Text = Session["acadProgType"].ToString();
        lblProgName.Text = Session["acadProgName"].ToString();
        lblUniversity.Text = Session["acadProgUniversity"].ToString();
        lblCountry.Text = Session["acadProgCountry"].ToString();
        lblStartDate.Text = Session["acadProgStartDate"].ToString();
        lblEndDate.Text = Session["acadProgEndDate"].ToString();

        lblFee.Text = Session["acadFinancialFee"].ToString();
        lblTransportation.Text = Session["acadFinancialTransportation"].ToString();
        lblAccommodation.Text = Session["acadFinancialAccommodation"].ToString();
        lblMeal.Text = Session["acadFinancialMeal"].ToString();
        lblContingency.Text = Session["acadFinancialContigency"].ToString();
        int total = int.Parse(lblFee.Text) + int.Parse(lblTransportation.Text) + int.Parse(lblAccommodation.Text) + int.Parse(lblMeal.Text) + int.Parse(lblContingency.Text);
        lblTotalProposed.Text = total.ToString();
        //lblTotalAllocated.Text = Session["acadFinancialTotalAllocated"].ToString();
    }
}