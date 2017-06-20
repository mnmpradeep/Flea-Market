/*

********** Modify Ad details ************
 Name of the Developer: Harish Chunchu
 Name of the module: Modify Ad
 Task Number: 3.4.1
 Preconditions: moderator should have already been a registered member and posted an Ad
 Postconditions: moderator should be able to update his Ad
 Functionality of the module: moderator can modify the details about the item he has posted. 
 Date last modified: 04/20/2017    */
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
public partial class Moderator_Modifydetails : System.Web.UI.Page
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
            
            Txt_Description.Text = ds.Tables[0].Rows[0]["Description"].ToString();
            Txt_Posteddate.Text = ds.Tables[0].Rows[0]["Posted_Date"].ToString();
            Txt_Postedby.Text = ds.Tables[0].Rows[0]["Posted_By"].ToString();
            Image1.ImageUrl = ds.Tables[0].Rows[0]["Image"].ToString();
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string addid = Request.QueryString["AddId"].ToString();
        string loc_categoryname = Txt_Category.Text;
        string loc_subcategoryname = Txt_Subcategory.Text;
        string loc_title = Txt_Title.Text;
        string loc_price = Txt_Price.Text;
        string loc_quantity = Txt_Quantity.Text;

        
        string loc_description = Txt_Description.Text;
        string loc_posteddate = Txt_Posteddate.Text;
        string loc_postedby = Txt_Postedby.Text;
        if (FileUpload1.HasFile)
        {

            FileUpload1.SaveAs(Server.MapPath("~/UploadImages") + "/" + FileUpload1.FileName);
            string imgpath = ("~/UploadImages") + "/" + FileUpload1.FileName;
            //Image1.ImageUrl = ds.Tables[0].Rows[0]["Image"].ToString();
            string MyQuery = null;
            MyQuery = "update Advr set Category_Name='" + loc_categoryname + "',Subcategory_Name='" + loc_subcategoryname + "',Title='" + loc_title  + "',Description='" + loc_description + "',Posted_Date='" + loc_posteddate + "',Posted_By='" + loc_postedby + "',Image='" + imgpath + "' where Adv_id='" + addid + "'";
            DAL.SqlHelper.ExecuteNonQuery(clsConnection.Connection, CommandType.Text, MyQuery);

        }
        //Label12.Visible = true;
        //Label12.Text = "Changes Updated";
        string message = "Changes Has been saved.";
        string script = "window.onload = function(){ alert('";
        script += message;
        script += "')};";
        ClientScript.RegisterStartupScript(this.GetType(), "SuccessMessage", script, true);
    }
}
