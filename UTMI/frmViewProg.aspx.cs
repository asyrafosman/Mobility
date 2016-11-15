using System;
using System.Configuration;
using System.Data.SqlClient;

public partial class UTMI_frmAddNewProgramme : System.Web.UI.Page
{
    private SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["UTMMobility"].ConnectionString);

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            // Declaration
            //string id = Request.QueryString["ProgId"];
            String strSelect;
            SqlCommand cmdSelect;
            SqlDataReader drSelect;
            //id = Session["pengguna"].ToString();
            int id = 2;

            con.Open();  // Open Connection with database

            strSelect = "select Types, ProgName, University, Country, StartDate, EndDate, Deadline, IntakeSession, OpenTo from Programme where ProgId='" + id + "'";
            cmdSelect = new SqlCommand(strSelect, con);
            drSelect = cmdSelect.ExecuteReader();
            drSelect.Read();
            
            DateTime startDate = Convert.ToDateTime(drSelect["StartDate"].ToString());
            DateTime endDate = Convert.ToDateTime(drSelect["EndDate"].ToString());
            DateTime deadLine = Convert.ToDateTime(drSelect["Deadline"].ToString());

            lblTypes.Text = drSelect["Types"].ToString();
            lblProgName.Text = drSelect["ProgName"].ToString();
            lblUniversity.Text = drSelect["University"].ToString();
            lblCountry.Text = drSelect["Country"].ToString();
            lblStartDate.Text = startDate.ToShortDateString();
            lblEndDate.Text = endDate.ToShortDateString();
            lblDeadline.Text = deadLine.ToShortDateString();
            lblIntakeSession.Text = drSelect["IntakeSession"].ToString();
            lblOpenTo.Text = drSelect["OpenTo"].ToString();

            con.Close();  // Close Connection with database
        }
    }

    protected void btnUpdate_Click(object sender, EventArgs e)
    {
        Response.Redirect("frmUpdateProg.aspx");
    }
}