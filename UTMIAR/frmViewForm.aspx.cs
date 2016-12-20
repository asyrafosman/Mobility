using System;
using System.Configuration;
using System.Web.UI;
using Oracle.ManagedDataAccess.Client;
using System.Data;

public partial class UTMIAR_frmViewForm : System.Web.UI.Page
{
    OracleConnection con = new OracleConnection(ConfigurationManager.ConnectionStrings["MOBILITY.XE"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        // Declaration
        string APP_APPID = Session["APP_APPID"].ToString();

        string sql = "SELECT * FROM APP_FORM WHERE APP_APPID = " + APP_APPID;
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
            string sesisem = Session["acadStudSs"].ToString();
            showForm();
            BindRepeater();
        }
    }

    protected void showForm()
    {
        //imgPhoto.InnerHtml = "<img src=\"../Styles/images/PhotoStudent.ashx.jpeg\" class=\"img-profile\" width=\"100\" alt=\"profileimage\" />";
        lblName.Text = Session["acadStudNm"].ToString();
        lblProgramme.Text = Session["acadStudPr"].ToString();
        lblFaculty.Text = Session["acadStudFn"].ToString();
        lblMatric.Text = Session["acadStudMt"].ToString();
        lblSemesterNorm.Text = Session["acadStudBs"].ToString() + " / " + Session["acadStudNs"].ToString();
        lblEmail.Text = Session["acadStudEm"].ToString();
        lblContact.Text = Session["acadStudTl"].ToString();
        lblIC.Text = Session["acadStudIC"].ToString();
        lblDoB.Text = Session["acadStudDoB"].ToString();
        lblReligion.Text = Session["acadStudReligion"].ToString();
        lblRace.Text = Session["acadStudRace"].ToString();
        lblCitizenship.Text = Session["acadStudCitizenship"].ToString();
        lblNextKin.Text = Session["acadStudNextOfKin"].ToString();
        lblEmergency.Text = Session["acadStudEmergencyContact"].ToString();
        lblAddress.Text = Session["acadStudAddress"].ToString();
        lblNextKinAddress.Text = Session["acadStudKinAddress"].ToString();
        lblPassportNo.Text = Session["acadStudPassport"].ToString();
        lblPassportExDate.Text = Session["acadStudPassportEx"].ToString();
        lblCGPA.Text = Session["acadStudCGPA"].ToString();
        lblStatus.Text = Session["acadStudStatus"].ToString();
        lblGraduation.Text = Session["acadStudGraduation"].ToString();
        lblField.Text = Session["acadStudField"].ToString();

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