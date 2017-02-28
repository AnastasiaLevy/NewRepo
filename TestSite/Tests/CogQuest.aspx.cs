using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using TestSite.DAL;
using TestSite.HelpClasses;

namespace TestSite.Tests
{
    public partial class CogQuest : System.Web.UI.Page
    {
        protected MembershipUser _user;
        protected string _userId;
        protected bool _isProfilefilled;
        protected string _testId = Enums.TestId.Quest;
        protected static int _userTestId;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (User.Identity.IsAuthenticated)
            {
                _user = Membership.GetUser(User.Identity.Name);
                _userId = _user.ProviderUserKey.ToString();
          
                logOut.Visible = true;
                login.Visible = false;
            }
            else
            {
                login.Visible = true;
                profOpt.Visible = false;

            }
            if (!IsPostBack)
            {
                if (!String.IsNullOrEmpty(Request.QueryString["st"]) && Request.QueryString["st"] == "Completed")
                {
                    string error = "";
                    if (UpdateTestPaid(_userId) && hasPaidTest(_userId))
                    {

                       //TODO: display download link
                    }
                    else
                    {
                        error = "Cannot process payment. Please contact administrator.";
                    }

                }
                else
                {

                    if (User.Identity.IsAuthenticated)
                    {

                        if (hasPaidTest(_userId))
                        {
                            price.Attributes.Add("style", "display:none");
                  
                        }
                        else
                        {
                            login.Visible = false;
                            logOut.Visible = true;
                           
                            runTest.Visible = false;
                        }

                        price.Visible = true;
                    }
                    else
                    {
                        login.Visible = true;
                        logOut.Visible = false;
                        
                        runTest.Visible = false;
                    }

                }
            }

        }

        protected void logOut_Click(object sender, EventArgs e)
        {
            FormsAuthentication.SignOut();
            Response.Redirect("~/MainPage.aspx");

        }

        private bool hasPaidTest(string _userId)
        {
            int id = DataMethods.HasPaidTest(_userId, _testId);
            if (id > 1)
            {
                _userTestId = id;
                return true;

            }
            else
                return false;
        }

        private bool UpdateTestPaid(string _userId)
        {
            try
            {
                DataMethods.InsertTestPaid(_userId, _testId);
                return true;
            }
            catch (Exception ex)
            {
                DAL.DataMethods.InsertErrorMessage(ex.ToString(), _userId, "CogQuest");
                return false;
            }
        }

        protected void single_Click(object sender, EventArgs e)
        {
            RunPayPal("CogQuest", 45.00);
        }

        private void RunPayPal(string itemName, double itemAmount)
        {
            string business = "L3SCKTNV3EWA4";//"P6JMSAGR5XCE4";// "analescheok@gmail.com"
          
            itemAmount = 0.01;
            string currencyCode = "USD";

            StringBuilder ppHref = new StringBuilder();
            string baseUrl = Request.Url.GetLeftPart(UriPartial.Authority);

            ppHref.Append("https://www.paypal.com/cgi-bin/webscr?cmd=_xclick");//();//"https://www.sandbox.paypal.com/cgi-bin/webscr?cmd=_xclick"
            ppHref.Append("&business=" + business);
            ppHref.Append("&item_name=" + itemName);
            ppHref.Append("&amount=" + itemAmount.ToString("#.00"));
            ppHref.Append("&currency_code=" + currencyCode);
            ppHref.Append("&return=" + baseUrl + "/Tests/CogQuest.aspx"); //"http://localhost:52606/Tests/NbackWrapper.aspx"

            Response.Redirect(ppHref.ToString(), true);
        }

        protected void ten_Click(object sender, EventArgs e)
        {
            RunPayPal("CogQuest", 100.00);
        }

        protected void runTest_Click(object sender, EventArgs e)
        {
            string publisherName = "CogQuiz";
            string applicationName = "CogQuest";
            string shortcutPath = Path.Combine(Environment.GetFolderPath(Environment.SpecialFolder.Programs), publisherName);
            shortcutPath = Path.Combine(shortcutPath, applicationName) + ".appref-ms";
            if (File.Exists(shortcutPath))
            {
                existsMessage.Text = "This application is already installed on your computer.";
                runTest.Visible = false;
            }
            else
            Response.Redirect("CogQuestTool/CogQuestSetUp.aspx");
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("CogQuestTool/CogQuestInstructionsPDF.pdf");
        }
    }
}