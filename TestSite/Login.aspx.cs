using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Threading;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using TestSite.HelpClasses;

namespace TestSite
{
    public partial class Login : System.Web.UI.Page
    {
        protected string _back;

        protected override void InitializeCulture()
        {
            LanguageManager.ApplyLanguage();
            base.InitializeCulture();
        }

        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void clcLogin(object sender, EventArgs e)
        {

            var provider = Membership.Provider;
            string name = provider.ApplicationName;

            if (Membership.ValidateUser(userNameLg.Value, userPwLg.Value))
            {

                User.ToString();
                FormsAuthentication.SetAuthCookie(userNameLg.Value, true);
                Session["Username"] = userNameLg.Value;
                wrongLogin.Text = "";
                if (isUserProvider())
                {
                    Response.Redirect("~/UserProfile.aspx?isProvider=true;");
                    //Response.Redirect("~/Provider/ProviderPortal.aspx");
                }
                if (userNameLg.Value == "IamAdmin")
                    Response.Redirect("~/Admin/AdminPortal.aspx?admin=true");


                Response.Redirect("~/UserProfile.aspx");



            }
            else
            {
                wrongLogin.Text = "*Username or Password were incorrect";

            }

        }

        private bool isUserProvider()
        {
            string userId = Membership.GetUser(userNameLg.Value).ProviderUserKey.ToString();
            int? providerId = CommonMethods.GetProviderId(userId);
            return providerId > 0 ? true : false;
        }

        protected void Register_Single(object sender, EventArgs e)
        {
            MembershipUser user;
            user = Membership.GetUser(singleName.Value);//Membership.ValidateUser(singleName.Value, singlePw.Text)
            string str = Membership.GetUserNameByEmail(single_email.Value);
            if (user != null)
            {
                wrong.Text = "This username is already taken.";
            }
            else if (!String.IsNullOrEmpty(str))
            {
                wrong.Text = "This email is already taken.";
            }
            
            else
            {
                try { 
                 user = Membership.CreateUser(singleName.Value, singlePw.Text, single_email.Value);//if (Membership.ValidateUser(singleName.Value, singlePw.Text))
                }catch (Exception ex)
                {
                    DAL.DataMethods.InsertErrorMessage(ex.Message, singleName.Value, "Login");
                }
                if(checkboxProvider.Checked == true)
                {
                    DAL.DataMethods.AddUserToProvider(user.ProviderUserKey.ToString(),"");
                }
                if (user != null)
                {

                    FormsAuthentication.SetAuthCookie(singleName.Value, true);
                    Session["Username"] = singleName.Value;
                    //if (1!=1)//isProvider)
                    //{
                    //    string userId = user.ProviderUserKey.ToString();
                    //    DAL.DataMethods.UpdateProviderTable(userId);
                    //    Response.Redirect("~/Provider/ProviderPortal.aspx");
                    //}
                    //else
                        Response.Redirect("~/UserProfile.aspx?isProvider=true;");
                }

            }
        }
    }
}