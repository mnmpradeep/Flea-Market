/*

********** View profile Page for viewing items ************
 Name of the Developer: Pradeep Mahabhashyam
 Name of the module: view profile
 Task Number: 2.2.1
 Supported By: Harish Chunchu
 Preconditions: User should have already been a registered member with their student email address
 Postconditions: User should be able to view his details
 Functionality of the module: Users can view the details that he has provided during registration
 Date last modified: 04/19/2017    */
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
public partial class User_ViewProfile : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            string username = Session["Email_id"].ToString();
          
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
