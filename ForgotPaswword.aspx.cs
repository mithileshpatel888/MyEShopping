using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;
using System.Net.Mail;
using System.Net;


public partial class ForgotPaswword : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    { 

    }

    protected void btnResetPass_Click(object sender, EventArgs e)
    {

        using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["MyShoppingDB"].ConnectionString))
        {

            con.Open();
            SqlCommand cmd = new SqlCommand("Select * from tblUsers where Email=@Email", con);
            cmd.Parameters.AddWithValue("@Email", txtEmailID.Text);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            if (dt.Rows.Count != 0)
            {
                String myGUID = Guid.NewGuid().ToString();
                int Uid = Convert.ToInt32(dt.Rows[0][0]);
                SqlCommand cmd1 = new SqlCommand("Insert into ForgotPass(ID,Uid,RequestDateTime)Values('" + myGUID + "','" + Uid + "',GETDATE())", con);
                cmd.ExecuteNonQuery();

                //Send Reset link via Email

                String ToEmailAddress = dt.Rows[0][3].ToString();
                String Username = dt.Rows[0][0].ToString();
                String EmailBody = "Hi ," + Username + ",<br/><br/>Click the link below to reset your password<br/> <br/>http://localhost:49942/RecoverPassword.aspx?id=-" + myGUID;


                MailMessage PassRecMail = new MailMessage("mithleshpatel887766@gmail.com", ToEmailAddress);

                PassRecMail.Body = EmailBody;
                PassRecMail.IsBodyHtml = true;
                PassRecMail.Subject = "Reset Password";

                using (SmtpClient client = new SmtpClient())
                {
                    client.EnableSsl = true;
                    client.UseDefaultCredentials = false;
                    client.Credentials = new NetworkCredential("mithleshpatel887766@gmail.com", "8887689276a");
                    client.Host = "smtp.gmail.com";
                    client.Port = 587;
                    client.DeliveryMethod = SmtpDeliveryMethod.Network;
                    client.Send(PassRecMail);
                }

                //--------------

                lblResetPassMsg.Text = "Reset Link send I Check Your email for reset password";
                lblResetPassMsg.ForeColor = System.Drawing.Color.Green;
                txtEmailID.Text = string.Empty;
            }
            else
            {

                lblResetPassMsg.Text = "oops! This Email Does not Exist....Try agian";
                lblResetPassMsg.ForeColor = System.Drawing.Color.Red;
                txtEmailID.Text = string.Empty;
                txtEmailID.Focus();
                    

            


           
            }
            }

        }
}