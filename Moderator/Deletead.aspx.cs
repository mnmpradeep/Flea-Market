/*

********** Delete Ad  ************
 Name of the Developer: Harish Chunchu
 Name of the module: Delete Ad details
 Task Number: 3.2
 Supported By: Pradeep Mahabhashyam
  Postconditions: Moderator should be able to delete the Ad's of the users
 Functionality of the module: Moderator can view and delete the Ad's 
 Date last modified: 04/24/2017    */

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
public partial class Moderator_Deletead : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        if (!IsPostBack)
        {
            string uid = Session["Email_id"].ToString();
            string Query = "select * from Advr where Posted_By!='" + uid + "'";
            DataSet ds = new DataSet();
            ds = DAL.SqlHelper.ExecuteDataset(clsConnection.Connection, CommandType.Text, Query);
            gvDeleteAd.DataSource = ds;
            gvDeleteAd.DataBind();
        }
    }
}
