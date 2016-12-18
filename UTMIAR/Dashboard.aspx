<%@ Page Title="ACAD2016." Language="C#" MasterPageFile="~/UTMIAR/Admin.master" AutoEventWireup="true" CodeFile="Dashboard.aspx.cs" Inherits="UTMIAR_Dashboard" %>

<asp:Content ID="Content1" ContentPlaceHolderID="BodyContent" Runat="Server">
    <div class="filler"></div>
    <h1 class="admin-header">UTMACAD ADMINISTRATION</h1>
    <div class="divide-s"></div>
    <div class="row admin-dshbd" style="background-color: #FDFFE8">
        <div class="col-md-2 col-sm-4 col-xs-6 admin-icon-block">
            <p class="admin-label">
                <input name="ctl00$MainContent$btnProfile" id="MainContent_btnProfile" class="admin-icon" src="../Styles/images/Icon/admin/viva.jpg" type="image"><br>
                VIVA</p>
        </div>
        <div class="col-md-2 col-sm-4 col-xs-6 admin-icon-block">
            <p class="admin-label">
                <input name="ctl00$MainContent$btnHostel" id="MainContent_btnHostel" class="admin-icon" src="../Styles/images/Icon/admin/hostel.png" onclick="target='blank';" type="image"><br>
                HOSTEL</p>
        </div>
        <div class="col-md-2 col-sm-4 col-xs-6 admin-icon-block">
            <p class="admin-label">
                <input name="ctl00$MainContent$btnRegCourse" id="MainContent_btnRegCourse" class="admin-icon" src="../Styles/images/Icon/admin/regcourse.png" onclick="target='_blank';" type="image"><br>
                COURSE REGISTRATION</p>
        </div>
        <div class="col-md-2 col-sm-4 col-xs-6 admin-icon-block">
            <p class="admin-label">
                <input name="ctl00$MainContent$btnGsms" id="MainContent_btnGsms" class="admin-icon" src="../Styles/images/Icon/admin/gsms.png" onclick="target='_blank';" type="image"><br>
                GSMS</p>
        </div>
        <div class="col-md-2 col-sm-4 col-xs-6 admin-icon-block">
            <p class="admin-label">
                <input name="ctl00$MainContent$btnTranc" id="MainContent_btnTranc" class="admin-icon" src="../Styles/images/Icon/admin/transcript.png" type="image"><br>
                TRANSCRIPT</p>
        </div>
        <div class="col-md-2 col-sm-4 col-xs-6 admin-icon-block">
            <p class="admin-label">
                <input name="ctl00$MainContent$btnAcadDir" id="MainContent_btnAcadDir" class="admin-icon" src="../Styles/images/Icon/admin/acaddir.png" type="image"><br>
                ACADEMIC DIRECTORY</p>
        </div>
        <div class="col-md-2 col-sm-4 col-xs-6 admin-icon-block">
            <p class="admin-label">
                <input name="ctl00$MainContent$btnPub" id="MainContent_btnPub" class="admin-icon" src="../Styles/images/Icon/admin/publication.png" type="image"><br>
                PUBLICATION</p>
        </div>
        <div class="col-md-2 col-sm-4 col-xs-6 admin-icon-block">
            <p class="admin-label">
                <input name="ctl00$MainContent$btnAct" id="MainContent_btnAct" class="admin-icon" src="../Styles/images/Icon/admin/activity.png" onclick="javascript:WebForm_DoPostBackWithOptions(new WebForm_PostBackOptions(&quot;ctl00$MainContent$btnAct&quot;, &quot;&quot;, false, &quot;&quot;, &quot;Activity/Dashboard.aspx&quot;, false, false))" type="image"><br>
                ACTIVITY</p>
        </div>
        <div class="col-md-2 col-sm-4 col-xs-6 admin-icon-block">
            <p class="admin-label">
                <input name="ctl00$MainContent$btnAcadWork" id="MainContent_btnAcadWork" class="admin-icon" src="../Styles/images/Icon/admin/workshop.png" type="image"><br>
                ACADEMIC WORKSHOP</p>
        </div>
        <div class="col-md-2 col-sm-4 col-xs-6 admin-icon-block">
            <p class="admin-label">
                <input name="ctl00$MainContent$btnAttend" id="MainContent_btnAttend" class="admin-icon" src="../Styles/images/Icon/admin/attendance.png" type="image"><br>
                ATTENDANCE RECORD</p>
        </div>
        <div class="col-md-2 col-sm-4 col-xs-6 admin-icon-block">
            <p class="admin-label">
                <input name="ctl00$MainContent$btnTES" id="MainContent_btnTES" class="admin-icon" src="../Styles/images/Icon/admin/TESlogo.png" type="image"><br>
                TEACHING EXCELLENT SYSTEM</p>
        </div>
        <div class="col-md-2 col-sm-4 col-xs-6 admin-icon-block">
            <p class="admin-label">
                <input name="ctl00$MainContent$btnAward" id="MainContent_btnAward" class="admin-icon" src="../Styles/images/Icon/admin/award.png" type="image"><br>
                AWARD</p>
        </div>
        <div class="col-md-2 col-sm-4 col-xs-6 admin-icon-block">
            <p class="admin-label">
                <input name="ctl00$MainContent$btniCGPA" id="MainContent_btniCGPA" class="admin-icon" src="../Styles/images/Icon/admin/icgpa.png" type="image"><br>
                iCGPA</p>
        </div>
        <div class="col-md-2 col-sm-4 col-xs-6 admin-icon-block">
            <p class="admin-label">
                <input name="ctl00$MainContent$btnDocMg" id="MainContent_btnDocMg" class="admin-icon" src="../Styles/images/Icon/admin/dms.png" type="image"><br>
                DOCUMENT MANAGEMENT</p>
        </div>
        <div class="col-md-2 col-sm-4 col-xs-6 admin-icon-block">
            <p class="admin-label">
                <input name="ctl00$MainContent$btnOBE" id="MainContent_btnOBE" class="admin-icon" src="../Styles/images/Icon/admin/obe.png" type="image"><br>
                OUTCOME BASE LEARNING</p>
        </div>
        <div class="col-md-2 col-sm-4 col-xs-6 admin-icon-block">
            <p class="admin-label">
                <input name="ctl00$MainContent$btnUserCntr" id="MainContent_btnUserCntr" class="admin-icon" src="../Styles/images/Icon/admin/usercentral.png" onclick="target='_blank';" type="image"><br>
                USER CENTRAL ID</p>
        </div>
        <div class="col-md-2 col-sm-4 col-xs-6 admin-icon-block">
            <p class="admin-label">
                <input name="ctl00$MainContent$btnJOC" id="MainContent_btnJOC" class="admin-icon" src="../Styles/images/Icon/admin/joboncampus.png" onclick="javascript:WebForm_DoPostBackWithOptions(new WebForm_PostBackOptions(&quot;ctl00$MainContent$btnJOC&quot;, &quot;&quot;, false, &quot;&quot;, &quot;JoC/Dashboard.aspx&quot;, false, false))" type="image"><br>
                JOB ON CAMPUS</p>
        </div>
        <div class="col-md-2 col-sm-4 col-xs-6 admin-icon-block">
            <p class="admin-label">
                <input name="ctl00$MainContent$btnims" id="MainContent_btnims" class="admin-icon" src="../Styles/images/Icon/admin/ims.png" onclick="javascript:WebForm_DoPostBackWithOptions(new WebForm_PostBackOptions(&quot;ctl00$MainContent$btnims&quot;, &quot;&quot;, false, &quot;&quot;, &quot;IMS/Dashboard.aspx&quot;, false, false))" type="image"><br>
                IMMIGRATION MANAGEMENT SYSTEM</p>
        </div>
        <div class="col-md-2 col-sm-4 col-xs-6 admin-icon-block">
            <p class="admin-label">
                <input name="ctl00$MainContent$btnSelenggara" id="MainContent_btnSelenggara" class="admin-icon" src="../Styles/images/Icon/admin/selenggara.png" onclick="javascript:WebForm_DoPostBackWithOptions(new WebForm_PostBackOptions(&quot;ctl00$MainContent$btnSelenggara&quot;, &quot;&quot;, false, &quot;&quot;, &quot;Selenggara2/Dashboard.aspx&quot;, false, false))" type="image"><br>
                SELENGGARA</p>
        </div>
        <div class="col-md-2 col-sm-4 col-xs-6 admin-icon-block">
            <p class="admin-label">
                <input name="ctl00$MainContent$btnSoftwareCentre" id="MainContent_btnSoftwareCentre" class="admin-icon" src="../Styles/images/Icon/admin/softwarecentre.png" onclick="javascript:WebForm_DoPostBackWithOptions(new WebForm_PostBackOptions(&quot;ctl00$MainContent$btnSoftwareCentre&quot;, &quot;&quot;, false, &quot;&quot;, &quot;SoftwareCentre/DashboardSoftware.aspx&quot;, false, false))" type="image"><br>
                SOFTWARE CENTRE</p>
        </div>
         <div class="col-md-2 col-sm-4 col-xs-6 admin-icon-block">
            <p class="admin-label">
                <asp:ImageButton ID="btnside1" runat="server" ToolTip="Academic Calendar" ImageUrl="~/Styles/images/Icon/admin/mobility.png"
                                    CssClass="admin-icon" OnClick="MOBILITY_Click" />
                MOBILITY</p>
        </div>
    </div>
</asp:Content>

