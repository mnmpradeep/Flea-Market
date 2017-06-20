/*

********** Report item ************
 Name of the Developer: Harish Chunchu
 Name of the module: Report item
 Task Number: 2.1.1.2
 Supported By: Pradeep Mahabhashyam
 Preconditions: User should have already been a registered member with their student email address
 Postconditions: User should be able to send a report the item
 Functionality of the module: User can use the report item option to report the item. 
 Date last modified: 04/25/2017    */

using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class User_ReportItem : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            string reportedby = Session["Email_id"].ToString();
            string Query = "select * from Registration where Email_id='" +reportedby+"'";
          
            DataSet ds = new DataSet();
            ds = DAL.SqlHelper.ExecuteDataset(clsConnection.Connection, CommandType.Text, Query);
            
            lb_fn.Text = ds.Tables[0].Rows[0]["Email_id"].ToString();

           string addid = Request.QueryString["AddId"].ToString();
           string sql = "select * from Advr where Adv_Id='" + addid + "' ";
            DataSet ds1 = new DataSet();
            ds1 = DAL.SqlHelper.ExecuteDataset(clsConnection.Connection, CommandType.Text, sql);
        
            lb_pb.Text = ds1.Tables[0].Rows[0]["Posted_By"].ToString();
            lb_advid.Text = ds1.Tables[0].Rows[0]["Adv_id"].ToString();
    
            Label12.Text= ds1.Tables[0].Rows[0]["Posted_date"].ToString();
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string loc_reportedby = lb_fn.Text;  
             string loc_report = Txt_report.Text;
        string loc_postedby = lb_pb.Text;
        string loc_addid = lb_advid.Text;
        string loc_posteddate = Label12.Text;
        
        string MyQuery = null;

        MyQuery = "insert into ReportItem  values('"+ loc_postedby + "','" + loc_reportedby + "','" + loc_report + "','" + loc_addid + "','" + loc_posteddate + "')";
        DAL.SqlHelper.ExecuteDataset(clsConnection.Connection, CommandType.Text, MyQuery);
        if (Txt_report != null)
        {
            string message = "Reason for reporting has been sent to moderator successfully.";
            string script = "window.onload = function(){ alert('";
            script += message;
            script += "')};";
            ClientScript.RegisterStartupScript(this.GetType(), "SuccessMessage", script, true);
        }

    }
}