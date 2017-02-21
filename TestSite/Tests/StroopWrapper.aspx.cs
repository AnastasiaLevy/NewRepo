using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using TestSite.DAL;
using TestSite.HelpClasses;

namespace TestSite.Tests
{
    public partial class StroopWrapper : System.Web.UI.Page
    {
        protected MembershipUser _user;
        protected string _userId;
        protected bool _isProfilefilled;
        protected string _testId = Enums.TestId.Nback;
        protected static int _userTestId;

        protected void Page_Load(object sender, EventArgs e)
        {
            requestToReg.Visible = false;

            if (User.Identity.IsAuthenticated)
            {
                _user = Membership.GetUser(User.Identity.Name);
                _userId = _user.ProviderUserKey.ToString();
                _isProfilefilled = ProfileIsFilled(_userId);
                logOut.Visible = true;
                login.Visible = false;
                
            }
            else
            {
                login.Visible = true;
                profOpt.Visible = false;
                logOut.Visible = false;

            }
            if (!IsPostBack)
            {
              
            //        if (User.Identity.IsAuthenticated)
            //        {

            //            if (hasPaidTest(_userId))
            //            {
                        
            //                InitiateTest();
            //            }
            //            else
            //            {
            //                login.Visible = false;
            //                logOut.Visible = true;
            //                requestToReg.Visible = false;
            //                runTest.Visible = false;
            //            }

                        
            //        }
            //        else
            //        {
            //            login.Visible = true;
            //            logOut.Visible = false;
            //            requestToReg.Visible = false;
            //            runTest.Visible = false;
            //        }

                
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
                Response.Redirect("/Tests/StroopPage.aspx");
            }
            else
            {
                requestToReg.Visible = true;
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
                login.Visible = true;
                logOut.Visible = false;
            }
        }


    }

}