using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;
using TestSite.HelpClasses;
using System.Text;

namespace TestSite
{
    public partial class Site2 : System.Web.UI.MasterPage
    {
        protected MembershipUser _user;
        protected string _userId;
        protected int? _providerId;
        protected void Page_Load(object sender, EventArgs e)
        {
            price.Visible = false;
            if (Page.User.Identity.IsAuthenticated)
            {
                _user = Membership.GetUser(Page.User.Identity.Name);
                _userId = _user.ProviderUserKey.ToString();
                logOut.Visible = true;
                login.Visible = false;
                _providerId = CommonMethods.GetProviderId(_userId);
              
                if (_providerId > 0)
                {
                    Session["providerId"] = _providerId;
                    price.Visible = true;
                }


            }
            else
            {
                login.Visible = true;
                logOut.Visible = false;
                profOpt.Visible = false;

            }
        }

        protected void logOut_Click(object sender, EventArgs e)
        {
            FormsAuthentication.SignOut();
            Response.Redirect("~/MainPage.aspx");

        }

        public void PostPaypal(double itemAmount, string itemName, string page, int number)
        {
            string business = "HQS7UWQMRHDTQ";
         
            //double itemAmount = 0.01;
            string currencyCode = "USD";

            StringBuilder ppHref = new StringBuilder();
            string baseUrl = Request.Url.GetLeftPart(UriPartial.Authority);
            ppHref.Append("https://www.paypal.com/cgi-bin/webscr?cmd=_xclick");//("https://www.paypal.com/cgi-bin/webscr?cmd=_xclick");
            ppHref.Append("&business=" + business);
            ppHref.Append("&item_name=" + itemName);
            ppHref.Append("&amount=" + itemAmount.ToString("#.00"));
            ppHref.Append("&currency_code=" + currencyCode);
            ppHref.Append("&return=" + baseUrl + page); //"http://cogquiz.com/WCSTWrapper.aspx");//h/go?nachatTest");

            Response.Redirect(ppHref.ToString(),false);
        }
    }
}
