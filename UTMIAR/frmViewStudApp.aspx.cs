﻿using System;
using System.Configuration;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Oracle.ManagedDataAccess.Client;

public partial class UTMIAR_frmViewStudApp : System.Web.UI.Page
{
    OracleConnection con = new OracleConnection(ConfigurationManager.ConnectionStrings["MOBILITY.XE"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        string APP_APPID = Session["APP_APPID"].ToString();
        string sql = "SELECT * FROM STUDENT_APP WHERE APP_APPID = " + APP_APPID;
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

        string verid = dr["VER_ID"].ToString();
        Session["acadUserSv"] = dr["VER_SVID"].ToString();
        Session["acadProgAAComment"] = dr["VER_SVCOMMENT"].ToString();
        Session["acadProgAADate"] = String.Format("{0:dd-MMM-yyyy}", dr["VER_SVDATE"]);
        Session["acadUserDean"] = dr["VER_TDAID"].ToString();
        Session["acadProgDeanComment"] = dr["VER_TDACOMMENT"].ToString();
        Session["acadProgDeanDate"] = String.Format("{0:dd-MMM-yyyy}", dr["VER_TDADATE"]);
       
        Session["acadFinancialFee"] = dr["FIN_FEE"].ToString();
        Session["acadFinancialTransportation"] = dr["FIN_TRAN"].ToString();
        Session["acadFinancialAccommodation"] = dr["FIN_ACCO"].ToString();
        Session["acadFinancialMeal"] = dr["FIN_MEAL"].ToString();
        Session["acadFinancialContigency"] = dr["FIN_CONT"].ToString();
        con.Close();

        if (!IsPostBack)
        {
            string sesisem = Session["acadUserSs"].ToString();
            showProfile();
        }
    }

    protected void showProfile()
    {
        imgPhoto.InnerHtml = "<img src=\"../Styles/images/nophoto.png\" class=\"img-profile\" width=\"100\" alt=\"profileimage\" />";
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

        lblAAName.Text = Session["acadUserSv"].ToString();
        lblAAComment.Text = Session["acadProgAAComment"].ToString();
        lblAADate.Text = Session["acadProgAADate"].ToString();
        lblDeanName.Text = Session["acadUserDean"].ToString();
        lblDeanComment.Text = Session["acadProgDeanComment"].ToString();
        lblDeanDate.Text = Session["acadProgDeanDate"].ToString();

        lblFee.Text = Session["acadFinancialFee"].ToString();
        lblTransportation.Text = Session["acadFinancialTransportation"].ToString();
        lblAccommodation.Text = Session["acadFinancialAccommodation"].ToString();
        lblMeal.Text = Session["acadFinancialMeal"].ToString();
        lblContingency.Text = Session["acadFinancialContigency"].ToString();
        int total = int.Parse(lblFee.Text) + int.Parse(lblTransportation.Text) + int.Parse(lblAccommodation.Text) + int.Parse(lblMeal.Text) + int.Parse(lblContingency.Text);
        lblTotalProposed.Text = total.ToString();
    }

    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        DateTime today = DateTime.Today;
        string sqlUpdate = "UPDATE VERIFICATION SET UTMIARID = :UtmiArId, UTMIARDATE = :UtmiArDate, UTMIARSTATUS = :UtmiArStatus, UTMIARCOMMENT = :UtmiArComment, UTMIARFUND = :UtmiArFund  WHERE VERID = :verid AND APPID = :APP_APPID";
        con.Open();
        OracleCommand cmd = new OracleCommand();
        cmd.CommandText = sqlUpdate;
        cmd.Parameters.Add(new OracleParameter("UtmiArId", 1111));
        cmd.Parameters.Add(new OracleParameter("UtmiArDate", today));
        cmd.Parameters.Add(new OracleParameter("UtmiArStatus", 3));
        cmd.Parameters.Add(new OracleParameter("UtmiArComment", txtComment.Text));
        cmd.Parameters.Add(new OracleParameter("UtmiArFund", txtTotalAllocated.Text));
        cmd.Connection = con;
        cmd.ExecuteNonQuery();
        cmd.Parameters.Clear();
        Response.Redirect("Dashboard.aspx");
    }

    protected void btnRevert_Click(object sender, EventArgs e)
    {
        DateTime today = DateTime.Today;
        string sqlUpdate = "UPDATE VERIFICATION SET UTMIARID = :UtmiArId, UTMIARDATE = :UtmiArDate, UTMIARSTATUS = :UtmiArStatus, UTMIARCOMMENT = :UtmiArComment, UTMIARFUND = :UtmiArFund  WHERE VERID = :verid AND APPID = :APP_APPID";
        con.Open();
        OracleCommand cmd = new OracleCommand();
        cmd.CommandText = sqlUpdate;
        cmd.Parameters.Add(new OracleParameter("UtmiArId", 1111));
        cmd.Parameters.Add(new OracleParameter("UtmiArDate", today));
        cmd.Parameters.Add(new OracleParameter("UtmiArStatus", 2));
        cmd.Parameters.Add(new OracleParameter("UtmiArComment", txtComment.Text));
        cmd.Parameters.Add(new OracleParameter("UtmiArFund", txtTotalAllocated.Text));
        cmd.Connection = con;
        cmd.ExecuteNonQuery();
        cmd.Parameters.Clear();
        Response.Redirect("Dashboard.aspx");
    }
}