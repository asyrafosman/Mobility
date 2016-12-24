using System;
using System.Configuration;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Oracle.ManagedDataAccess.Client;

public partial class UTMIAR_frmActivityDetails : System.Web.UI.Page
{
    OracleConnection con = new OracleConnection(ConfigurationManager.ConnectionStrings["MOBILITY.XE"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        string ACTIVITYID = Request.QueryString["ID"];
        string sql = "SELECT * FROM ACTIVITY WHERE ACTIVITYID = " + ACTIVITYID;
        con.Open();
        OracleCommand cmd = new OracleCommand();
        cmd.CommandText = sql;
        cmd.Connection = con;
        OracleDataReader dr = null;
        dr = cmd.ExecuteReader();
        dr.Read();
        lblDate.Text = dr["ACTIVITYDATE"].ToString();
        lblTitle.Text = dr["TITLE"].ToString();
        imgActivity.ImageUrl = "../Styles/images/" + dr["IMAGENAME"].ToString();
        lblDetails.Text = dr["BLOG"].ToString();
        con.Close();
    }
}