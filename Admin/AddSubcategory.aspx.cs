/*

********** Add new sub-category  ************
 Name of the Developer: Harish Chunchu
 Name of the module: Homepage
 Task Number: 4.1.2
 Preconditions: admin should have already been a registered member 
 Postconditions:admin should be able to add new sub-category in the website
 Functionality of the module: admin can access the quick links in the homepage and use add sub-category module to add new list 
 Date last modified: 04/27/2017    */
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

public partial class Admin_AddSubcategory : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            string Query = "select *from category";
            DataSet ds = new DataSet();
            ds = DAL.SqlHelper.ExecuteDataset(clsConnection.Connection, CommandType.Text, Query);
            Dd_category.DataTextField = "Category_Name";
            Dd_category.DataValueField = "Category_Id";
            Dd_category.DataSource = ds;
            Dd_category.DataBind();
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string category = Dd_category.SelectedValue;
        string subcategory = Txt_Subcategory.Text;
        string createddate = DateTime.Now.ToString("dd/MM/yyyy");
        string Query1 = "insert into Subcategory values('" + category + "','" + subcategory + "','" + createddate + "')";
        DAL.SqlHelper.ExecuteNonQuery(clsConnection.Connection, CommandType.Text, Query1);
        if (!string.IsNullOrWhiteSpace(Txt_Subcategory.Text))
        {


            string message = "Sub-Category has been added.";
            string script = "window.onload = function(){ alert('";
            script += message;
            script += "')};";
            ClientScript.RegisterStartupScript(this.GetType(), "SuccessMessage", script, true);


        }
    }
}
