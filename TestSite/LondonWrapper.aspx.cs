﻿using System;
using System.Collections.Generic;
using System.Data;
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
    public partial class LondonWrapper : System.Web.UI.Page
    {
        protected MembershipUser _user;
        protected string _userId;
        protected bool _isProfilefilled;
        protected string _testId = Enums.TestId.TowerOfLondon;
        protected static int _userTestId;
        protected static string modTestId;
        protected string _baseUrl;
        protected string _itemName = "Tower of London Test";
        protected string _page = "/LondonWrapper.aspx";

        protected override void InitializeCulture()
        {
            LanguageManager.ApplyLanguage();
            base.InitializeCulture();
        }

        protected void Page_Load(object sender, EventArgs e)
        {

            if (User.Identity.IsAuthenticated)
            {
                string test;
                _user = Membership.GetUser(User.Identity.Name);
                _userId = _user.ProviderUserKey.ToString();
                _isProfilefilled = ProfileIsFilled(_userId);
                _baseUrl = Request.Url.GetLeftPart(UriPartial.Authority);
                //logOut.Visible = true;
                //login.Visible = false;

                if (Session["modifiedId"] != null && Session["userTestId"] != null)
                {
                    test = Session["modifiedId"].ToString();
                    _userTestId = Convert.ToInt32(Session["userTestId"]);


                }

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
                    string error = "";
                    if (!CommonMethods.UserIsProvider(_userId))
                    {
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

                        Response.Redirect("~/Provider/ProviderPortal.aspx?buyTestType=" + _testId + "&buyTestOption=" + option + "&buyTestNum=" + num);
                    }

                }
                else
                {

                    if (User.Identity.IsAuthenticated)
                    {

                        if ((hasPaidTest(_userId)) & (!CommonMethods.UserIsProvider(_userId)))
                        {
                            price.Attributes.Add("style", "display:none");
                            rbList.Visible = false;
                            InitiateTest();
                        }
                        else
                        {
                            //login.Visible = false;
                            //logOut.Visible = true;
                            requestToReg.Visible = false;
                            runTest.Visible = false;
                            FillOutSelection();
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
                        FillOutSelection();
                    }
                }
            }
        }

        private void FillOutSelection()
        {
            DataTable dt = DataMethods.GetLondonFixedTests();

            foreach (DataRow dr in dt.Rows)
            {
                ListItem lblItem = new ListItem(dr["testName"].ToString(), dr["id"].ToString());
                rbList.Items.Add(lblItem);
            }
            rbList.SelectedIndex = 0;
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
            if (_userTestId > 0)
                return true;
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
                modTestId = rbList.SelectedValue;

                DataMethods.InsertTestPaid(userId, _testId, modTestId);
                return true;
            }
            catch (Exception ex)
            {
                DataMethods.InsertErrorMessage(ex.ToString(), userId, "LondonWrapper", null);
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

                Session["userTestId"] = _userTestId;
                //Session["modifiedId"] 
                Response.Redirect("LondonPage.aspx");
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

        //    string business = "HQS7UWQMRHDTQ";// "analescheok@gmail.com"
        //    string itemName = "Tower of London Test";
        //    //double itemAmount = 5.00;
        //    string currencyCode = "USD";

        //    StringBuilder ppHref = new StringBuilder();
        //    string baseUrl = Request.Url.GetLeftPart(UriPartial.Authority);


        //    ppHref.Append("https://www.paypal.com/cgi-bin/webscr?cmd=_xclick");//(");//https://www.paypal.com/cgi-bin/webscr?cmd=_xclick
        //    ppHref.Append("&business=" + business);
        //    ppHref.Append("&item_name=" + itemName);
        //    ppHref.Append("&amount=" + itemAmount.ToString("#.00"));
        //    ppHref.Append("&currency_code=" + currencyCode);
        //    //ppHref.Append("&return=" + baseUrl + "/LondonWrapper.aspx");//"http://cogquiz.com/LondonWrapper.aspx");
        //    string buyTestTypeString = "2";
        //    string buyTestOptionString = null;
        //    switch (num)
        //    {
        //        case 1:
        //            buyTestOptionString = "4";
        //            break;
        //        case 10:
        //            buyTestOptionString = "1";
        //            break;
        //        case 100:
        //            buyTestOptionString = "2";
        //            break;
        //        case 500:
        //            buyTestOptionString = "5";
        //            break;
        //    }
        //    string buyTestNumString = num.ToString();
        //    ppHref.Append("&return=" + baseUrl + "/Provider/ProviderPortal.aspx?buyTestType=" + buyTestTypeString + "&buyTestOption=" + buyTestOptionString + "&buyTestNum=" + buyTestNumString);
        //    Response.Redirect(ppHref.ToString(), true);

        //}

        protected void single_Click(object sender, EventArgs e)
        {
            if (User.Identity.IsAuthenticated)
            {
                //PostPaypal(5, 1);
                string page = "/Provider/ProviderPortal.aspx?buyTestType=" + "2" + "&buyTestOption=" + "4" + "&buyTestNum=" + "1";
                Response.Redirect(CommonMethods.PostPaypal(5, 1, _baseUrl, _itemName, page), true);
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
                //PostPaypal(50, 10);

                string page = "/Provider/ProviderPortal.aspx?buyTestType=" + "2" + "&buyTestOption=" + "1" + "&buyTestNum=" + "10";
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
                //PostPaypal(50, 100);

                string page = "/Provider/ProviderPortal.aspx?buyTestType=" + "2" + "&buyTestOption=" + "2" + "&buyTestNum=" + "100";
                Response.Redirect(CommonMethods.PostPaypal(300, 100, _baseUrl, _itemName, page), true);
            }
            else
            {
                requestToReg.Visible = true;
            }
        }

        protected void unlim_Click(object sender, EventArgs e)
        {
            if (User.Identity.IsAuthenticated)
            {
                //PostPaypal(1000, 500);

                string page = "/Provider/ProviderPortal.aspx?buyTestType=" + "2" + "&buyTestOption=" + "3" + "&buyTestNum=" + "1000";
                Response.Redirect(CommonMethods.PostPaypal(1000, 1, _baseUrl, _itemName, page), true);
            }
            else
            {
                requestToReg.Visible = true;
            }
        }

        protected void rbList_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}