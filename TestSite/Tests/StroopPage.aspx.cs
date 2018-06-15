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
    public partial class StroopPage : System.Web.UI.Page
    {
        protected MembershipUser _user;
        protected static string _userId;
        protected static int _userTestId;

        protected void Page_Load(object sender, EventArgs e)
        {
            _userTestId = Convert.ToInt32(Session["userTestId"]);
            _user = Membership.GetUser(User.Identity.Name);
            _userId = _user.ProviderUserKey.ToString();
            userId.Text = _userId;
            tId.Text = _userTestId.ToString();
            DataMethods.UpdateTestStart(_userTestId);
        }

        [WebMethod]
        public static void SaveStroopString(
  
            string round,
            string correctRespCount,
            string incorrectRespCount,
            string avgRespTime
            )
        {
            DataMethods.InsertStroopResult(_userId, _userTestId, round, Convert.ToInt32(correctRespCount), Convert.ToInt32(incorrectRespCount), Convert.ToDecimal(avgRespTime));
            if (round == "3")
            {
                DataMethods.UpdateTestFinished(_userId, _userTestId);

            }
        }
    }
}