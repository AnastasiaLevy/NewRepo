using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;
using TestSite.DAL;

namespace TestSite
{
    public partial class WCSTPage : System.Web.UI.Page
    {
        protected MembershipUser _user;
        protected static string _userId;
        protected static int _userTestId;
      

        protected void Page_Load(object sender, EventArgs e)
        {
            _userTestId = (int)Session["userTestId"];
            _user = Membership.GetUser(User.Identity.Name);
            _userId = _user.ProviderUserKey.ToString();
            userId.Text = User.Identity.Name;
            DataMethods.UpdateTestStart(_userTestId);

        }

        [WebMethod]
        public static void Save_DataB(string timeA, string timeB)
        {

        }

    }

}