/*

********** View replies ************
 Name of the Developer: Harish Chunch
 Name of the module: view replies
 Task Number: 3.3
 Supported By: Pradeep Mahabhashyam
  Postconditions: Moderator should be able to view the comments that buyer has posted for the items
 Functionality of the module: Moderator can view the comments of the buyer
 Date last modified: 04/21/2017    */
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
public partial class Moderator_viewreplys : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            string username = Session["Email_id"].ToString();
            string Query = "select * from Reply where Posted_By!='" + username + "'";
            DataSet ds = new DataSet();
            ds = DAL.SqlHelper.ExecuteDataset(clsConnection.Connection, CommandType.Text, Query);
            gvReplies.DataSource = ds;
            gvReplies.DataBind();
        }
    }

    
}
