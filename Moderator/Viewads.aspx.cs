/*

********** View Ad's ************
 Name of the Developer:Harish Chunchu
 Name of the module: view Ad's
 Task Number: 3.4
 Supported By: Ramya Patchikura
 Preconditions: moderator should have already been a registered member 
 Postconditions: moderator should be able to view the details of the items
 Functionality of the module: moderator can view the details of the Ad's that are posted by other sellers
 Date last modified: 04/25/2017    */
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

public partial class Moderator_Viewads : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
           


            string uid = Session["Email_id"].ToString();
            string Query = "select * from Advr where Status='Approved' and Posted_By !='" + uid + "'";
            DataSet ds1 = new DataSet();
            ds1 = DAL.SqlHelper.ExecuteDataset(clsConnection.Connection, CommandType.Text, Query);

            gvViewAd.DataSource = ds1;
            gvViewAd.DataBind();

        
        }
    }
}
