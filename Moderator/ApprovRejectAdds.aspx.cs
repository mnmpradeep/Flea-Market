/*

********** Approve/Reject Ad's ************
 Name of the Developer: Harish chunchu
 Name of the module: Manage Ad's
 Task Number: 3.1
 Preconditions: moderator should have already been a registered member and have some items to approve or reject 
 Postconditions: moderator should be able to either approve/reject the item
 Functionality of the module: moderator can either approve the item or reject the item posted by the users
 Date last modified: 04/25/2017    */

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
public partial class Moderator_ApprovRejectAdds : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            string Query = "select * from Advr where Status='Ad posted'";
          
            DataSet ds = new DataSet();
            ds = DAL.SqlHelper.ExecuteDataset(clsConnection.Connection, CommandType.Text, Query);
            if (ds.Tables[0].Rows.Count != 0)
            {
                gvAddDetails.DataSource = ds;
                gvAddDetails.DataBind();
            }
         else
            {
                approve.Visible = true;
                approve.Text = "There are currently no items to Approve/Reject!";
            }
          
        }
    }
}
