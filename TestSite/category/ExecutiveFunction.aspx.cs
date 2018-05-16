using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TestSite.blogPosts
{
    public partial class ExecutiveFunction : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (User.Identity.IsAuthenticated)
            {
                //login.Visible = false;
                //logOut.Visible = true;
                //profOpt.Visible = true;
            }
            else
            {
                //login.Visible = true;
                //logOut.Visible = false;
                //profOpt.Visible = false;
            }

        }

        protected void logOut_Click(object sender, EventArgs e)
        {
            FormsAuthentication.SignOut();
            Response.Redirect("~/MainPage.aspx");

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
    }
}