using Licensing;
using System;
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
    public partial class DesktopTowerOfLondonWinForms : System.Web.UI.Page
    {
        private const string LibraryKey = "82820B44D0B2320F1EE844E7656A11587FCD08C1150CB84703532D37DC4313A0D71F7B57329D";

        protected MembershipUser _user;
        protected string _userId;
        protected bool _isProfilefilled;
        protected string _testId = Enums.TestId.TowerOfLondon;
        protected static int _userTestId;
        public string Key { get; set; }

        protected override void InitializeCulture()
        {
            LanguageManager.ApplyLanguage();
            base.InitializeCulture();
        }

        
        public bool PayPalSimulation
        {
            get
            {
                var paypalTest = Session["PayPalSimulation"];
                return paypalTest == null ? false : (bool)paypalTest;
            }
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (User.Identity.IsAuthenticated)
            {
                _user = Membership.GetUser(User.Identity.Name);
                _userId = _user.ProviderUserKey.ToString();
                Key = DataMethods.GetTowerOfLondonAppKey(_userId);

                if (hasPaidTest(_userId) && Key == null)
                {
                    this.IdentifierGroup.Visible = true;
                }
            }

            //  Catch response from paypal
            if ((IsPostBack || PayPalSimulation) && User.Identity.IsAuthenticated)
            {
                if (!String.IsNullOrEmpty(Request.QueryString["st"]) && Request.QueryString["st"].Equals("Completed", StringComparison.InvariantCultureIgnoreCase))
                {
                    if (PayPalSimulation) Session["PayPalSimulation"] = false;

                    this.IdentifierGroup.Visible = true;

                    if (!hasPaidTest(_userId) && string.IsNullOrEmpty(Key))
                    {
                        bool isPaid = UpdateTestPaid(_userId);
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

        private bool SetupKey(string identifier)
        {
            try
            {
                string key = LicenseManager.Instance.GenerateLicenseKey(identifier, LibraryKey);
                return DataMethods.SaveWpfTOLAppKey(_userId, identifier, key);
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

        protected void runTest_Click(object sender, EventArgs e)
        {
            string publisherName = "CogQuiz";
            string applicationName = "CogQuiz - Tower of London";
            string shortcutPath = Path.Combine(Environment.GetFolderPath(Environment.SpecialFolder.Programs), publisherName);
            shortcutPath = Path.Combine(shortcutPath, applicationName) + ".appref-ms";

            if (File.Exists(shortcutPath))
            {
                existsMessage.Text = "This application is already installed on your computer.";
                runTest.Visible = false;
            }
            else
                Response.Redirect("TowerOfLondon/TOLDesktop.aspx");
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Tower_of_London_Manual.pdf");
        }

        protected void paypalsimulate_Click(object sender, EventArgs e)
        {
            var url = "DesktopTowerOfLondonWinForms.aspx?st=completed";
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

        protected void GenerateLicenseBtn_Click(object sender, EventArgs e)
        {
            string identifier = IdentifierInput.Value;

            bool isKeySetup = SetupKey(identifier);

            if (isKeySetup)
            {
                Key = DataMethods.GetTowerOfLondonAppKey(_userId);
                Response.Redirect(Request.RawUrl);
            }
        }
    }
}