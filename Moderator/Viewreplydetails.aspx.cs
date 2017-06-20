/*

********** View reply details ************
 Name of the Developer: Harish Chunchu
 Name of the module: view reply details
 Task Number: 3.3
 Supported By: Pradeep Mahabhashyam
  Postconditions: Moderator should be able to view the comments that buyer has posted for the items
 Functionality of the module: Moderator can view the comments of the buyer along with the details of the item
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

public partial class Moderator_Viewreplydetails : System.Web.UI.Page
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
