/*
**********ForgotPassword Page ************
 Name of the Developer: Pradeep Mahabhashyam
 Name of the module: Forgot Password - Step1
 Task Number: 1.2.1.1
 Supported By: Harish Chunchu
 Postconditions: User must be having difficult in logging in because he forgot his password.
 Functionality of the module: User will be shown a hint question that he has selected when registering. This step1 of forgot password
 Date last modified: 04/18/2017
 */
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
public partial class Forgotpwd1 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string id = TextBox1.Text;
        string Query = "select * from Registration where Email_Id='" + id + "'";
        DataSet ds = new DataSet();
        ds = DAL.SqlHelper.ExecuteDataset(clsConnection.Connection, CommandType.Text, Query);
        if (ds.Tables[0].Rows.Count == 1)
        {
            Response.Redirect("~/ForgotPwd2.aspx?Email_Id=" + id);
        }
        else
        {
           
            Response.Redirect("~/ForgotPwd1.aspx");
           


        }
    }
}
