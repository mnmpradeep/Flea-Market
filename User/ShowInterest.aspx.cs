/*

********** show interest ************
 Name of the Developer: Pradeep Mahabhashyam
 Name of the module: Show interest
 Task Number: 2.1.1.1
 Supported By: Ramya Patchikura
 Preconditions: User should have already been a registered member with their student email address
 Postconditions: User should be able to send a comment to the seller
 Functionality of the module: User can use the contact seller option to contact the seller by sending a comment 
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
public partial class User_ShowInterest : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            string uid = Session["Email_id"].ToString();
            string Query = "select * from Registration where Email_id='" + uid + "'";
            DataSet ds = new DataSet();
            ds = DAL.SqlHelper.ExecuteDataset(clsConnection.Connection, CommandType.Text, Query);
            lb_fn.Text = ds.Tables[0].Rows[0]["First_name"].ToString();
            
            lb_eid.Text = ds.Tables[0].Rows[0]["Email_id"].ToString();
            string addid = Request.QueryString["AddId"].ToString();
            string sql = "select * from Advr where Adv_Id='" + addid + "' ";
            DataSet ds1 = new DataSet();
            ds1 = DAL.SqlHelper.ExecuteDataset(clsConnection.Connection, CommandType.Text, sql);
            lb_pb.Text = ds1.Tables[0].Rows[0]["Posted_By"].ToString();
            lb_advid.Text = ds1.Tables[0].Rows[0]["Adv_id"].ToString();
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string uid = Session["Email_id"].ToString();
        string loc_firstname = lb_fn.Text;
       
        string loc_emailid = lb_eid.Text;
        string loc_comment = Txt_Comment.Text;
        string loc_postedby = lb_pb.Text;
        string loc_addid = lb_advid.Text;
        string MyQuery = null;
        MyQuery = "insert into Reply values('" + loc_addid + "','" + loc_firstname + "','" + loc_emailid + "','" + loc_comment + "','" + loc_postedby + "','" + uid+ "')";
        DAL.SqlHelper.ExecuteDataset(clsConnection.Connection, CommandType.Text, MyQuery);
        if (Txt_Comment!=null){
            string message = "Comment has been sent.";
            string script = "window.onload = function(){ alert('";
            script += message;
            script += "')};";
            ClientScript.RegisterStartupScript(this.GetType(), "SuccessMessage", script, true);
        }
       
    }
}
