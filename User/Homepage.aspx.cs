/*

********** Homepage of User  ************
 Name of the Developer: Pradeep Mahabhashyam
 Name of the module: Homepage
 Task Number: 2.0
 Supported By: Harish Chunchu
 Preconditions: User should have already been a registered member with their student email address
 Postconditions: User should be able to view his homepage on the browser
 Functionality of the module: User can search items using the search engine or use categories to browse categories 
 Date last modified: 04/26/2017    */

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
using System.Text.RegularExpressions;

public partial class User_Homepage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //string id= Label2.Text;
       
     

        if (!this.IsPostBack)
        {
            string Query1 = "select * from Category";
            DataSet ds1 = new DataSet();
            ds1 = DAL.SqlHelper.ExecuteDataset(clsConnection.Connection, CommandType.Text, Query1);
            gvCategories.DataSource = ds1;
            gvCategories.DataBind();
        }
        if (Request.QueryString["cat_id"] != null)
        {
            gvCustomers.Visible = false;
            txtSearch.Attributes["style"] = "margin-left:-350px";
            search.Attributes["style"] = "margin-left:0px";

            string cat_id = Request.QueryString["cat_id"].ToString();
            string Query4 = "select * from Advr where Category_Id='" + cat_id + "' ";
            DataSet ds4 = new DataSet();
            ds4 = DAL.SqlHelper.ExecuteDataset(clsConnection.Connection, CommandType.Text, Query4);
            //Label1.Text = ds4.Tables[0].Rows[0]["Category_Name"].ToString();
            gvCatResponse.DataSource = ds4;
            gvCatResponse.DataBind();

            string Query2 = "select * from Subcategory where Category_Id='" + cat_id + "' ";
            DataSet ds2 = new DataSet();
            ds2 = DAL.SqlHelper.ExecuteDataset(clsConnection.Connection, CommandType.Text, Query2);
            gvSubcategory.DataSource = ds2;
            gvSubcategory.DataBind();

        }
        if (Request.QueryString["sub_cat_id"] != null)
        {
            gvCustomers.Visible = false;
            txtSearch.Attributes["style"] = "margin-left:-350px";
            search.Attributes["style"] = "margin-left:0px";
            string Sub_cat_id = Request.QueryString["Sub_cat_id"].ToString();
            string Query3 = "select * from Advr where Subcategory_Id='" + Sub_cat_id + "' ";
            DataSet ds3 = new DataSet();
            ds3 = DAL.SqlHelper.ExecuteDataset(clsConnection.Connection, CommandType.Text, Query3);
            gvAddView.DataSource = ds3;
            gvAddView.DataBind();

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


            //Label1.Text = ds4.Tables[0].Rows[0]["Category_Name"].ToString() + " : " + ds1.Tables[0].Rows[0]["Subcategory_Name"].ToString();
        }

    }
    protected void Search(object sender, EventArgs e)
    {
        if (txtSearch.Text != null)
        {
            this.BindGrid();
        }
     
    }
   
    private void BindGrid()
    {
        
        gvCustomers.Visible = true;
        gvCatResponse.Visible = false;
        gvAddView.Visible = false;
      


        string constr = ConfigurationManager.ConnectionStrings["ClassifiedsConnectionString"].ConnectionString;
        using (SqlConnection con = new SqlConnection(constr))
        {
            using (SqlCommand cmd = new SqlCommand())
            {
                cmd.CommandText = "SELECT Adv_id, Title, Quantity, Price FROM Advr WHERE Title LIKE '%' + @Title + '%'";
                cmd.Connection = con;
                cmd.Parameters.AddWithValue("@Title", txtSearch.Text.Trim());
                DataTable dt = new DataTable();
                using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
                {
                    sda.Fill(dt);
                    gvCustomers.DataSource = dt;
                    gvCustomers.DataBind();
                }
            }
        }
    }

    protected void OnPageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        gvCustomers.PageIndex = e.NewPageIndex;
        this.BindGrid();
    }
    protected void OnRowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            e.Row.Cells[1].Text = Regex.Replace(e.Row.Cells[1].Text, txtSearch.Text.Trim(), delegate (Match match)
            {
                return string.Format("<span style = 'background-color:#FFFF99'>{0}</span>", match.Value);
            }, RegexOptions.IgnoreCase);
          
        }
    }
}
