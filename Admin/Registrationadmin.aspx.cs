/*

********** Registration ************
 Name of the Developer: Harish Chunchu
 Name of the module: Registration
 Task Number: 4.1.3
  Supported Developer: Pradeep Mahabhashyam
 Preconditions: admin should have already been a registered member 
 Postconditions:admin should be able to add the users to the website
 Functionality of the module: admin can access the quick links in the homepage and use manage user option to add the  users  by using this form
 Date last modified: 04/23/2017    */

using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Admin_Registration : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //if (!IsPostBack)
        //{
        //    string un = Request.QueryString["position"].ToString();


        //}

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string loc_frstname = Txt_Fname.Text;
       
        string loc_passwrd = Txt_Pwd.Text;
        string loc_cnfrmpwd = Txt_Cfrmpwd.Text;
        string loc_emailid = Txt_Emailid.Text;
        
        string loc_hintques = Dd_Hintques.Text;
        string loc_hintans = Txt_Hintans.Text;
        string loc_position = Text_pos.Text;
      

        string MyQuery = null;
        MyQuery = "insert into Registration  (First_name,Password,Confirm_password,Email_id,Hint_ques,Hint_ans,Position) values ('" + loc_frstname + "','" + loc_passwrd  + "','" + loc_cnfrmpwd + "','"+ loc_emailid + "','" + loc_hintques + "','" + loc_hintans + "','" + loc_position + "')" ;
        DataSet ds = new DataSet();
        object uid = Convert.ToInt32(DAL.SqlHelper.ExecuteScalar(clsConnection.Connection, CommandType.Text, MyQuery));


        string loc_username = loc_frstname.ToString() + uid ;
        string sql = "update Registration set User_name='" + loc_username + "' where User_id='" + uid + "'";
        DAL.SqlHelper.ExecuteNonQuery(clsConnection.Connection, CommandType.Text, sql);
        if (loc_position == "user") {
            Response.Redirect("~/Admin/Manageusers.aspx");
        }
        else if (loc_position == "moderator") {
            Response.Redirect("~/Admin/Managemoderators.aspx");
        }
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Admin/Registrationadmin.aspx");
    }
}