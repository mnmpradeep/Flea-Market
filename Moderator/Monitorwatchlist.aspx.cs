/*

********** Monitor watch list ************
 Name of the Developer: Harish Chunchu
 Name of the module: Monitor watchlist
 Task Number: 3.5
 Preconditions: moderator should have already been a registered member
 Postconditions: moderator should be able to see the count of watchlist users
 Functionality of the module: moderator can view the users who have been reported. 
 Date last modified: 04/27/2017    */
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.Sql;
public partial class Moderator_Monitorwatchlist : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            string uid = Session["Email_id"].ToString();
            string Query = "select distinct Posted_by,Reported_by, Complaint, Count(*) as Count from ReportItem group by Complaint,Reported_by, Posted_by";
            DataSet ds = new DataSet();
            ds = DAL.SqlHelper.ExecuteDataset(clsConnection.Connection, CommandType.Text, Query);
            gvWatchlist.DataSource = ds;
            gvWatchlist.DataBind();
         
        }

    }
}