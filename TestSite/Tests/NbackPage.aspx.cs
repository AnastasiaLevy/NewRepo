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
    public partial class NbackPage : System.Web.UI.Page
    {
        protected MembershipUser _user;
        protected static string _userId;
        protected static int _userTestId;
   

        protected void Page_Load(object sender, EventArgs e)
        {
            _userTestId = (int)Session["userTestId"];
            _user = Membership.GetUser(User.Identity.Name);
            _userId = _user.ProviderUserKey.ToString();
            
            user.Text = _userId;
            tId.Text = _userTestId.ToString();
            DataMethods.UpdateTestStart(_userTestId);
        }

        [WebMethod]
        public static void Save_NbackResults (string hits,
            string miss, 
            string corRej,
            string falseAlarm, 
            string omitTarget, 
            string omitNoTarget,
            string percentScore,
            string round)
        {

            DAL.DataMethods.SaveUserNbackResults(
                Convert.ToInt32(hits),
                Convert.ToInt32(miss),
                Convert.ToInt32(corRej),
                Convert.ToInt32(falseAlarm),
                Convert.ToInt32(omitTarget),
                Convert.ToInt32(omitNoTarget),
                Convert.ToDecimal(percentScore.TrimEnd('%')),
                Convert.ToInt32(round),
                _userId, _userTestId);

            if (round == "5")
            {
                DataMethods.UpdateTestFinished(_userId, _userTestId);
            }

        }
     

    }
}