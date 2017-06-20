/*

********** Registration Page ************
 Name of the Developer: Ramya Patchikura
 Name of the module: Registration form
 Task Number: 1.2.1
 Supported By: Pradeep Mahabhashyam
 Preconditions: User should be a student of UHCL/UH inorder to sigup with their student email address.
 Postconditions: User should be able to register successfully.
 Functionality of the module: Registration page of the website where users fill information inorder to register to website
 Date last modified: 04/21/2017   */

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
using System.Net;
using System.Net.Mail;

public partial class Registration : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
        }
    
    protected void Button1_Click(object sender, EventArgs e)
    {
         string loc_frstname = Txt_Fname.Text;
          
           string loc_passwrd = Txt_Pwd.Text;
           string loc_cnfrmpwd = Txt_Cfrmpwd.Text;
           string loc_emailid = Txt_Emailid.Text;
            string loc_hintques = Dd_Hintques.Text;
           string loc_hintans = Txt_Hintans.Text;
         
            string MyQuery = null;
            MyQuery = "insert into Registration (First_name,Password,Confirm_password,Email_id,Hint_ques,Hint_ans,Position) values ('" + loc_frstname + "','" + loc_passwrd + "','" + loc_cnfrmpwd + "','" + loc_emailid + "','"  + loc_hintques + "','" + loc_hintans + "','user')"+"select @@Identity";
            DataSet ds = new DataSet();
            int uid = Convert.ToInt32(DAL.SqlHelper.ExecuteScalar(clsConnection.Connection, CommandType.Text, MyQuery));
 
        
            string loc_username = loc_frstname.ToString() + uid;
            string sql = "update Registration set User_name='" + loc_username + "' where User_id='" + uid + "'";
      

        DAL.SqlHelper.ExecuteNonQuery(clsConnection.Connection, CommandType.Text, sql);
        SendActivationEmail(uid);

        Response.Redirect("~/cnfrmregistration.aspx?User_id=" + uid);
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/REGISTRATION.aspx");
    }

    private void SendActivationEmail(int userId)
    {
        string constr = ConfigurationManager.ConnectionStrings["ClassifiedsConnectionString"].ConnectionString;
        string activationCode = Guid.NewGuid().ToString();
        using (SqlConnection con = new SqlConnection(constr))
        {
            using (SqlCommand cmd = new SqlCommand("INSERT INTO UserActivation VALUES(@User_id, @ActivationCode)"))
            {
                using (SqlDataAdapter sda = new SqlDataAdapter())
                {
                    cmd.CommandType = CommandType.Text;
                    cmd.Parameters.AddWithValue("@User_id", userId);
                    cmd.Parameters.AddWithValue("@ActivationCode", activationCode);
                    cmd.Connection = con;
                    con.Open();
                    cmd.ExecuteNonQuery();
                    con.Close();
                }
            }
        }
        using (MailMessage mm = new MailMessage("mnm.pradeep@gmail.com", Txt_Emailid.Text))
        {
            mm.Subject = "Account Activation";
            string body = "Hello " + Txt_Fname.Text.Trim() + ",";
            body += "<br /><br />Please click the following link to activate your account";
            body += "<br /><a href = '" + Request.Url.AbsoluteUri.Replace("Registration.aspx", "CS_Activation.aspx?ActivationCode=" + activationCode) + "'>Click here to activate your account.</a>";
            body += "<br /><br />Thanks";
            mm.Body = body;
            mm.IsBodyHtml = true;
            SmtpClient smtp = new SmtpClient();
            smtp.Host = "smtp.gmail.com";
            smtp.EnableSsl = true;
            NetworkCredential NetworkCred = new NetworkCredential("mnm.pradeep@gmail.com", "Pradeep@583");
            smtp.UseDefaultCredentials = true;
            smtp.EnableSsl = true;
            smtp.Credentials = NetworkCred;
            smtp.Port = 587;
            smtp.Send(mm);
        }
    }

}
