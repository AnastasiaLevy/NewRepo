using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Mail;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using TestSite.HelpClasses;

namespace TestSite
{
    public partial class MainPage : System.Web.UI.Page
    {
        protected override void InitializeCulture()
        {
            LanguageManager.ApplyLanguage();
            base.InitializeCulture();
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
                 string txtNameFrom = emailName.Value;
                 string txtEmailFrom = emailFrom.Value;
                 string txtMessage = emailText.Value;

            if(isValid(txtEmailFrom))
            {
                try
                {
                    DAL.DataMethods.SaveUserMessage(txtNameFrom, txtEmailFrom, txtMessage);
                    contactError.InnerText = "Thank you. We will be in touch next business day";

                }
                catch (Exception ex)
                {
                    contactError.InnerText = "There was error sending you message. Please try again later.";
                }
                txtEmailFrom = "";
                txtMessage = "";
                txtNameFrom = "";

                emailName.Value = "";
                emailFrom.Value = "";
                emailText.Value = "";
            } else
            {
                txtEmailFrom = "";
                txtMessage = "";
                txtNameFrom = "";
                contactError.InnerText = "Email address is not valid!";
            }
            
            contactError.Focus();
            
            //MailMessage mailObj = new MailMessage(
            //     "analescheok@hotmail.com", "analescheok@gmail.com", "hello", "text");
            //SmtpClient SMTPServer = new SmtpClient("smtp.gmail.com");//"207.46.163.170"
            //SMTPServer.Port = 587;
            //SMTPServer.EnableSsl = true;
            //new System.Net.NetworkCredential("analescheok@gmail.com", "Ana9487LA");
            //using (SmtpClient client = new SmtpClient("localhost", 25))
            //{
            //    client.EnableSsl = true;
            //    MailMessage mail = new MailMessage("analescheok@hotmail.com", "support@cogquiz.com");
            //    mail.Subject = "this is a test email.";
            //    mail.Body = "this is my test email body";
            //    client.Send(mail);
            //}
        }
        protected bool isValid(string email)
        {
            string pattern = "[.\\-_a-z0-9]+@([a-z0-9][\\-a-z0-9]+\\.)+[a-z]{2,6}";
            System.Text.RegularExpressions.Match isMatch = System.Text.RegularExpressions.Regex.Match(email, pattern, System.Text.RegularExpressions.RegexOptions.IgnoreCase);
            return isMatch.Success;
        }
    }
}