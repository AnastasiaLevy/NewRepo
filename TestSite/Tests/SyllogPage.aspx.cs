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
            DataMethods.InsertSyllogismsTable(html, _userTestId);
        }

        [WebMethod]
        public static void SaveSyllogUserTotal (string totalCorrect, string totalError, string certAverage, string certRatingCorrect)
        {
            int totalCorrectint = Convert.ToInt32(totalCorrect);
            int totalErrorInt = Convert.ToInt32(totalError);
            decimal certAverageInt = Convert.ToDecimal(certAverage);
            decimal certRatingCorrectInt = Convert.ToDecimal(certRatingCorrect);

            try
            {
                DataMethods.InsertSyllogismsTotal(_userTestId, totalCorrectint, totalErrorInt, certAverageInt, certRatingCorrectInt);
                DataMethods.UpdateTestFinished(_userId, _userTestId);
            }
            catch (Exception ex)
            {
                DataMethods.InsertErrorMessage(ex.ToString(), _userId, "SyllogPage");
            }
        }
    }
}