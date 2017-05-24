using System;
using System.Collections.Generic;
using System.Data;
using System.IO;
using System.Linq;
using System.Net;
using System.Text;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using TestSite.DAL;
using TestSite.HelpClasses;

namespace TestSite
{
    public partial class TrailsWrapper : System.Web.UI.Page
    {
        protected MembershipUser _user;
        protected string _userId;
        protected bool _isProfilefilled;
        protected string _testId = Enums.TestId.Trails;
        protected static int _userTestId;
        protected static bool _isUserProvider;
     

        protected void Page_Load(object sender, EventArgs e)
        {
            if (User.Identity.IsAuthenticated)
            {
                _user = Membership.GetUser(User.Identity.Name);
                _userId = _user.ProviderUserKey.ToString();
                _isProfilefilled = ProfileIsFilled(_userId);
                _isUserProvider = false;
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
                        InitiateTest();
                    }
                    else
                    {
                        error = "Cannot process payment. Please contact administrator.";
                    }

                }
                else
                {
                    if (User.Identity.IsAuthenticated && !_isUserProvider)
                    {

                        if (hasPaidTest(_userId))
                        {
                            price.Visible = false;
                            InitiateTest();
                        }
                        else
                        {
                            login.Visible = false;
                            logOut.Visible = true;
                            requestToReg.Visible = false;
                            runTest.Visible = false;
                            price.Visible = true;
                        }
                        if (CommonMethods.UserIsProvider(_userId))
                            singlePr.Visible = false;
                    }
                    else
                    {
                        login.Visible = true;
                        logOut.Visible = false;
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
                logOut.Visible = true;
                requestToReg.Visible = false;
                login.Visible = false;
                price.Visible = false; 
            }
            else if (User.Identity.IsAuthenticated)
            {
                string url = HttpContext.Current.Request.Url.LocalPath;
                Response.Redirect(String.Format("~/Registration.aspx?return={0}", url));
            }
            else
            {
                runTest.Visible = false;
                requestToReg.Visible = true;
                login.Visible = true;
                logOut.Visible = false;
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

        private bool UpdateTestPaid(string userId)
        {
            try
            {
                DataMethods.InsertTestPaid(userId, _testId);
                return true;
            }
            catch(Exception ex)
            {
                DataMethods.InsertErrorMessage(ex.ToString(), userId, "TrailsWrapper");
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
                    profOpt.Visible = true;
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

                    Session["userTestId"] = _userTestId;
                Response.Redirect("~/TrailsPage.aspx");
           
               
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

        private void PostPaypal()
        {
            string business = "L3SCKTNV3EWA4";// "analescheok@gmail.com"
            string itemName = "Trails Test";
            double itemAmount = 5.00;
            string currencyCode = "USD";

            StringBuilder ppHref = new StringBuilder();
            string baseUrl = Request.Url.GetLeftPart(UriPartial.Authority);

            ppHref.Append("https://www.paypal.com/cgi-bin/webscr?cmd=_xclick");//("https://www.paypal.com/cgi-bin/webscr?cmd=_xclick");
            ppHref.Append("&business=" + business);
            ppHref.Append("&item_name=" + itemName);
            ppHref.Append("&amount=" + itemAmount.ToString("#.00"));
            ppHref.Append("&currency_code=" + currencyCode);
            ppHref.Append("&return=" + baseUrl + "/TrailsWrapper.aspx"); //"http://localhost:52606/TrailsWrapper.aspx");

            Response.Redirect(ppHref.ToString(), true);
        }

        protected void single_Click(object sender, EventArgs e)
        {
            if (User.Identity.IsAuthenticated)
            {
                PostPaypal();
            }
            else
            {
                requestToReg.Visible = true;
            }
        }

        protected void ten_Click(object sender, EventArgs e)
        {

        }

        protected void hundred_Click(object sender, EventArgs e)
        {

        }

        protected void unlim_Click(object sender, EventArgs e)
        {

        }
    }
}

 
    