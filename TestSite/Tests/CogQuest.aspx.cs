using Licensing;
using System;
using System.Collections.Generic;
using System.Collections.Specialized;
using System.Globalization;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading;
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
        private const string LangKey = "LANG_KEY";
        private const string LangDefault = "en";

        protected MembershipUser _user;
        protected string _userId;
        protected bool _isProfilefilled;
        protected string _testId = Enums.TestId.Quest;
        protected static int _userTestId;

        public string Key { get; set; }
        public string DeviceIdentifier { get; set; }
        public bool PayPalSimulation
        {
            get
            {
                var paypalTest = Session["PayPalSimulation"];
                return paypalTest == null ? false : (bool)paypalTest;
            }
        }

        protected override void InitializeCulture()
        {
            LanguageManager.ApplyLanguage();
            base.InitializeCulture();
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            //mainTitle.InnerText = Resources.localization.Resource.mainTitle;
            if (User.Identity.IsAuthenticated)
            {
                _user = Membership.GetUser(User.Identity.Name);
                _userId = _user.ProviderUserKey.ToString();
                Key = DataMethods.GetWinFormTOLAppKey(_userId);
                //DeviceIdentifier = DataMethods.GetWinFormTOLDeviceIdentifier(_userId);
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

            if (hasPaidTest(_userId) && Key == null)
            {
                this.IdentifierGroup.Visible = true;
                //Key = DataMethods.GetWinFormTOLAppKey(_userId);
                //DeviceIdentifier = DataMethods.GetWinFormTOLDeviceIdentifier(_userId);
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
                string key = LicenseManager.Instance.GenerateLicenseKey(identifier);
                return DataMethods.SaveWinFormTOLAppKey(_userId, identifier, key);
            }
            catch (Exception exc)
            {
                return false;
            }
        }

        protected void LanguageList_SelectedIndexChanged(object sender, EventArgs e)
        {
            //String selectedLanguage = LanguageList.SelectedItem.Value;

            //var langCoockie = HttpContext.Current.Request.Cookies[LangKey];

            //if (langCoockie == null || string.IsNullOrEmpty(langCoockie.Value))
            //{
            //    langCoockie = new HttpCookie(LangKey, LangDefault);
            //    langCoockie.Expires = DateTime.Now.AddHours(10);
            //    HttpContext.Current.Response.Cookies.Set(langCoockie);
            //}

            //HttpContext.Current.Request.Cookies[LangKey].Value = selectedLanguage;
            //Response.Redirect(Request.RawUrl);
        }

        protected void Set_En(object sender, EventArgs e)
        {
            string selectedLanguage = "en";
            SetLang(selectedLanguage);

            //UICulture = selectedLanguage;
            //Culture = selectedLanguage;
            //Thread.CurrentThread.CurrentCulture = CultureInfo.CreateSpecificCulture(selectedLanguage);
            //Thread.CurrentThread.CurrentUICulture = new CultureInfo(selectedLanguage);
            //this.InitializeCulture();

            // reload page to apply new lang.
        }

        protected void Set_Ru(object sender, EventArgs e)
        {
            string selectedLanguage = "ru";
            SetLang(selectedLanguage);
            //UICulture = "ru";
            //Culture = "ru-RU";
            //Thread.CurrentThread.CurrentCulture = CultureInfo.CreateSpecificCulture(selectedLanguage);
            //Thread.CurrentThread.CurrentUICulture = new CultureInfo(selectedLanguage);
            //this.InitializeCulture();
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
                existsMessage.Text = GetLocalResourceObject("existsMessage").ToString();
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

        private void SetLang(string lang)
        {
            var langCoockie = new HttpCookie(LangKey, lang);
            HttpContext.Current.Response.Cookies.Set(langCoockie);

            // reload page to apply new lang.
            Response.Redirect(Request.RawUrl);
        }

        private string GetLang()
        {
            var langCoockie = HttpContext.Current.Request.Cookies[LangKey];

            if (langCoockie == null || string.IsNullOrEmpty(langCoockie.Value))
            {
                langCoockie = new HttpCookie(LangKey, LangDefault);
                langCoockie.Expires = DateTime.Now.AddHours(10);
                HttpContext.Current.Response.Cookies.Set(langCoockie);
            }

            return langCoockie.Value;
        }

        protected void GenerateLicenseBtn_Click(object sender, EventArgs e)
        {
            string identifier = IdentifierInput.Value;

            bool isKeySetup = SetupKey(identifier);

            if (isKeySetup)
            {
                Key = DataMethods.GetWinFormTOLAppKey(_userId);
                Response.Redirect(Request.RawUrl);

                //IdentifierGroup.Visible = false;
                //ShowAppData();
                //DeviceIdentifier = DataMethods.GetWinFormTOLDeviceIdentifier(_userId);
            }
        }
    }
}