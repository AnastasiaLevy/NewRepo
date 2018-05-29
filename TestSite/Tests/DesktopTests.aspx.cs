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
    public partial class DesktopTests : System.Web.UI.Page
    {
        protected MembershipUser _user;
        protected string _userId;
        protected bool _isProfilefilled;
        protected string _testId = Enums.TestId.Quest;
        protected static int _userTestId;

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
                    string error = "";
                    if (UpdateTestPaid(_userId) && hasPaidTest(_userId))
                    {

                        //TODO: display download link
                    }
                    else
                    {
                        error = GetLocalResourceObject("errorPayment").ToString();
                    }

                }
                else
                {

                    if (User.Identity.IsAuthenticated)
                    {

                        if (hasPaidTest(_userId))
                        {
                            //price.Attributes.Add("style", "display:none");

                        }
                        else
                        {
                            //login.Visible = false;
                            //logOut.Visible = true;

                            //runTest.Visible = false;
                        }

                        price.Visible = true;
                    }
                    else
                    {
                        //login.Visible = true;
                        //logOut.Visible = false;
                        //runTest.Visible = false;
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

        protected void clcSendButton(object sender, EventArgs e)
        {
            string txtNameFrom = emailName.Value;
            string txtEmailFrom = emailFrom.Value;
            string txtMessage = emailText.Value;
            try
            {
                DAL.DataMethods.SaveUserMessage(txtNameFrom, txtEmailFrom, txtMessage);
                contactError.InnerText = GetLocalResourceObject("contactError_true").ToString();

            }
            catch (Exception ex)
            {
                contactError.InnerText = GetLocalResourceObject("contactError_error").ToString();
            }
            txtEmailFrom = "";
            txtMessage = "";
            txtNameFrom = "";
            contactError.Focus();

    
        }


    }
}