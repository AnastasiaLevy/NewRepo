using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using TestSite.HelpClasses;

namespace TestSite.blogPosts
{
    public partial class IntelligenceTest : System.Web.UI.Page
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

        protected override void InitializeCulture()
        {
            LanguageManager.ApplyLanguage();
            base.InitializeCulture();
        }

        protected void logOut_Click(object sender, EventArgs e)
        {
            FormsAuthentication.SignOut();
            Response.Redirect("~/MainPage.aspx");

        }

    }
}