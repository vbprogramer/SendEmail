using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.IO;
using System.Net;
using System.Net.Mail;

namespace SendEmail
{
    public partial class SendEmail : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Button3_Click(object sender, EventArgs e)
        {
            
                if (txtTitle.Text != "" || txtYourName.Text != "" || txtMessage.Text != "" || txtEmail.Text != "")
                {
                        try
                        {
                            MailMessage mail = new MailMessage();
                            SmtpClient SmtpServer = new SmtpClient("smtp.gmail.com");

                            mail.From = new MailAddress("peraperivvranje@gmail.com");
                            mail.To.Add("peraperivvranje@gmail.com");
                            mail.Subject = "User request";
                            mail.Body = "Title :" + txtTitle.Text + "     " + "Name :" + txtYourName.Text + "     " + "E-mail :" + txtEmail.Text + "     " + "Message :" + txtMessage.Text;

                            SmtpServer.Port = 587;
                            SmtpServer.Credentials = new System.Net.NetworkCredential("peraperivvranje", "xxxxxxxx");
                            SmtpServer.EnableSsl = true;

                            SmtpServer.Send(mail);
                            clear();

                            ClientScript.RegisterStartupScript(Type.GetType("System.String"), "messagebox", "<script type=\"text/javascript\">alert('Message has been sent.');</script>");

                }
                        catch (Exception ex)
                        {
                            ClientScript.RegisterStartupScript(Type.GetType("System.String"), "messagebox", "<script type=\"text/javascript\">alert('An error occurred, please try again.');</script>");
                        }
                }
                else
                { 
                    ClientScript.RegisterStartupScript(Type.GetType("System.String"), "messagebox", "<script type=\"text/javascript\">alert('You have not entered all the information.');</script>");
                }
           
        }
        private void clear()
        {
            txtTitle.Text = "";
            txtYourName.Text = "";
            txtEmail.Text = "";
            txtMessage.Text = "";
        }
    }
}