/*

********** Delete moderator  ************
 Name of the Developer: Harish Chunchu
 Name of the module: Homepage
 Task Number: 4.1.3
 Preconditions: admin should have already been a registered member 
 Postconditions:admin should be able to delete the moderator from the website
 Functionality of the module: admin can access the quick links in the homepage and use delete moderator option to delete the existing moderator 
 Date last modified: 04/27/2017    */

using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_Deletemoderator : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            string un = Request.QueryString["EmailId"].ToString();
            string Query = "select * from Registration where Email_id='"+un+"' and Position='moderator'";
            DataSet ds = new DataSet();
            ds = DAL.SqlHelper.ExecuteDataset(clsConnection.Connection, CommandType.Text, Query);
            lb_User_id.Text = ds.Tables[0].Rows[0]["User_id"].ToString();
            Label2.Text = ds.Tables[0].Rows[0]["User_name"].ToString();
            lb_firstname.Text = ds.Tables[0].Rows[0]["First_name"].ToString();
           
            lb_EI.Text = ds.Tables[0].Rows[0]["Email_Id"].ToString();
            

        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string un = Request.QueryString["EmailId"].ToString();
        string sql = null;
        sql = "delete from Registration where Email_id ='" + un + "'";
        DAL.SqlHelper.ExecuteNonQuery(clsConnection.Connection, CommandType.Text, sql);
        Response.Redirect("~/Admin/Managemoderators.aspx");
    }
}