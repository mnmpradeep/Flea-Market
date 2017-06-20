/*
**********ForgotPassword Page ************
 Name of the Developer: Pradeep Mahabhashyam
 Name of the module: Forgot Password - Step2
 Task Number: 1.2.1.2
 Supported By: Harish Chunchu
 Postconditions: User must be having difficult in logging in because he forgot his password.
 Functionality of the module: User will be shown the answer for the hint question that he has selected when registering. This step2 of forgot password
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
public partial class ForgotPwd2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        if (!IsPostBack)
        {
            string eid = Request.QueryString["Email_Id"].ToString();
            string Query = "select * from Registration where Email_Id='" + eid + "'";
            DataSet ds = new DataSet();
            ds = DAL.SqlHelper.ExecuteDataset(clsConnection.Connection, CommandType.Text, Query);
            lbl_HintQue.Text = ds.Tables[0].Rows[0]["Hint_ques"].ToString();
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string eid = Request.QueryString["Email_Id"].ToString();
        string ques = lbl_HintQue.Text;
        string ans = TextBox1.Text;
        string Query1 = "select * from Registration where Email_Id='" + eid + "' and Hint_ques='" + ques + "'";
        DataSet ds1 = new DataSet();
        ds1 = DAL.SqlHelper.ExecuteDataset(clsConnection.Connection, CommandType.Text, Query1);
        if (ds1.Tables[0].Rows.Count != 0)
        {
            if (ds1.Tables[0].Rows[0]["Hint_ans"].ToString() == ans)
            {
                TextBox2.Text = ds1.Tables[0].Rows[0]["Password"].ToString();
                lbl_Msg.Visible = false;
            }
            else
            {
                TextBox1.Text = null;
                lbl_Msg.Text = "Invalid Answer";

            }
        }
        else
        {
            Response.Redirect("~/Forgotpwd2.aspx");
        }
    }
}
