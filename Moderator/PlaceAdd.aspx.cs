/*

********** Place Ad ************
 Name of the Developer: Ramya Patchikura
 Name of the module: Place Ad
 Task Number: 3.3
 Preconditions: moderator should have already been a registered member with their student email address
 Postconditions: moderator should be able to place an Ad
 Functionality of the module: moderator can use the Place an Ad for free by filling the details about the item. 
 Date last modified: 04/23/2017    */
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
public partial class Moderator_PlaceAdd : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            string Query1 = "select * from category";
            DataSet ds = new DataSet();
            ds = DAL.SqlHelper.ExecuteDataset(clsConnection.Connection, CommandType.Text, Query1);
            DropDownList1.DataTextField = "Category_Name";
            DropDownList1.DataValueField = "Category_Id";
            DropDownList1.DataSource = ds;
            DropDownList1.DataBind();
            DropDownList1.Items.Insert(0, "select Category");
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string loc_category = DropDownList1.SelectedValue;
        string loc_categoryname = DropDownList1.SelectedItem.ToString();
        string loc_subcategory = DropDownList2.SelectedValue;
        string loc_subcategoryname = DropDownList2.SelectedItem.ToString();
        string loc_title = Txt_Title.Text;
        string loc_price = Txt_Price.Text;
        string loc_quantity = Txt_Quantity.Text;
      
        string loc_phonenum = Txt_Phonenumber.Text;
        string loc_address = Txt_Addr.Text;
        string loc_description = Txt_Description.Text;
        string loc_postedby = Session["Email_id"].ToString();
        if (FileUpload1.HasFile)
        {

            FileUpload1.SaveAs(Server.MapPath("~/UploadImages") + "/" + FileUpload1.FileName);
            string imgpath = ("~/UploadImages") + "/" + FileUpload1.FileName;
            string createddate = DateTime.Now.ToString("dd/MM/yyyy");
            string enddate = DateTime.Now.AddDays(45).ToString("MM/dd/yyyy");
            string sql = "insert into Advr values('','" + loc_category + "','" + loc_categoryname + "','" + loc_subcategory + "','" + loc_subcategoryname + "','" + loc_title + "','" + loc_price + "','" + loc_quantity + "','" + loc_phonenum + "','" + loc_address + "','" + loc_description + "','" + imgpath + "','Ad posted','" + createddate + "','" + loc_postedby + "','"+enddate+"','45')" + "select @@identity";
            //DataSet ds2 = new DataSet();
            //ds2 = DAL.SqlHelper.ExecuteDataset(clsConnection.Connection, CommandType.Text,sql);
            int id = Convert.ToInt32(DAL.SqlHelper.ExecuteScalar(clsConnection.Connection, CommandType.Text, sql));
            string addid = loc_categoryname[0].ToString() + id + loc_subcategoryname[0].ToString();
            string sql1 = "update Advr set Adv_id='" + addid + "' where Id='" + id + "'";
            DAL.SqlHelper.ExecuteNonQuery(clsConnection.Connection, CommandType.Text, sql1);
          
        }
        else
        {
            Response.Write("Image not selected");

        }
    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        int Category_Id = int.Parse(DropDownList1.SelectedValue.ToString());
        string Query2 = "select * from Subcategory where Category_Id=" + Category_Id;
        DataSet ds3 = new DataSet();
        ds3 = DAL.SqlHelper.ExecuteDataset(clsConnection.Connection, CommandType.Text, Query2);
        DropDownList2.DataTextField = "Subcategory_Name";
        DropDownList2.DataValueField = "Subcategory_Id";
        DropDownList2.DataSource = ds3;
        DropDownList2.DataBind();
        DropDownList2.Items.Insert(0, "Select sub Category");
    }
}
