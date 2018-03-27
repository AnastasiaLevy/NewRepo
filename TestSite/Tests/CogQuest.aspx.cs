﻿using System;
using System.Collections.Generic;
using System.Collections.Specialized;
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

        public string Key { get; set; }
        public bool PayPalSimulation
        {
            get
            {
                var paypalTest = Session["PayPalSimulation"];
                return paypalTest == null ? false: (bool)paypalTest;
            }
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (User.Identity.IsAuthenticated)
            {
                _user = Membership.GetUser(User.Identity.Name);
                _userId = _user.ProviderUserKey.ToString();
                Key = DataMethods.GetWinFormTOLAppKey(_userId);

                logOut.Visible = true;
                profOpt.Visible = true;
                login.Visible = false;
            }
            else
            {
                login.Visible = true;
                profOpt.Visible = false;
                logOut.Visible = false;
            }

            //  Catch response from paypal
            if ((IsPostBack || PayPalSimulation) && User.Identity.IsAuthenticated)
            {
                if (!String.IsNullOrEmpty(Request.QueryString["st"]) && Request.QueryString["st"].Equals("Completed", StringComparison.InvariantCultureIgnoreCase))
                {
                    if (PayPalSimulation) Session["PayPalSimulation"] = false;

                    if (!hasPaidTest(_userId) && string.IsNullOrEmpty(Key))
                    {
                        bool isPaid = UpdateTestPaid(_userId);
                        bool isKeySetup = SetupKey();
                        if (isKeySetup)
                        {
                            Key = DataMethods.GetWinFormTOLAppKey(_userId);
                        }
                    }
                }
            }

            if (User.Identity.IsAuthenticated && hasPaidTest(_userId))
            {
                ShowAppData();
            }
            else
            {
                ShowBuyButton();
            }

            Page.DataBind();
        }

        private bool SetupKey()
        {
            try
            {
                DataMethods.SetupWinFormTOLAppKey(_userId);
                return true;
            }
            catch (Exception exc)
            {
                return false;
            }
        }

        private void ShowBuyButton()
        {
            price.Visible = true;
            runTest.Visible = false;
            KeyValue.Visible = false;
        }

        private void ShowAppData()
        {
            price.Visible = false;
            runTest.Visible = true;
            KeyValue.Visible = true;
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
            if (User.Identity.IsAuthenticated)
            {
                RunPayPal("CogQuest", 45.00);
            }
            else
            {
                Response.Redirect("~/Login.aspx");
            }
        }

        private void RunPayPal(string itemName, double itemAmount)
        {
            string business = "HQS7UWQMRHDTQ";//"P6JMSAGR5XCE4";// "analescheok@gmail.com"


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
            //RunPayPal("CogQuest", 100.00);
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

        protected void paypalsimulate_Click(object sender, EventArgs e)
        {
            var url = "CogQuest.aspx?st=completed";
            Session["PayPalSimulation"] = true;
            Response.Redirect(url);
            //Response.Clear();
            //var sb = new System.Text.StringBuilder();
            //sb.Append("<html>");
            //sb.AppendFormat("<body runat='server' onload='document.forms[0].submit();'>");
            //sb.AppendFormat("<form ID='paypalForm' runat='server' action='{0}' method='post'>", url);
            //sb.AppendFormat("<input type='text' name='st' value='{0}'>", "Completed");
            //sb.Append("</form>");
            //sb.Append("</body>");
            //sb.Append("</html>");
            //Response.Write(sb.ToString());
            //Response.End();
        }
    }
}