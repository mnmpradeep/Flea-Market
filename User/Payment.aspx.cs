//********** Payment Page************
// Name of the Developer:Harish Chunchu
// Name of the module: Payment
// Task Number: 2.2.3.1
// Supported By: Pradeep Mahabhashyam
// Preconditions: User should have logged into the website and ready to pay for an item
// Postconditions: User should be able to pay successfully.
// Functionality of the module: payment page, where users' will provide their card details and pay for the item
// Date last modified: 04/29/2017

using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class User_Payment : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Label5.Visible = false;
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string loc_cardnumber = TextBox1.Text;
        string loc_expirydate = TextBox2.Text;
        string loc_cardholder = TextBox3.Text;
        string loc_cvv = TextBox4.Text;
        String myquery = null;
        myquery = "insert into Payment  (Cardnumber,Expirydate,CardHoldername,CVV) values('" + loc_cardnumber + "','" + loc_expirydate + "','" + loc_cardholder + "','" + loc_cvv + "')";
        DAL.SqlHelper.ExecuteNonQuery(clsConnection.Connection, CommandType.Text, myquery);
        //string addid = Request.QueryString["AddId"].ToString();
        //string sql = "Delete from Advr where Adv_id=" + addid + "";
        //DAL.SqlHelper.ExecuteNonQuery(clsConnection.Connection, CommandType.Text, sql);
        Label5.Visible = true;
        Label5.Text = "Payment is successfully completed";
      
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/User/Payment.aspx");

    }
}