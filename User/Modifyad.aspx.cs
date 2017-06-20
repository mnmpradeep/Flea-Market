/*

********** Modify Ad  ************
 Name of the Developer: Pradeep Mahabhashyam
 Name of the module: Modify Ad
 Task Number: 2.4.1
 Supported By: Harish Chunchu
 Preconditions: User should have already been a registered member with their student email address and posted an Ad
 Postconditions: User should be able to update his Ad
 Functionality of the module: User can modify the details about the item he has posted, in this module he can view list of items. 
 Date last modified: 04/20/2017    */

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
using System.Data.Sql;
public partial class User_Modifyad : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            string uid = Session["Email_id"].ToString();
            string Query = "select * from Advr where Posted_By='" + uid + "'";
            DataSet ds = new DataSet();
            ds = DAL.SqlHelper.ExecuteDataset(clsConnection.Connection, CommandType.Text, Query);
            gModifyAd.DataSource = ds;
            gModifyAd.DataBind();
        }
    }
}
