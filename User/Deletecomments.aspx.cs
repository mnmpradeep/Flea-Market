/*

********** Delete Comments ************
 Name of the Developer: Pradeep Mahabhashyam
 Name of the module: Delete comments
 Task Number: 2.4.4
 Supported By: Harish Chunchu
 Preconditions: User should have already been a registered member with their student email address and posted atleast one item
 Postconditions: User should be able to delete the comments that buyer has posted for the item that he has posted
 Functionality of the module: Users can view and delete the comments of the buyer that was posted
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
public partial class User_Deletecomments : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            string uname = Session["Email_id"].ToString();
            string Query = "select * from Reply where Posted_By='" + uname + "'";
            DataSet ds = new DataSet();
            ds = DAL.SqlHelper.ExecuteDataset(clsConnection.Connection, CommandType.Text, Query);
            lb_advid.Text = ds.Tables[0].Rows[0]["Adv_Id"].ToString();
            lb_pb.Text = ds.Tables[0].Rows[0]["Posted_By"].ToString();
            lb_fn.Text = ds.Tables[0].Rows[0]["First_Name"].ToString();
            
            lb_eid.Text = ds.Tables[0].Rows[0]["Email_Id"].ToString();
            Lb_cmmnt.Text = ds.Tables[0].Rows[0]["Comment"].ToString();
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string replyid = Request.QueryString["Reply_Id"].ToString();
        string sql = null;
        sql = "delete from Reply where Reply_Id='" + replyid + "'";
        DAL.SqlHelper.ExecuteNonQuery(clsConnection.Connection, CommandType.Text, sql);
        Label10.Visible = true;
        Response.Redirect("~/User/Deletecomments.aspx");
    }
}
