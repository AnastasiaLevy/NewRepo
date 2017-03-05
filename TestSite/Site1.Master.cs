using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TestSite
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if  (Page.User.Identity.IsAuthenticated)
            {
                login.Visible = false;
                logOut.Visible = true;
            
            }
            else
            {
                Response.Redirect("~/ManePage.aspx");
                login.Visible = true;
                logOut.Visible = false;
            }

        }
        protected void logOut_Click(object sender, EventArgs e)
        {
            FormsAuthentication.SignOut();
            Response.Redirect("~/MainPage.aspx");

        }
    }
}