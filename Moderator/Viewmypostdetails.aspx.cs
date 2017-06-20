/*

********** View Posts ************
 Name of the Developer: Harish Chunchu
 Name of the module: view posts details
 Task Number: 3.4.3
 Preconditions: moderator should have already been a registered member and posted atleast one item
 Postconditions: moderator should be able to view the details of the items he has posted
 Functionality of the module: moderator can view the details of the items that he has posted
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
public partial class Moderator_Viewmypostdetails : System.Web.UI.Page
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
            Txt_quantity.Text = ds.Tables[0].Rows[0]["Quantity"].ToString();
            
            Txt_Description.Text = ds.Tables[0].Rows[0]["Description"].ToString();
            Txt_Posteddate.Text = ds.Tables[0].Rows[0]["Posted_Date"].ToString();
            Txt_Postedby.Text = ds.Tables[0].Rows[0]["Posted_By"].ToString();
            Image1.ImageUrl = ds.Tables[0].Rows[0]["Image"].ToString();
        }
    }
}
