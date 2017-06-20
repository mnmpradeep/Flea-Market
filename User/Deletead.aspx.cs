/*

********** Delete Ad ************
 Name of the Developer: Pradeep Mahabhashyam
 Name of the module: Delete Ad
 Task Number: 2.4.2
 Preconditions: User should have already been a registered member with their student email address and posted an item
 Postconditions: User should be able to Delete the Ad that he has posted
 Functionality of the module: Users can view the list of Ad's that are posted by him and delete them
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
public partial class User_Deletead : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            string uid = Session["Email_id"].ToString();
            String Query = "select * from Advr where Posted_By='" + uid + "'";
            DataSet ds = new DataSet();
            ds = DAL.SqlHelper.ExecuteDataset(clsConnection.Connection, CommandType.Text, Query);
            gvDeleteAd.DataSource = ds;
            gvDeleteAd.DataBind();
        }
    }
}
