using System;
using System.Configuration;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Oracle.ManagedDataAccess.Client;
using System.Net.Mail;
using iTextSharp.text;
using System.IO;
using iTextSharp.text.pdf;
using iTextSharp.text.html.simpleparser;

public partial class TNCAA_frmViewStudApp : System.Web.UI.Page
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
        Session["acadStudMt"] = dr["STUD_MATRIC"].ToString();
        Session["acadStudNm"] = dr["STUD_NAME"].ToString();
        Session["acadStudTl"] = dr["STUD_CONTACT"].ToString();
        Session["acadStudEm"] = dr["STUD_EMAIL"].ToString();
        Session["acadStudSv"] = dr["VER_SVID"].ToString();

        Session["acadStudSs"] = "201620171";
        Session["acadStudPr"] = "Bachelor Of Computer Science (Software Engineering)";
        Session["acadStudFn"] = "Computing";
        Session["acadStudBs"] = "5";
        Session["acadStudNs"] = "8";
        Session["acadStudTs"] = "Taught Course";

        Session["acadProgType"] = dr["PROG_TYPES"].ToString();
        Session["acadProgUniversity"] = dr["PROG_UNIVERSITY"].ToString();
        Session["acadProgCountry"] = dr["PROG_COUNTRY"].ToString();
        Session["acadProgStartDate"] = String.Format("{0:dd-MMM-yyyy}", dr["PROG_STARTDATE"]);
        Session["acadProgEndDate"] = String.Format("{0:dd-MMM-yyyy}", dr["PROG_ENDDATE"]);

        Session["VER_ID"] = dr["VER_ID"].ToString();
        Session["acadStudSv"] = dr["VER_SVID"].ToString();
        Session["acadProgAAComment"] = dr["VER_SVCOMMENT"].ToString();
        Session["acadProgAADate"] = String.Format("{0:dd-MMM-yyyy}", dr["VER_SVDATE"]);
        Session["acadStudDean"] = dr["VER_TDAID"].ToString();
        Session["acadProgDeanComment"] = dr["VER_TDACOMMENT"].ToString();
        Session["acadProgDeanDate"] = String.Format("{0:dd-MMM-yyyy}", dr["VER_TDADATE"]);
        Session["acadStudUtmiAr"] = dr["VER_UTMIARID"].ToString();
        Session["acadProgUtmiArComment"] = dr["VER_UTMIARCOMMENT"].ToString();
        Session["acadProgUtmiArDate"] = String.Format("{0:dd-MMM-yyyy}", dr["VER_UTMIARDATE"]);
        Session["acadStudUtmiD"] = dr["VER_UTMIDID"].ToString();
        Session["acadProgUtmiDComment"] = dr["VER_UTMIDCOMMENT"].ToString();
        Session["acadProgUtmiDDate"] = String.Format("{0:dd-MMM-yyyy}", dr["VER_UTMIDDATE"]);

        Session["acadFinancialFee"] = dr["FIN_FEE"].ToString();
        Session["acadFinancialTransportation"] = dr["FIN_TRAN"].ToString();
        Session["acadFinancialAccommodation"] = dr["FIN_ACCO"].ToString();
        Session["acadFinancialMeal"] = dr["FIN_MEAL"].ToString();
        Session["acadFinancialContigency"] = dr["FIN_CONT"].ToString();
        Session["acadFinancialFunded"] = dr["VER_FUND"].ToString();
        con.Close();

        if (!IsPostBack)
        {
            string sesisem = Session["acadStudSs"].ToString();
            showProfile();
        }
    }

    protected void showProfile()
    {
        imgPhoto.InnerHtml = "<img src=\"../Styles/images/nophoto.png\" class=\"img-profile\" width=\"100\" alt=\"profileimage\" />";
        lblName.Text = Session["acadStudNm"].ToString().ToUpper();
        lblProgramme.Text = Session["acadStudPr"].ToString();
        lblFaculty.Text = Session["acadStudFn"].ToString();
        lblMatric.Text = Session["acadStudMt"].ToString();
        lblBilSemester.Text = Session["acadStudBs"].ToString() + " / " + Session["acadStudNs"].ToString();
        lblAA.Text = Session["acadStudSv"].ToString();
        lblToS.Text = Session["acadStudTs"].ToString() + " (Full Time)";
        lblEmail.Text = Session["acadStudEm"].ToString();
        lblPhone.Text = Session["acadStudTl"].ToString();
        lblProgType.Text = Session["acadProgType"].ToString();
        lblUniversity.Text = Session["acadProgUniversity"].ToString();
        lblCountry.Text = Session["acadProgCountry"].ToString();
        lblStartDate.Text = Session["acadProgStartDate"].ToString();
        lblEndDate.Text = Session["acadProgEndDate"].ToString();

        lblAAName.Text = Session["acadStudSv"].ToString();
        lblAAComment.Text = Session["acadProgAAComment"].ToString();
        lblAADate.Text = Session["acadProgAADate"].ToString();
        lblDeanName.Text = Session["acadStudDean"].ToString();
        lblDeanComment.Text = Session["acadProgDeanComment"].ToString();
        lblDeanDate.Text = Session["acadProgDeanDate"].ToString();
        lblUTMIARName.Text = Session["acadStudUtmiAr"].ToString();
        lblUTMIARComment.Text = Session["acadProgUtmiArComment"].ToString();
        lblUTMIARDate.Text = Session["acadProgUtmiArDate"].ToString();
        lblUTMIDName.Text = Session["acadStudUtmiD"].ToString();
        lblUTMIDComment.Text = Session["acadProgUtmiDComment"].ToString();
        lblUTMIDDate.Text = Session["acadProgUtmiDDate"].ToString();

        lblFee.Text = string.Format("{0:RM #,#.##}", int.Parse(Session["acadFinancialFee"].ToString()));
        lblTransportation.Text = string.Format("{0:RM #,#.##}", int.Parse(Session["acadFinancialTransportation"].ToString()));
        lblAccommodation.Text = string.Format("{0:RM #,#.##}", int.Parse(Session["acadFinancialAccommodation"].ToString()));
        lblMeal.Text = string.Format("{0:RM #,#.##}", int.Parse(Session["acadFinancialMeal"].ToString()));
        lblContingency.Text = string.Format("{0:RM #,#.##}", int.Parse(Session["acadFinancialContigency"].ToString()));
        int total = int.Parse(Session["acadFinancialFee"].ToString()) + int.Parse(Session["acadFinancialTransportation"].ToString()) + int.Parse(Session["acadFinancialAccommodation"].ToString()) + int.Parse(Session["acadFinancialMeal"].ToString()) + int.Parse(Session["acadFinancialContigency"].ToString());
        lblTotalProposed.Text = string.Format("{0:RM #,#.##}", total);
        lblTotalFunded.Text = string.Format("{0:RM #,#.##}", int.Parse(Session["acadFinancialFunded"].ToString()));
    }

    protected void produceForm()
    {
        // Create a Document object
        var document = new Document(PageSize.A4, 50, 50, 25, 25);

        // Create a new PdfWriter object, specifying the output stream
        var output = new FileStream(Server.MapPath("MyPDF.pdf"), FileMode.Create);
        var writer = PdfWriter.GetInstance(document, output);

        // Open the Document for writing
        document.Open();

        // Read in the contents of the Receipt.htm file...
        string contents = File.ReadAllText(Server.MapPath("~/LetterTemplate/Form.html"));
        string APP_APPID = Session["APP_APPID"].ToString();

        string sql = "SELECT * FROM APP_FORM WHERE APP_APPID = " + APP_APPID;
        con.Open();
        OracleCommand cmd = new OracleCommand();
        cmd.CommandText = sql;
        cmd.Connection = con;
        OracleDataReader dr = null;
        dr = cmd.ExecuteReader();
        dr.Read();
        contents = contents.Replace("[lblMatric]", dr["APP_MATRIC"].ToString());
        contents = contents.Replace("[lblName]", dr["STUD_NAME"].ToString());
        contents = contents.Replace("[lblDoB]", String.Format("{0:dd-MMM-yyyy}", dr["STUD_DOB"]));
        contents = contents.Replace("[lblIC]", dr["STUD_IC"].ToString());
        contents = contents.Replace("[lblContact]", dr["STUD_CONTACT"].ToString());
        contents = contents.Replace("[lblEmail]", dr["STUD_EMAIL"].ToString());
        contents = contents.Replace("[lblReligion]", dr["STUD_RELIGION"].ToString());
        contents = contents.Replace("[lblCitizenship]", dr["STUD_CITIZEN"].ToString());
        contents = contents.Replace("[lblRace]", dr["STUD_RACE"].ToString());
        contents = contents.Replace("[lblAddress]", dr["STUD_ADDRESS"].ToString());
        contents = contents.Replace("[lblNextKin]", dr["STUD_KIN"].ToString());
        contents = contents.Replace("[lblEmergency]", dr["STUD_EMERCONT"].ToString());
        contents = contents.Replace("[lblNextKinAddress]", dr["STUD_KINADDRESS"].ToString());

        contents = contents.Replace("[lblProgType]", dr["PROG_TYPES"].ToString());
        contents = contents.Replace("[lblProgName]", dr["PROG_NAME"].ToString());
        contents = contents.Replace("[lblUniversity]", dr["PROG_UNIVERSITY"].ToString());
        contents = contents.Replace("[lblCountry]", dr["PROG_COUNTRY"].ToString());
        contents = contents.Replace("[lblStartDate]", String.Format("{0:dd-MMM-yyyy}", dr["PROG_STARTDATE"]));
        contents = contents.Replace("[lblEndDate]", String.Format("{0:dd-MMM-yyyy}", dr["PROG_ENDDATE"]));

        contents = contents.Replace("[lblProgramme]", "Bachelor Of Computer Science (Software Engineering)");
        contents = contents.Replace("[lblFaculty]", "Computing");
        contents = contents.Replace("[lblSemesterNorm]", "5/8");
        contents = contents.Replace("[lblPassportNo]", "1234567890");
        contents = contents.Replace("[lblPassportExDate]", "31/12/2020");
        contents = contents.Replace("[lblCGPA]", "3.98");
        contents = contents.Replace("[lblStatus]", "Active");
        contents = contents.Replace("[lblGraduation]", "2018");
        contents = contents.Replace("[lblField]", "-");

        contents = contents.Replace("[lblSources]", dr["FIN_SOURCES"].ToString());
        contents = contents.Replace("[lblSponsorName]", dr["FIN_SPONNAME"].ToString());
        contents = contents.Replace("[lblFee]", dr["FIN_FEE"].ToString());
        contents = contents.Replace("[lblTransportation]", dr["FIN_TRAN"].ToString());
        contents = contents.Replace("[lblAccommodation]", dr["FIN_ACCO"].ToString());
        contents = contents.Replace("[lblMeal]", dr["FIN_MEAL"].ToString());
        contents = contents.Replace("[lblContingency]", dr["FIN_CONT"].ToString());

        //var subjectTable = new PdfPTable(6);
        //subjectTable.HorizontalAlignment = 0;
        //subjectTable.DefaultCell.Border = 0;
        //subjectTable.SetTotalWidth(new float[] {
        //     (PageSize.A4.Rotate().Width - 20) / 6,
        //     (PageSize.A4.Rotate().Width - 20) / 6,
        //     (PageSize.A4.Rotate().Width - 20) / 6,
        //     (PageSize.A4.Rotate().Width - 20) / 6,
        //     (PageSize.A4.Rotate().Width - 20) / 6,
        //     (PageSize.A4.Rotate().Width - 20) / 6
        //});

        //sql = "SELECT * FROM APP_SUBJECT WHERE UTMSUB_APPID = " + APP_APPID + "AND HSUB_STATUS = 1";
        //cmd.CommandText = sql;
        //cmd.Connection = con;
        //dr = cmd.ExecuteReader();
        //while (dr.Read())
        //{
        //    subjectTable.AddCell(dr["UTMSUB_SUBCODE"].ToString());
        //    subjectTable.AddCell(dr["UTMSUB_SUBNAME"].ToString());
        //    subjectTable.AddCell(dr["UTMSUB_SUBCREDIT"].ToString());
        //    subjectTable.AddCell(dr["HSUB_SUBCODE"].ToString());
        //    subjectTable.AddCell(dr["HSUB_SUBNAME"].ToString());
        //    subjectTable.AddCell(dr["HSUB_CREDIT"].ToString());
        //}
        con.Close();
        //document.Add(subjectTable);

        var logo = iTextSharp.text.Image.GetInstance(Server.MapPath("~/Styles/images/UTMInternational.jpg"));
        logo.SetAbsolutePosition(0, 0);
        document.Add(logo);

        var photo = iTextSharp.text.Image.GetInstance(Server.MapPath("~/Styles/images/nophoto.png"));
        logo.SetAbsolutePosition(440, 800);
        document.Add(photo);

        var parsedHtmlElements = HTMLWorker.ParseToList(new StringReader(contents), null);

        // Enumerate the elements, adding each one to the Document...
        foreach (var htmlElement in parsedHtmlElements)
            document.Add(htmlElement as IElement);

        // Close the Document - this saves the document contents to the output stream
        document.Close();

        Response.ContentType = "application/pdf";
        Response.AddHeader("Content-Disposition", string.Format("attachment;filename=Application-{0}.pdf", Session["APP_APPID"].ToString()));
        Response.Buffer = true;
        Response.Cache.SetCacheability(HttpCacheability.NoCache);
        Response.End();
    }

    protected void btnApprove_Click(object sender, EventArgs e)
    {
        string APP_APPID = Session["APP_APPID"].ToString();
        string VER_ID = Session["VER_ID"].ToString();
        string sqlUpdate = "UPDATE VERIFICATION SET TNCAAID = :TNCAAID, TNCAADATE = :TNCAADATE, TNCAASTATUS = :TNCAASTATUS, TNCAACOMMENT = :TNCAACOMMENT WHERE APPID = :APP_APPID AND VERID = :VER_ID";
        con.Open();
        OracleCommand cmd = new OracleCommand();
        cmd.CommandText = sqlUpdate;
        cmd.Parameters.Add(new OracleParameter("TNCAAID", Session["acadUserNm"].ToString()));
        cmd.Parameters.Add(new OracleParameter("TNCAADATE", DateTime.Today.ToString("dd-MMM-yyyy")));
        cmd.Parameters.Add(new OracleParameter("TNCAASTATUS", "6"));
        cmd.Parameters.Add(new OracleParameter("TNCAACOMMENT", txtComment.Text));
        cmd.Parameters.Add(new OracleParameter("APP_APPID", APP_APPID));
        cmd.Parameters.Add(new OracleParameter("VER_ID", VER_ID));
        cmd.Connection = con;
        cmd.ExecuteNonQuery();
        cmd.Parameters.Clear();

        sqlUpdate = "UPDATE APPLICATION SET STATUS = :STATUS WHERE APPID = :APP_APPID";
        cmd.CommandText = sqlUpdate;
        cmd.Parameters.Add(new OracleParameter("STATUS", "Approved"));
        cmd.Parameters.Add(new OracleParameter("APP_APPID", APP_APPID));
        cmd.Connection = con;
        cmd.ExecuteNonQuery();
        cmd.Parameters.Clear();
        con.Close();

        //produceForm();

        //MailMessage mail = new MailMessage();
        //mail.To.Add(Session["acadStudEm"].ToString());
        //mail.From = new MailAddress(Session["acadUserEm"].ToString(), "UTM Deputy Vice Chancellor (Academic & International)", System.Text.Encoding.UTF8);
        //mail.Subject = "Application to " + Session["acadProgUniversity"].ToString() + " for " + Session["acadProgType"].ToString() + " programme.";
        //mail.SubjectEncoding = System.Text.Encoding.UTF8;
        //mail.Body = "Assalamualaikum dan Salam Sejahtera., <br /><br />Sekian terima kasih.";
        //mail.BodyEncoding = System.Text.Encoding.UTF8;
        //mail.IsBodyHtml = true;
        //mail.Priority = MailPriority.High;
        //SmtpClient user = new SmtpClient();
        //user.Credentials = new System.Net.NetworkCredential("mesaasyraf95@gmail.com", "062327504");
        //user.Port = 587;
        //user.Host = "smtp.gmail.com";
        //user.EnableSsl = true;
        //try
        //{
        //    user.Send(mail);
        //}
        //catch (Exception ex)
        //{
        //    Exception ex2 = ex;
        //    string errorMessage = string.Empty;
        //    while (ex2 != null)
        //    {
        //        errorMessage += ex2.ToString();
        //        ex2 = ex2.InnerException;
        //    }
        //}

        Response.Redirect("Dashboard.aspx");
    }

    protected void btnDisapprove_Click(object sender, EventArgs e)
    {
        string APP_APPID = Session["APP_APPID"].ToString();
        string VER_ID = Session["VER_ID"].ToString();
        string sqlUpdate = "UPDATE VERIFICATION SET TNCAAID = :TNCAAID, TNCAADATE = :TNCAADATE, TNCAASTATUS = :TNCAASTATUS, TNCAACOMMENT = :TNCAACOMMENT WHERE APPID = :APP_APPID AND VERID = :VER_ID";
        con.Open();
        OracleCommand cmd = new OracleCommand();
        cmd.CommandText = sqlUpdate;
        cmd.Parameters.Add(new OracleParameter("TNCAAID", Session["acadUserNm"].ToString()));
        cmd.Parameters.Add(new OracleParameter("TNCAADATE", DateTime.Today.ToString("dd-MMM-yyyy")));
        cmd.Parameters.Add(new OracleParameter("TNCAASTATUS", "7"));
        cmd.Parameters.Add(new OracleParameter("TNCAACOMMENT", txtComment.Text));
        cmd.Parameters.Add(new OracleParameter("APP_APPID", APP_APPID));
        cmd.Parameters.Add(new OracleParameter("VER_ID", VER_ID));
        cmd.Connection = con;
        cmd.ExecuteNonQuery();
        cmd.Parameters.Clear();

        sqlUpdate = "UPDATE APPLICATION SET STATUS = :STATUS WHERE APPID = :APP_APPID";
        cmd.CommandText = sqlUpdate;
        cmd.Parameters.Add(new OracleParameter("STATUS", "Rejected"));
        cmd.Parameters.Add(new OracleParameter("APP_APPID", APP_APPID));
        cmd.Connection = con;
        cmd.ExecuteNonQuery();
        cmd.Parameters.Clear();
        con.Close();
        Response.Redirect("Dashboard.aspx");
    }
}