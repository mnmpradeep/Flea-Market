/*

********** View Comments ************
 Name of the Developer: Pradeep Mahabhashyam
 Name of the module: view comments
 Task Number: 2.4.4
 Supported By: Harish Chunchu
 Preconditions: User should have already been a registered member with their student email address and posted atleast one item
 Postconditions: User should be able to view the comments that buyer has posted for the item that he has posted
 Functionality of the module: Users can view the comments of the buyer that was posted
 Date last modified: 04/18/2017    */

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
public partial class User_Viewcomments : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            string username = Session["Email_id"].ToString();
            string Query = "select * from Reply where Posted_By='" + username + "'";
            DataSet ds = new DataSet();
            ds = DAL.SqlHelper.ExecuteDataset(clsConnection.Connection, CommandType.Text, Query);
            gvComments.DataSource = ds;
            gvComments.DataBind();
        }
    }
}
