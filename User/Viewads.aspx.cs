/*

********** View Ad's ************
 Name of the Developer: Pradeep Mahabhashyam
 Name of the module: view Ad's
 Task Number: 2.4.4
 Supported By: Ramya Patchikura
 Preconditions: User should have already been a registered member with their student email address
 Postconditions: User should be able to view the Ad details of the items
 Functionality of the module: Users can view the details of the Ad's that are posted by other sellers
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
public partial class User_Viewads : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {

     

        


            string uid = Session["Email_id"].ToString();
            string Query = "select * from Advr where Status='Approved' and Posted_By !='" + uid + "'";
            DataSet ds1 = new DataSet();
            ds1 = DAL.SqlHelper.ExecuteDataset(clsConnection.Connection, CommandType.Text, Query);

            gvViewAds.DataSource = ds1;
            gvViewAds.DataBind();

        }
    }
}
