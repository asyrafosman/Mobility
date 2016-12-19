using System;
using System.Configuration;
using System.Web.UI;
using Oracle.ManagedDataAccess.Client;
using System.Data;

public partial class UTMID_frmViewForm : System.Web.UI.Page
{
    OracleConnection con = new OracleConnection(ConfigurationManager.ConnectionStrings["MOBILITY.XE"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        string APP_APPID = Session["APP_APPID"].ToString();

        string sql = "SELECT * FROM APP_FORM WHERE APP_APPID = " + APP_APPID;
        con.Open();
        OracleCommand cmd = new OracleCommand();
        cmd.CommandText = sql;
        cmd.Connection = con;
        OracleDataReader dr = null;
        dr = cmd.ExecuteReader();
        dr.Read();
        Session["acadUserMt"] = dr["APP_MATRIC"].ToString();
        Session["acadUserNm"] = dr["STUD_NAME"].ToString();
        Session["acadUserDoB"] = String.Format("{0:dd-MMM-yyyy}", dr["STUD_DOB"]);
        Session["acadUserIC"] = dr["STUD_IC"].ToString();
        Session["acadUserTl"] = dr["STUD_CONTACT"].ToString();
        Session["acadUserEm"] = dr["STUD_EMAIL"].ToString();
        Session["acadUserReligion"] = dr["STUD_RELIGION"].ToString();
        Session["acadUserCitizenship"] = dr["STUD_CITIZEN"].ToString();
        Session["acadUserRace"] = dr["STUD_RACE"].ToString();
        Session["acadUserAddress"] = dr["STUD_ADDRESS"].ToString();
        Session["acadUserNextOfKin"] = dr["STUD_KIN"].ToString();
        Session["acadUserEmergencyContact"] = dr["STUD_EMERCONT"].ToString();
        Session["acadUserKinAddress"] = dr["STUD_KINADDRESS"].ToString();

        Session["acadUserSs"] = "201620171";
        Session["acadUserPr"] = "Bachelor Of Computer Science (Software Engineering)";
        Session["acadUserFn"] = "Computing";
        Session["acadUserBs"] = "5";
        Session["acadUserNs"] = "8";
        Session["acadUserPassport"] = "1234567890";
        Session["acadUserPassportEx"] = "31/12/2020";
        Session["acadUserCGPA"] = "3.98";
        Session["acadUserStatus"] = "Active";
        Session["acadUserGraduation"] = "2018";
        Session["acadUserField"] = "-";

        Session["acadProgType"] = dr["PROG_TYPES"].ToString();
        Session["acadProgName"] = dr["PROG_NAME"].ToString();
        Session["acadProgUniversity"] = dr["PROG_UNIVERSITY"].ToString();
        Session["acadProgCountry"] = dr["PROG_COUNTRY"].ToString();
        Session["acadProgStartDate"] = String.Format("{0:dd-MMM-yyyy}", dr["PROG_STARTDATE"]);
        Session["acadProgEndDate"] = String.Format("{0:dd-MMM-yyyy}", dr["PROG_ENDDATE"]);

        Session["acadFinancialSources"] = dr["FIN_SOURCES"].ToString();
        Session["acadFinancialSponsor"] = dr["FIN_SPONNAME"].ToString();
        Session["acadFinancialFee"] = dr["FIN_FEE"].ToString();
        Session["acadFinancialTransportation"] = dr["FIN_TRAN"].ToString();
        Session["acadFinancialAccommodation"] = dr["FIN_ACCO"].ToString();
        Session["acadFinancialMeal"] = dr["FIN_MEAL"].ToString();
        Session["acadFinancialContigency"] = dr["FIN_CONT"].ToString();

        con.Close();  // Close Connection with database

        if (!IsPostBack)
        {
            string sesisem = Session["acadUserSs"].ToString();
            showForm();
            BindRepeater();
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
        //lblAA.Text = Session["acadUserSv"].ToString();
        //lblToS.Text = Session["acadUserTs"].ToString() + " (Full Time)";
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
        lblNextKinAddress.Text = Session["acadUserAddress"].ToString();
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

        lblSources.Text = Session["acadFinancialSources"].ToString();
        lblSponsorName.Text = Session["acadFinancialSponsor"].ToString();
        lblFee.Text = Session["acadFinancialFee"].ToString();
        lblTransportation.Text = Session["acadFinancialTransportation"].ToString();
        lblAccommodation.Text = Session["acadFinancialAccommodation"].ToString();
        lblMeal.Text = Session["acadFinancialMeal"].ToString();
        lblContingency.Text = Session["acadFinancialContigency"].ToString();
        int total = int.Parse(lblFee.Text) + int.Parse(lblTransportation.Text) + int.Parse(lblAccommodation.Text) + int.Parse(lblMeal.Text) + int.Parse(lblContingency.Text);
        lblTotalProposed.Text = total.ToString();
    }
    private void BindRepeater()
    {
        string APP_APPID = Session["APP_APPID"].ToString();
        using (OracleConnection con = new OracleConnection(ConfigurationManager.ConnectionStrings["MOBILITY.XE"].ConnectionString))
        {
            using (OracleCommand cmd = new OracleCommand("SELECT * FROM APP_SUBJECT WHERE UTMSUB_APPID = " + APP_APPID, con))
            {
                using (OracleDataAdapter sda = new OracleDataAdapter(cmd))
                {
                    DataTable dt = new DataTable();
                    sda.Fill(dt);
                    rptSubjects.DataSource = dt;
                    rptSubjects.DataBind();
                }
            }
        }
    }
}