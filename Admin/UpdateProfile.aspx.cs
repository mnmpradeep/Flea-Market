/*

********** update profile  ************
 Name of the Developer: Harish Chunchu
 Name of the module: update profile
 Task Number: 4.2.2
  Supported Developer: Pradeep Mahabhashyam
 Postconditions:admin should be able to update his personal details in the website
 Functionality of the module: admin can update his personal details that are given when he was added to website 
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
public partial class Admin_UpdateProfile : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            string username = Session["Email_id"].ToString();
            string Query = "select * from Registration where Email_id='" + username + "'";
            DataSet ds = new DataSet();
            ds = DAL.SqlHelper.ExecuteDataset(clsConnection.Connection, CommandType.Text, Query);
            Txt_Fname.Text = ds.Tables[0].Rows[0]["First_Name"].ToString();
            
            Txt_Username.Text = ds.Tables[0].Rows[0]["User_Name"].ToString();
            Txt_Emailid.Text = ds.Tables[0].Rows[0]["Email_Id"].ToString();
           
            Dd_Hintques.Text = ds.Tables[0].Rows[0]["Hint_ques"].ToString();
            Txt_Hintans.Text = ds.Tables[0].Rows[0]["Hint_ans"].ToString();
           

        }

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string username = Session["Email_id"].ToString();
        string loc_frstname = Txt_Fname.Text;
       
        string loc_username = Txt_Username.Text;
        string loc_emailid = Txt_Emailid.Text;
       
        string loc_hintques = Dd_Hintques.Text;
        string loc_hintans = Txt_Hintans.Text;
        
        string MyQuery = null;
        MyQuery = "update Registration set First_Name='" + loc_frstname +  "',User_Name='" + loc_username + "',Email_Id='" + loc_emailid +  "',Hint_ques='" + loc_hintques + "',Hint_ans='" + loc_hintans + "' where Email_id='" + username + "'";
        DAL.SqlHelper.ExecuteNonQuery(clsConnection.Connection, CommandType.Text, MyQuery);
        //Label3.Visible = true;
        //Label3.Text = "Changes Have Been Saved";
        string message = "Your details have been saved Updated.";
        string script = "window.onload = function(){ alert('";
        script += message;
        script += "')};";
        ClientScript.RegisterStartupScript(this.GetType(), "SuccessMessage", script, true);
    }
}
