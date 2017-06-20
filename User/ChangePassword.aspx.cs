/*

********** Change Password ************
 Name of the Developer: Pradeep Mahabhashyam
 Name of the module: change password
 Task Number: 2.2.3
 Preconditions: User should have already been a registered member with their student email address 
 Postconditions: User should be able to change the password
 Functionality of the module: Users can change the password of his account
 Date last modified: 04/15/2017    */
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
public partial class User_ChangePassword : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {

            if (Session["Email_id"] == null)
                Response.Redirect("~/UserAuthentication.aspx");
            else
            {
                string User_Name = Session["Email_id"].ToString();
                string Query = "select * from Registration where Email_id='" + User_Name + "'";
                DAL.SqlHelper.ExecuteNonQuery(clsConnection.Connection, CommandType.Text, Query);
            }
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string User_Name = Session["Email_id"].ToString();
        string pwd = Txt_oldpwd.Text;
        string Query = "select * from Registration where Email_id='" + User_Name + "' and Password='" + pwd + "'";
        DataSet ds = new DataSet();
        ds = DAL.SqlHelper.ExecuteDataset(clsConnection.Connection, CommandType.Text, Query);
        if (ds.Tables[0].Rows.Count == 1)
        {
            if (ds.Tables[0].Rows[0]["Password"].ToString() == pwd)
            {
                string loc_psw = Txt_newpwd.Text;
                string loc_cnfrmpsw = Txt_Cnfrmpwd.Text;
                string sql = "update Registration set Password='" + loc_psw + "', Confirm_Password='" + loc_cnfrmpsw + "' where User_Name='" + User_Name + "'";
                DAL.SqlHelper.ExecuteNonQuery(clsConnection.Connection, CommandType.Text, sql);
                Label3.Visible = true;
                Label3.Text = "Password Has Been Changed";
            }
            else
            {
                Label2.Text = "Invalid Password";
                Label2.Visible = true;
            }
        }
    }
}
