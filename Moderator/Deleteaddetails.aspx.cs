/*

********** Delete Ad details ************
 Name of the Developer: Harish Chunchu
 Name of the module: Delete Ad details
 Task Number: 3.2
 Supported By: Pradeep Mahabhashyam
  Postconditions: Moderator should be able to delete the Ad's of the users
 Functionality of the module: Moderator can delete the Ad's along with the details of the item
 Date last modified: 04/24/2017    */
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
public partial class Moderator_Deleteaddetails : System.Web.UI.Page
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
            Txt_Quantity.Text = ds.Tables[0].Rows[0]["Quantity"].ToString();
            Txt_phn.Text = ds.Tables[0].Rows[0]["Phone_Number"].ToString();
            Txt_Description.Text = ds.Tables[0].Rows[0]["Description"].ToString();
            Txt_Posteddate.Text = ds.Tables[0].Rows[0]["Posted_Date"].ToString();
            Txt_Postedby.Text = ds.Tables[0].Rows[0]["Posted_By"].ToString();
            Image1.ImageUrl = ds.Tables[0].Rows[0]["Image"].ToString();
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string addid = Request.QueryString["AddId"].ToString();
        string sql = null;
        sql = "delete from Advr where Adv_id='" + addid + "'";
        DAL.SqlHelper.ExecuteNonQuery(clsConnection.Connection, CommandType.Text, sql);

        Response.Redirect("~/Moderator/Deletead.aspx");
 
    }
}
