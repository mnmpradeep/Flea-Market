/*

********** view profile  ************
 Name of the Developer: Harish Chunchu
 Name of the module: view profile
 Task Number: 4.2.1
  Supported Developer: Pradeep Mahabhashyam
 Postconditions:admin should be able to view his personal details in the website
 Functionality of the module: admin can view his personal details that are given when he was added to website 
 Date last modified: 04/22/2017    */

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
public partial class Admin_ViewProfile : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            string username = Session["Email_id"].ToString();
            //Label1.Text = username;
           
            string Query = "select * from Registration where Email_id='" + username + "'";
            DataSet ds = new DataSet();
            ds = DAL.SqlHelper.ExecuteDataset(clsConnection.Connection, CommandType.Text, Query);
            Label1.Text = ds.Tables[0].Rows[0]["First_Name"].ToString();
            Lbl_Firstname.Text = ds.Tables[0].Rows[0]["First_Name"].ToString();
            
            Lbl_Username.Text = ds.Tables[0].Rows[0]["User_Name"].ToString();
            Lbl_Emailid.Text = ds.Tables[0].Rows[0]["Email_Id"].ToString();
           
            Lbl_HintQues.Text = ds.Tables[0].Rows[0]["Hint_ques"].ToString();
            Lbl_HintAns.Text = ds.Tables[0].Rows[0]["Hint_ans"].ToString();
           

        }
    }
}
