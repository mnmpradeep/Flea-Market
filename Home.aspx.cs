/*
 *********** Guest Home Page************       
 Name of the Developer: Pradeep Mahabhashyam
 Name of the module: Homepage of the Guest
 Task Number: 1 (Guest Tasks)
 Supported By: Ramya Patchikura
 Preconditions: Database path should be correct in the web.config file
 Postconditions: User should be able to view the guest home page
 Functionality of the module: Homepage of Guest, where guest can view and browse items
 Date last modified: 04/19/2017 */

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


public partial class Home : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (!IsPostBack)
            {

                string Query1 = "select * from Category";
                DataSet ds1 = new DataSet();
                ds1 = DAL.SqlHelper.ExecuteDataset(clsConnection.Connection, CommandType.Text, Query1);
                gvCategory.DataSource = ds1;
                gvCategory.DataBind();


            }
            if (Request.QueryString["cat_id"] != null)
            {
                string cat_id = Request.QueryString["cat_id"].ToString();
                string Query4 = "select * from Advr where Category_Id='" + cat_id + "' ";
                DataSet ds4 = new DataSet();
                ds4 = DAL.SqlHelper.ExecuteDataset(clsConnection.Connection, CommandType.Text, Query4);
                if (ds4.Tables[0].Rows.Count != 0)
                {
                    Label1.Text = ds4.Tables[0].Rows[0]["Category_Name"].ToString();
                    gvCategoryView.DataSource = ds4;
                    gvCategoryView.DataBind();

                    string Query2 = "select * from Subcategory where Category_Id='" + cat_id + "' ";
                    DataSet ds2 = new DataSet();
                    ds2 = DAL.SqlHelper.ExecuteDataset(clsConnection.Connection, CommandType.Text, Query2);
                    gvSubcategory.DataSource = ds2;
                    gvSubcategory.DataBind();
                }

                else
                {
                    Label1.Text = "Sorry! Currently there are no items in this category!";
                }

            }
           

            if (Request.QueryString["sub_cat_id"] != null)
            {
                string Sub_cat_id = Request.QueryString["Sub_cat_id"].ToString();
                string Query3 = "select * from Advr where Subcategory_Id='" + Sub_cat_id + "' ";
                DataSet ds3 = new DataSet();
                ds3 = DAL.SqlHelper.ExecuteDataset(clsConnection.Connection, CommandType.Text, Query3);
                gvCategoryView.DataSource = ds3;
                gvCategoryView.DataBind();

                string Query1 = "select * from Subcategory where Subcategory_Id='" + Sub_cat_id + "' ";
                DataSet ds1 = new DataSet();
                ds1 = DAL.SqlHelper.ExecuteDataset(clsConnection.Connection, CommandType.Text, Query1);

                string cat_id = ds1.Tables[0].Rows[0]["Category_Id"].ToString();

                string Query2 = "select * from Subcategory where Category_Id='" + cat_id + "' ";
                DataSet ds2 = new DataSet();
                ds2 = DAL.SqlHelper.ExecuteDataset(clsConnection.Connection, CommandType.Text, Query2);
                gvSubcategory.DataSource = ds2;
                gvSubcategory.DataBind();

                string Query4 = "select * from Category where Category_Id='" + cat_id + "' ";
                DataSet ds4 = new DataSet();
                ds4 = DAL.SqlHelper.ExecuteDataset(clsConnection.Connection, CommandType.Text, Query4);


                Label1.Text = ds4.Tables[0].Rows[0]["Category_Name"].ToString() + " > " + ds1.Tables[0].Rows[0]["Subcategory_Name"].ToString();
            }
        }
    }
}
