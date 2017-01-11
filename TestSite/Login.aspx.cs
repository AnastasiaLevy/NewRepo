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
                Response.Redirect("~/UserProfile.aspx");
                wrongLogin.Text = "";


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
                    Response.Redirect("~/UserProfile.aspx");
                }

            }
        }
    }
}