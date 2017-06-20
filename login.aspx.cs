/*

********** Login Main Page for viewing items ************
 Name of the Developer: Ramya Patchikura
 Name of the module: Login
 Task Number: 1.1.1
 Supported By: Pradeep Mahabhashyam
 Preconditions: User should have already been a registered member with their student email address, if he is not a member he can register
 Postconditions: User should be able to view the item he has requested for
 Functionality of the module: Login page of the website, where users can login using their credentials
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

public partial class login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            lbl_AdvId.Text = Request.QueryString["Adv_id"].ToString();
           
            }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string id = Txt_Userid.Text;
        string pwd = Txt_Pwd.Text;
        string Query = "select * from Registration where Email_id='" + id + "' and Password='" + pwd + "'" + "select @@Identity";
        DataSet ds = new DataSet();
        ds = DAL.SqlHelper.ExecuteDataset(clsConnection.Connection, CommandType.Text, Query);
        if (ds.Tables[0].Rows.Count == 1)
        {
            Session["Email_id"] = id;
            string AddId = lbl_AdvId.Text;
            if (ds.Tables[0].Rows[0]["Position"].ToString() == "user")
            {
                Response.Redirect("~/User/Viewadsdetails.aspx?AddId=" + AddId);
            }
            else if (ds.Tables[0].Rows[0]["Position"].ToString() == "admin")
            {
                Response.Redirect("~/Admin/Viewadsdetails.aspx?AddId=" + AddId);
            }
        }
        else
        {
            LBLVALIDATION.Visible = true;
            LBLVALIDATION.Text = " Invalid User";
        }
        


    }


    protected void LinkButton12_Click(object sender, EventArgs e)
    {

    }
}
