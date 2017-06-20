/*

********** View Comments details ************
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
public partial class User_Viewcommentdetails : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            string addid = Request.QueryString["Adv_id"].ToString();

            string Query = "select * from Reply where Adv_Id='" + addid + "'";
            DataSet ds = new DataSet();
            ds = DAL.SqlHelper.ExecuteDataset(clsConnection.Connection, CommandType.Text, Query);
            lb_advid.Text = ds.Tables[0].Rows[0]["Adv_Id"].ToString();
            lb_pb.Text = ds.Tables[0].Rows[0]["Posted_By"].ToString();
            lb_fn.Text = ds.Tables[0].Rows[0]["First_Name"].ToString();
           
            lb_eid.Text = ds.Tables[0].Rows[0]["Email_Id"].ToString();
            Txt_Comment.Text = ds.Tables[0].Rows[0]["Comment"].ToString();
        }
    }
}
