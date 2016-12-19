using System;
using System.Configuration;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Oracle.ManagedDataAccess.Client;
using System.Data;

public partial class UTMIAR_frmActivityList : System.Web.UI.Page
{
    OracleConnection con = new OracleConnection(ConfigurationManager.ConnectionStrings["MOBILITY.XE"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        string APP_APPID = Session["APP_APPID"].ToString();
        string sql = "SELECT * FROM STUDENT_ACTIVITY WHERE APP_APPID = " + APP_APPID;
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

        Session["acadInfoPhone"] = dr["INFO_PHONENUMBER"].ToString();
        Session["acadInfoAddress"] = dr["INFO_ADDRESS"].ToString();
        Session["acadInfoContName"] = dr["INFO_CONTACTNAME"].ToString();
        Session["acadInfoContRel"] = dr["INFO_CONTACTREL"].ToString();
        Session["acadInfoContPhone"] = dr["INFO_CONTACTPHONE"].ToString();

        con.Close();

        if (!IsPostBack)
        {
            string sesisem = Session["acadUserSs"].ToString();
            showProfile();
            BindRepeater();
        }
    }
    protected void showProfile()
    {
        imgPhoto.InnerHtml = "<img src=\"../Styles/images/nophoto.png\" class=\"img-profile\" width=\"100\" alt=\"profileimage\" />";
        lblName.Text = Session["acadUserNm"].ToString().ToUpper();
        lblProgramme.Text = Session["acadUserPr"].ToString();
        lblFaculty.Text = Session["acadUserFn"].ToString();
        lblMatric.Text = Session["acadUserMt"].ToString();
        lblBilSemester.Text = Session["acadUserBs"].ToString() + " / " + Session["acadUserNs"].ToString();
        //lblAA.Text = Session["acadUserSv"].ToString();
        lblToS.Text = Session["acadUserTs"].ToString() + " (Full Time)";
        lblEmail.Text = Session["acadUserEm"].ToString();
        lblPhone.Text = Session["acadUserTl"].ToString();
        lblProgType.Text = Session["acadProgType"].ToString();
        lblUniversity.Text = Session["acadProgUniversity"].ToString();
        lblCountry.Text = Session["acadProgCountry"].ToString();
        lblStartDate.Text = Session["acadProgStartDate"].ToString();
        lblEndDate.Text = Session["acadProgEndDate"].ToString();

        lblNewPhone.Text = Session["acadInfoPhone"].ToString();
        lblNewAddress.Text = Session["acadInfoAddress"].ToString();
        lblNewConName.Text = Session["acadInfoContName"].ToString();
        lblNewConRelation.Text = Session["acadInfoContRel"].ToString();
        lblNewConPhone.Text = Session["acadInfoContPhone"].ToString();
    }
    private void BindRepeater()
    {
        string APP_APPID = Session["APP_APPID"].ToString();
        using (OracleConnection con = new OracleConnection(ConfigurationManager.ConnectionStrings["MOBILITY.XE"].ConnectionString))
        {
            using (OracleCommand cmd = new OracleCommand("SELECT * FROM ACTIVITY WHERE APPID = " + APP_APPID, con))
            {
                using (OracleDataAdapter sda = new OracleDataAdapter(cmd))
                {
                    DataTable dt = new DataTable();
                    sda.Fill(dt);
                    rptActivities.DataSource = dt;
                    rptActivities.DataBind();
                }
            }
        }
    }
    protected void ViewStudAct(object sender, EventArgs e)
    {
        string ACTIVITYID = (sender as LinkButton).CommandArgument;
        Session.Add("ACTIVITYID", ACTIVITYID);
        Response.Redirect("frmActivityDetails.aspx");
    }
}