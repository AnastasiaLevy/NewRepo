using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;
using TestSite.DAL;

namespace TestSite.Tests
{
    public partial class SyllogPage : System.Web.UI.Page
    {

        protected MembershipUser _user;
        protected static string _userId;
        protected static int _userTestId;
        protected void Page_Load(object sender, EventArgs e)
        {
            _userTestId = (int)Session["userTestId"];
            _user = Membership.GetUser(User.Identity.Name);
            _userId = _user.ProviderUserKey.ToString();
            userId.Text = _userId;
            tId.Text = _userTestId.ToString();
            DataMethods.UpdateTestStart(_userTestId);
        }

        [WebMethod]
        public static void SaveHTMLstring(string html)
        {
            try
            {
                DataMethods.InsertSyllogismsTable(html, _userTestId);
            }
            catch (Exception ex)
            {
                DataMethods.InsertErrorMessage(ex.ToString(), _userId, "SyllogPage", "InsertSyllogismsTable");
            }
        }

        [WebMethod]
        public static void SaveSyllogUserTotal (int totalCorrect, int totalError, decimal certAverage, decimal certRatingCorrect)
        {
            try
            {
                DataMethods.InsertSyllogismsTotal(_userTestId, totalCorrect, totalError, certAverage, certRatingCorrect);
                DataMethods.UpdateTestFinished(_userId, _userTestId);
            }
            catch (Exception ex)
            {
                DataMethods.InsertErrorMessage(ex.ToString(), _userId, "SyllogPage");
            }
        }
    }
}