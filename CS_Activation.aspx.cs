//********** Activation Confirm************
// Name of the Developer: Pradeep Mahabhashyam
// Name of the module: Confirm Activation
// Task Number: 1.2.1.2
// Supported By: Harish Chunchu
// Postconditions: User must have clicked on the confirmation link that is sent to his email.
// Functionality of the module: User will be shown the successful message on the screen
// Date last modified: 04/25/2017
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;
using System.Data.SqlClient;
public partial class CS_Activation : System.Web.UI.Page
{
protected void Page_Load(object sender, EventArgs e)
{
    if (!this.IsPostBack)
    {
        string constr = ConfigurationManager.ConnectionStrings["ClassifiedsConnectionString"].ConnectionString;
        string activationCode = !string.IsNullOrEmpty(Request.QueryString["ActivationCode"]) ? Request.QueryString["ActivationCode"] : Guid.Empty.ToString();
        using (SqlConnection con = new SqlConnection(constr))
        {
            using (SqlCommand cmd = new SqlCommand("DELETE FROM UserActivation WHERE ActivationCode = @ActivationCode"))
            {
                using (SqlDataAdapter sda = new SqlDataAdapter())
                {
                    cmd.CommandType = CommandType.Text;
                    cmd.Parameters.AddWithValue("@ActivationCode", activationCode);
                    cmd.Connection = con;
                    con.Open();
                    int rowsAffected = cmd.ExecuteNonQuery();
                    con.Close();
                    if (rowsAffected == 1)
                    {
                        ltMessage.Text = "Activation Completed successfully.";
                    }
                    else
                    {
                        ltMessage.Text = "Invalid Activation code.";
                    }
                }
            }
        }
    }
}
}