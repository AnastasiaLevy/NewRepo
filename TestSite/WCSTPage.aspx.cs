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
            userId.Text = _userId;
            tId.Text = _userTestId.ToString();
            DataMethods.UpdateTestStart(_userTestId);

        }

        [WebMethod]//get Total
        public static void Save_Data(
            string category,
            string respCount,
            string resTime,
            string correctCnt,
            string errorCnt,
            string errorTime,
            string persevResp,
            string persevTime,
            string persevRespError,
            string persevRespErrTime,
            string uniqueErr,
            string uniqErrTime,
            string failureSetCnt,
            string completedSet,
            string moves)
        {
            int respCountVar = Convert.ToInt32(respCount);
            decimal resTimeVar = String.IsNullOrEmpty(resTime) ? -1 : Convert.ToDecimal(resTime);
            int correctCntVar = Convert.ToInt32(correctCnt);
            int errorCntVar = Convert.ToInt32(errorCnt);
            decimal errorTimeVar = String.IsNullOrEmpty(errorTime) ? -1 : Convert.ToDecimal(errorTime);
            int persevRespVar = Convert.ToInt32(persevResp);
            decimal persevTimeVar = String.IsNullOrEmpty(persevTime) ? -1 : Convert.ToDecimal(persevTime);
            int persevRespErrorVar = Convert.ToInt32(persevRespError);
            decimal persevRespErrTimeVar = String.IsNullOrEmpty(persevRespErrTime) ? -1 : Convert.ToDecimal(persevRespErrTime);
            int uniqueErrVar = Convert.ToInt32(uniqueErr);
            decimal uniqErrTimeVar = String.IsNullOrEmpty(uniqErrTime) ? -1 : Convert.ToDecimal(uniqErrTime);
            int failureSetCntVar = Convert.ToInt32(failureSetCnt);

            try
            {
             DataMethods.InsertCardSortUserResult(
            _userId, _userTestId, respCountVar, resTimeVar, correctCntVar, errorCntVar,
            errorTimeVar, persevRespVar, persevTimeVar, persevRespErrorVar, persevRespErrTimeVar, uniqueErrVar,
            uniqErrTimeVar, failureSetCntVar, category, completedSet);

                DataMethods.UpdateTestFinished(_userId, _userTestId);
                if (!String.IsNullOrEmpty(moves))
                {
                    DataMethods.InsertCardSortUserMovesMap(_userTestId, moves);
                }
            }
            catch (Exception ex)
            {
                //TODO: Throw exeption
            }
         

          
        }

        [WebMethod]
        public static void SaveHTMLstring(string html)
        {
            DataMethods.InsertCardSortTable(html, _userTestId);

        }

    }

}