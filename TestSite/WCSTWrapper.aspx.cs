using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using TestSite.DAL;
using TestSite.HelpClasses;

namespace TestSite
{
    public partial class WCSTWrapper : System.Web.UI.Page
    {
        protected MembershipUser _user;
        protected string _userId;
        protected bool _isProfilefilled;
        protected string _testId = Enums.TestId.WisconsinCardSort;
        protected static int _userTestId;
        protected int? _providerId;
        protected string _baseUrl;
        protected string _itemName = "Card Sort Test";
        protected string _page = "//WCSTWrapper.aspx";

        protected override void InitializeCulture()
        {
            LanguageManager.ApplyLanguage();
            base.InitializeCulture();
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (User.Identity.IsAuthenticated)
            {
                _user = Membership.GetUser(User.Identity.Name);
                _userId = _user.ProviderUserKey.ToString();
                _isProfilefilled = ProfileIsFilled(_userId);
                _baseUrl = Request.Url.GetLeftPart(UriPartial.Authority);
                //logOut.Visible = true;
                //login.Visible = false;
            }
            else
            {
                //login.Visible = true;
                //profOpt.Visible = false;

            }
            if (!IsPostBack)
            {


                if (!String.IsNullOrEmpty(Request.QueryString["st"]) && Request.QueryString["st"] == "Completed")
                {
                    if (!(CommonMethods.UserIsProvider(_userId)))
                    {
                        string error = "";
                        if (UpdateTestPaid(_userId) && hasPaidTest(_userId))
                        {
                            InitiateTest();
                        }
                        else
                        {
                            error = GetLocalResourceObject("errorPayment").ToString();
                        }
                    }
                    else
                    {
                        string value = Request.QueryString["item_name"];
                        string num = value.Split('_')[0];
                        string option = CommonMethods.GetOption(num);

                        Response.Redirect("~/Provider/ProviderPortal.aspx?buyTestType=" + Enums.TestId.WisconsinCardSort + "&buyTestOption=" + option + "&buyTestNum=" + num);
                    }
                }
                else
                {

                    if (User.Identity.IsAuthenticated)
                    {

                        if (hasPaidTest(_userId))
                        {
                            price.Attributes.Add("style", "display:none");
                            InitiateTest();
                        }
                        else
                        {
                            //login.Visible = false;
                            //logOut.Visible = true;
                            requestToReg.Visible = false;
                            runTest.Visible = false;
                        }
                        //if (CommonMethods.UserIsProvider(_userId))
                        //    singlePr.Visible = false;
                        price.Visible = true;
                    }
                    else
                    {
                        //login.Visible = true;
                        //logOut.Visible = false;
                        requestToReg.Visible = false;
                        runTest.Visible = false;
                    }

                }
            }
        }

        private void InitiateTest()
        {
            if (ProfileIsFilled(_userId))
            {
                runTest.Visible = true;
                //logOut.Visible = true;
                requestToReg.Visible = false;
                //login.Visible = false;
                price.Visible = false;
            }
            else if (User.Identity.IsAuthenticated)
            {
                string url = HttpContext.Current.Request.Url.AbsoluteUri;
                Response.Redirect(String.Format("~/Registration.aspx?return={0}", url));
            }
            else
            {
                runTest.Visible = false;
                requestToReg.Visible = true;
                //login.Visible = true;
                //logOut.Visible = false;
            }
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
                DataMethods.InsertErrorMessage(ex.ToString(), _userId, "WCSTWrapper");
                return false;
            }
        }

        private bool ProfileIsFilled(string _userId)
        {
            return DataMethods.GetRegKey(_userId);
        }

        protected void logOut_Click(object sender, EventArgs e)
        {
            FormsAuthentication.SignOut();
            Response.Redirect("~/MainPage.aspx");

        }



        protected void runTest_Click(object sender, EventArgs e)
        {
            if (User.Identity.IsAuthenticated)
            {
                //profOpt.Visible = true;
                if (ProfileIsFilled(_userId))
                {
                    requestToReg.Visible = false;
                    runTest.Visible = true;

                }
                else
                {
                    requestToReg.Visible = true;
                    runTest.Visible = false;
                }
                Session["name"] = User.Identity.Name;
                Session["userTestId"] = _userTestId;
                Response.Redirect("WCSTPage.aspx");

            }
            else
            {
                requestToReg.Visible = true;

            }

        }

        private bool CheckRegistration()
        {
            return true;
        }

        protected void PayPalBtn_Click(object sender, ImageClickEventArgs e)
        {
            //if (User.Identity.IsAuthenticated)
            //{
            //    PostPaypal();
            //}
            //else
            //{
            //    requestToReg.Visible = true;
            //}
        }

        //private void PostPaypal(double itemAmount, int num)
        //{
        //    string business = "HQS7UWQMRHDTQ";
        //    string itemName = "Card Sort Test";
        //    //double itemAmount = 0.01;
        //    string currencyCode = "USD";

        //    StringBuilder ppHref = new StringBuilder();
        //    string baseUrl = Request.Url.GetLeftPart(UriPartial.Authority);
        //    ppHref.Append("https://www.paypal.com/cgi-bin/webscr?cmd=_xclick");//("https://www.paypal.com/cgi-bin/webscr?cmd=_xclick");
        //    ppHref.Append("&business=" + business);
        //    ppHref.Append("&item_name=" + itemName);
        //    ppHref.Append("&amount=" + itemAmount.ToString("#.00"));
        //    ppHref.Append("&currency_code=" + currencyCode);
        //    ppHref.Append("&return=" + baseUrl + "/WCSTWrapper.aspx"); //"http://cogquiz.com/WCSTWrapper.aspx");//h/go?nachatTest");
        //    Response.Redirect(ppHref.ToString(), true);
        //}

        protected void single_Click(object sender, EventArgs e)
        {
            if (User.Identity.IsAuthenticated)
            {

                //PostPaypal(7,1);
                string page = "/Provider/ProviderPortal.aspx?buyTestType=" + "3" + "&buyTestOption=" + "4" + "&buyTestNum=" + "1";
                Response.Redirect(CommonMethods.PostPaypal(7, 1, _baseUrl, _itemName, page), true);
            }
            else
            {
                requestToReg.Visible = true;
            }
        }

        protected void ten_Click(object sender, EventArgs e)
        {
            if (User.Identity.IsAuthenticated)
            {

                //PostPaypal(50,10);
                string page = "/Provider/ProviderPortal.aspx?buyTestType=" + "3" + "&buyTestOption=" + "1" + "&buyTestNum=" + "10";
                Response.Redirect(CommonMethods.PostPaypal(50, 10, _baseUrl, _itemName, page), true);
            }
            else
            {
                requestToReg.Visible = true;
            }
        }

        protected void hundred_Click(object sender, EventArgs e)
        {
            if (User.Identity.IsAuthenticated)
            {

                //PostPaypal(450,100);
                string page = "/Provider/ProviderPortal.aspx?buyTestType=" + "3" + "&buyTestOption=" + "2" + "&buyTestNum=" + "100";
                Response.Redirect(CommonMethods.PostPaypal(450, 100, _baseUrl, _itemName, page), true);
            }
            else
            {
                requestToReg.Visible = true;
            }
        }

        protected void unlimited_Click(object sender, EventArgs e)
        {
            if (User.Identity.IsAuthenticated)
            {

                //PostPaypal(600,1000);
                string page = "/Provider/ProviderPortal.aspx?buyTestType=" + "3" + "&buyTestOption=" + "5" + "&buyTestNum=" + "500";
                Response.Redirect(CommonMethods.PostPaypal(1000, 500, _baseUrl, _itemName, page), true);
            }
            else
            {
                requestToReg.Visible = true;
            }
        }
    }
}