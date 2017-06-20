/*

********** admin master page ************
 Name of the Developer: Harish Chunchu
 Name of the module: view profile
 Task Number: 4.0
  Supported Developer: Pradeep Mahabhashyam
 Functionality of the module: This is the main master page for admin where design layout is written, and this design is common in all pages of admin
 Date last modified: 04/27/2017    */

using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Xml.Linq;

public partial class Admin_AdminMasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {

      
            string username = Session["Email_id"].ToString();
            string Query = "select * from Registration where Email_id='" + username + "'";
            DataSet ds = new DataSet();
            ds = DAL.SqlHelper.ExecuteDataset(clsConnection.Connection, CommandType.Text, Query);
            string h = ds.Tables[0].Rows[0]["First_Name"].ToString();
            Label2.Text = "<b><font color=white>" + "Hi, " + "</font>" + "<b><font color=white>" + h + "</font>";

    }
}
