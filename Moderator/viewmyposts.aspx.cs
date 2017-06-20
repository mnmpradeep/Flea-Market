/*

********** View Posts ************
 Name of the Developer: Harish Chunchu
 Name of the module: view posts
 Task Number: 3.4.3
 Preconditions: moderator should have already been a registered member and posted atleast one item
 Postconditions: moderator should be able to view the details of the items he has posted
 Functionality of the module: moderator can view the list of the items that he has posted
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

public partial class Moderator_viewmyposts : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            
          


            string uid = Session["Email_id"].ToString();
            string Query = "select * from Advr where Status='Approved' and Posted_By !='" + uid + "'";
            DataSet ds1 = new DataSet();
            ds1 = DAL.SqlHelper.ExecuteDataset(clsConnection.Connection, CommandType.Text, Query);

            gvMyPosts.DataSource = ds1;
            gvMyPosts.DataBind();

        
        }
    }
}
