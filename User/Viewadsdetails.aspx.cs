/*

********** View Ad's Details ************
 Name of the Developer: Pradeep Mahabhashyam
 Name of the module: view Ad's details
 Task Number: 2.1.1
 Supported By: Ramya Patchikura
 Preconditions: User should have already been a registered member with their student email address
 Postconditions: User should be able to view the Ad details of the items
 Functionality of the module: Users can view the details of the Ad's that are posted by other sellers
 Date last modified: 04/18/2017    */

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

public partial class User_Viewadsdetails : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            string addid = Request.QueryString["AddId"].ToString();
            string Query = "select * from Advr where Adv_id='" + addid + "'";
            DataSet ds = new DataSet();
            ds = DAL.SqlHelper.ExecuteDataset(clsConnection.Connection, CommandType.Text, Query);
            Txt_Category.Text = ds.Tables[0].Rows[0]["Category_Name"].ToString();
            Txt_Subcategory.Text = ds.Tables[0].Rows[0]["Subcategory_Name"].ToString();
            Txt_Title.Text = ds.Tables[0].Rows[0]["Title"].ToString();
            Txt_Price.Text = ds.Tables[0].Rows[0]["Price"].ToString();
            Txt_phn.Text = ds.Tables[0].Rows[0]["Phone_Number"].ToString();
            Txt_Quantity.Text = ds.Tables[0].Rows[0]["Quantity"].ToString();
            Txt_Description.Text = ds.Tables[0].Rows[0]["Description"].ToString();
            Txt_Posteddate.Text = ds.Tables[0].Rows[0]["Posted_Date"].ToString();
            Txt_Postedby.Text = ds.Tables[0].Rows[0]["Posted_By"].ToString();
            Image1.ImageUrl = ds.Tables[0].Rows[0]["Image"].ToString();
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string id = Request.QueryString["AddId"].ToString();
        Response.Redirect("~/User/ShowInterest.aspx?AddId=" + id);
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        string id = Request.QueryString["AddId"].ToString();
        Response.Redirect("~/User/ReportItem.aspx?AddId=" + id);
    }


    protected void Button2_Click(object sender, EventArgs e)
    {
        string id = Request.QueryString["AddId"].ToString();
        Response.Redirect("~/User/Payment.aspx?AddId=" + id);
    }
}
