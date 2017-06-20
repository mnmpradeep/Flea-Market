/*

********** Add new category  ************
 Name of the Developer: Harish Chunchu
 Name of the module: Homepage
 Task Number: 4.1.1
 Preconditions: admin should have already been a registered member 
 Postconditions:admin should be able to add new category in the website
 Functionality of the module: admin can access the quick links in the homepage and use add category module to add new list 
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
public partial class Admin_AddCategory : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {

        string loc_catname = Txt_Adcategory.Text;
        string MyQuery = null;
        string createddate = DateTime.Now.ToString("dd/MM/yyyy");
        MyQuery = "insert into Category values('" + loc_catname + "','" + createddate + "')";
        DataSet ds = new DataSet();
        ds = DAL.SqlHelper.ExecuteDataset(clsConnection.Connection, CommandType.Text, MyQuery);
        //Label4.Visible = true;
        //Label4.Text = "Category Inserted Succesfully";
        if (!string.IsNullOrWhiteSpace(Txt_Adcategory.Text))
        {


            string message = "Category has been added.";
            string script = "window.onload = function(){ alert('";
            script += message;
            script += "')};";
            ClientScript.RegisterStartupScript(this.GetType(), "SuccessMessage", script, true);


        }


    }
}

