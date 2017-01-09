using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;
using TestSite.DAL;
using TestSite.HelpClasses;

namespace TestSite
{
    public partial class TowerOfLondon : System.Web.UI.Page
    {
        protected MembershipUser _user;
        protected static string _userId;
        protected static int _userTestId;
        protected static List<LondonResults> res;
        protected void Page_Load(object sender, EventArgs e)
        {

            _userTestId = (int)Session["userTestId"];
            _user = Membership.GetUser(User.Identity.Name);
            _userId = _user.ProviderUserKey.ToString();
            userId.Text = _userId.ToString();
            tId.Text = _userTestId.ToString();
            DataMethods.UpdateTestStart(_userTestId);

        }

        [WebMethod]
        public static void SaveResults(string game, 
            string initThinkTime, string timeTotal,
            string numberOfMoves,string numberOfWrongMoves,
            string overTime, string overMoves)
        {
          string testId = Enums.TestId.TowerOfLondon;
          DataMethods.UpdateLondonUserResults(_userId, _userTestId, testId, Convert.ToInt32(game),
          System.Convert.ToDecimal(initThinkTime), System.Convert.ToDecimal(timeTotal),
          Convert.ToInt32(numberOfMoves), Convert.ToInt32(numberOfWrongMoves),
          Convert.ToBoolean(overTime), Convert.ToBoolean(overMoves));
        }


        [WebMethod]
        public static void SaveFininishedLondon()
        {
               DataMethods.UpdateTestFinished(_userId, _userTestId);
        }

        [WebMethod]
        public static void RedirectToResults()
        {
          
        }
    }
}