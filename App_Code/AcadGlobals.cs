using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for Global
/// </summary>
public class AcadGlobals
{
    public const string SCHEME_AIMS = "AIMS";
    public const string SCHEME_SPSWEB = "SPSWEB";
    public const string URL_ACAD = "http://academic2.utm.my/";
    public const string URL_NFS = "ftp://datastore.utm.my";
    public const string NFS_UID = "smb-user-academic";
    public const string NFS_PID = "smb-u53r-academic";
    public const string NFS_PATH = "/academic-attachment/acadnfs/";
    
    //ToolTip - added by Wan Mat on 29 May 2016
    public const string TOOLTIP_ADD_NEW_RECORD = "Click here to add new record.";
    public const string TOOLTIP_INSERT_RECORD = "Click here to save record.";
    public const string TOOLTIP_UPDATE_RECORD = "Click here to update record.";
    public const string TOOLTIP_DELETE_RECORD = "Click here to delete record.";
    public const string TOOLTIP_CANCEL = "Click here to cancel this operation";
    public const string TOOLTIP_FIND_RECORD = "Click here to start searching.";
    
    //Icon - added by Wan Mat on 29 May 2016
    public const string ICON_FIND_RECORD = "~/Styles/images/find_icon_red.png";
    public const string ICON_GRIDVIEW_LIST_RECORD = "~/Styles/images/rec_list.png";
    public const string ICON_GRIDVIEW_VIEW_RECORD = "~/Styles/images/rec_edit.png";
    public const string ICON_GRIDVIEW_DELETE_RECORD = "~/Styles/images/rec_delete.png";
    public const string ICON_RECORD_ADD_NEW = "~/Styles/images/rec_add_button.png"; //"<i class=\"fa fa-plus-circle\" style=\"color: green; font-size: 14pt;\"></i>";
    public const string ICON_RECORD_SAVE = "~/Styles/images/rec_save_button.png"; //"<i class=\"fa fa-plus-circle\" style=\"color: green;\"></i>";
    public const string ICON_RECORD_UPDATE = "~/Styles/images/rec_update_button.png"; //"<i class=\"fa fa-plus-circle\" style=\"color: green;\"></i>";
    public const string ICON_RECORD_DELETE = "~/Styles/images/rec_delete_button.png"; //"<i class=\"fa fa-plus-circle\" style=\"color: green;\"></i>";
    public const string ICON_CANCEL = "~/Styles/images/rec_cancel_button.png"; //"<i class=\"fa fa-plus-circle\" style=\"color: green;\"></i>";
    
    //CRUD operation alert message - added by Wan Mat on 29 May 2016
    public const string RECORD_INSERT_SUCCESS = "alert('Record saved successfully.');";
    public const string RECORD_INSERT_FAILED = "alert('Save record failed.');";
    public const string RECORD_UPDATE_SUCCESS = "alert('Record updated successfully.');";
    public const string RECORD_UPDATE_FAILED = "alert('Update record failed.');";
    public const string RECORD_DELETE_SUCCESS = "alert('Record deleted successfully.');";
    public const string RECORD_DELETE_FAILED = "alert('Delete record failed.');";
	
	//Account Status
    public const string STUDENT_HAVE_DEBT = "alert('You have debt. \\nPlease refer to Bursar Office.');";
    public const string STUDENT_HAS_DEBT = "alert('You has debt. \\nPlease refer to Bursar Office.');";
}