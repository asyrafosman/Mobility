using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class TNCAA_frmViewStudApp : System.Web.UI.Page
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
        Session["acadUserDean"] = "Prof. Dr. Abd. Samad bin Haji Ismail";
        Session["acadUserTs"] = "Taught Course";
        Session["acadUserEm"] = "masyraf96@live.utm.my";
        Session["acadUserTl"] = "0172364838";
        Session["acadProgType"] = "Student Exchange";
        Session["acadProgUniversity"] = "Seoul National University";
        Session["acadProgCountry"] = "South Korea";
        Session["acadProgStartDate"] = "01-03-2017";
        Session["acadProgEndDate"] = "30-06-2017";
        Session["acadProgAAComment"] = "Good.";
        Session["acadProgDeanComment"] = "Excellent.";
        Session["acadProgUtmiaaComment"] = "Superb.";
        Session["acadProgUtmidComment"] = "The best.";
        Session["acadUserUtmiar"] = "Siti Rahimah Mohd Yusop";
        Session["acadUserUtmid"] = "Prof Dr Nor Haniza Sarmin";

        Session["acadFinancialFee"] = "3000";
        Session["acadFinancialTransportation"] = "2000";
        Session["acadFinancialAccommodation"] = "1000";
        Session["acadFinancialMeal"] = "2000";
        Session["acadFinancialContigency"] = "1500";
        Session["acadFinancialTotalAllocated"] = "3000";

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

        lblAAName.Text = Session["acadUserSv"].ToString();
        lblAAComment.Text = Session["acadProgAAComment"].ToString();
        lblDeanName.Text = Session["acadUserDean"].ToString();
        lblDeanComment.Text = Session["acadProgDeanComment"].ToString();
        lblUTMIARName.Text = Session["acadUserUtmiar"].ToString();
        lblUTMIARComment.Text = Session["acadProgUtmiaaComment"].ToString();
        lblUTMIDName.Text = Session["acadUserUtmid"].ToString();
        lblUTMIDComment.Text = Session["acadProgUtmidComment"].ToString();

        lblFee.Text = Session["acadFinancialFee"].ToString();
        lblTransportation.Text = Session["acadFinancialTransportation"].ToString();
        lblAccommodation.Text = Session["acadFinancialAccommodation"].ToString();
        lblMeal.Text = Session["acadFinancialMeal"].ToString();
        lblContingency.Text = Session["acadFinancialContigency"].ToString();
        int total = int.Parse(lblFee.Text) + int.Parse(lblTransportation.Text) + int.Parse(lblAccommodation.Text) + int.Parse(lblMeal.Text) + int.Parse(lblContingency.Text);
        lblTotalProposed.Text = total.ToString();
        lblTotalFunded.Text = "5000";
    }

    protected void btnApprove_Click(object sender, EventArgs e)
    {
        Response.Redirect("Dashboard.aspx");
    }

    protected void btnDisapprove_Click(object sender, EventArgs e)
    {
        Response.Redirect("Dashboard.aspx");
    }
}