//********** Registration Confirm************
// Name of the Developer: Pradeep Mahabhashyam
// Name of the module: Confirm Activation
// Task Number: 1.2.1.2
// Supported By: Ramya Patchikura
// Postconditions: User must have entered all his information in the form.
// Functionality of the module: User will be shown the successful message on the screen
// Date last modified: 04/25/2017
using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Data.SqlClient;

public partial class Cnfrmregistration : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        LinkButton1.Attributes.Add("target", "_blank");
        string id = Request.QueryString["User_Id"].ToString();
        string sql = "select * from Registration where User_Id='" + id + "'";
        DataSet ds = new DataSet();
        ds = DAL.SqlHelper.ExecuteDataset(clsConnection.Connection, CommandType.Text, sql);
        //Label1.Text = ds.Tables[0].Rows[0]["User_Name"].ToString();
    }
}
