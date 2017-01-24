using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TestSite
{
    public partial class Login : System.Web.UI.Page
    {
        protected string _back;
        bool isProvider = true;
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
                if (isProvider)
                {
                    //string userId = Membership.GetUser(userNameLg.Value).ProviderUserKey.ToString();
                    //int? providerId = DAL.DataMethods.GetProviderId(userId) != null ? DAL.DataMethods.GetProviderId(userId) : 0;
                    Response.Redirect("~/UserProfile.aspx?isProvider=true;");
                    //Response.Redirect("~/Provider/ProviderPortal.aspx");
                }
        

                Response.Redirect("~/UserProfile.aspx");



            }
            else
            {
                wrongLogin.Text = "*Username or Password were incorrect";

            }

        }

        protected void Register_Single(object sender, EventArgs e)
        {

            if (Membership.ValidateUser(singleName.Value, singlePw.Text))
                wrong.Text = "This username is already taken.";
            else
            {
                MembershipUser user = Membership.CreateUser(singleName.Value, singlePw.Text, single_email.Value);//if (Membership.ValidateUser(singleName.Value, singlePw.Text))

                if (user != null)
                {

                    FormsAuthentication.SetAuthCookie(singleName.Value, true);
                    Session["Username"] = singleName.Value;
                    if (isProvider)
                    {
                        string userId = user.ProviderUserKey.ToString();
                        DAL.DataMethods.UpdateProviderTable(userId);
                        Response.Redirect("~/Provider/ProviderPortal.aspx");
                    }
                    else
                        Response.Redirect("~/UserProfile.aspx?isProvider=true;");
                }

            }
        }
    }
}