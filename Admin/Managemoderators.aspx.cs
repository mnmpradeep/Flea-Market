/*

********** manage moderator  ************
 Name of the Developer: Harish Chunchu
 Name of the module: manage moderator
 Task Number: 4.1.3
  Supported Developer: Pradeep Mahabhashyam
 Preconditions: admin should have already been a registered member 
 Postconditions:admin should be able to add/delete the moderator from the website
 Functionality of the module: admin can access the quick links in the homepage and use manage moderator option to add/delete the  moderator 
 Date last modified: 04/24/2017    */

using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_Managemoderators : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            string uname= Session["Email_id"].ToString();
            string Query = "select * from Registration where position='moderator' and Email_id!='"+uname+"'";
            DataSet ds1 = new DataSet();
            ds1 = DAL.SqlHelper.ExecuteDataset(clsConnection.Connection, CommandType.Text, Query);
            gvManageModerator.DataSource = ds1;
            gvManageModerator.DataBind();
  
        }
    }

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
 

    }
}