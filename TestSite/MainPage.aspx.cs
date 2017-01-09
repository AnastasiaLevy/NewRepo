using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Mail;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

namespace TestSite
{
    public partial class MainPage : System.Web.UI.Page
    {
        protected void Page_Init(object sender, EventArgs e)
        {
            if (User.Identity.IsAuthenticated)
            {
                login.Visible = false;
                logOut.Visible = true;
                profOpt.Visible = true;
            }
            else
            {
                login.Visible = true;
                logOut.Visible = false;
                profOpt.Visible = false;
            }
        }
        protected void Page_Load(object sender, EventArgs e)
        {
         
         
           
        }
        protected void logOut_Click(object sender, EventArgs e)
        {
            FormsAuthentication.SignOut();
            Response.Redirect("~/MainPage.aspx");
            
        }

        protected void clcSendButton(object sender, EventArgs e)
        {
            //     string txtNameFrom = emailName.Value;
            //     string txtEmailFrom = emailFrom.Value;
            //     string txtMessage = emailText.Value;

            //MailMessage mailObj = new MailMessage(
            //     "analescheok@hotmail.com", "analescheok@gmail.com", "hello", "text");
            //SmtpClient SMTPServer = new SmtpClient("smtp.gmail.com");//"207.46.163.170"
            //SMTPServer.Port = 587;
            //SMTPServer.EnableSsl = true;
            //new System.Net.NetworkCredential("analescheok@gmail.com", "Ana9487LA");
            using (SmtpClient client = new SmtpClient("localhost", 25))
            {
                client.EnableSsl = true;
                MailMessage mail = new MailMessage("analescheok@hotmail.com", "support@cogquiz.com");
                mail.Subject = "this is a test email.";
                mail.Body = "this is my test email body";
                client.Send(mail);
            }
        }
    }
}