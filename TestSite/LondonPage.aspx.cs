using System;
using System.Collections.Generic;
using System.Data;
using System.Diagnostics;
using System.Linq;
using System.Web;
using System.Web.Script.Services;
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
        protected static string _testName;
        protected static string _modifiedId;
        protected void Page_Load(object sender, EventArgs e)
        {

            _userTestId = (int)Session["userTestId"];
            //_testName = Session["testName"].ToString();
            _modifiedId = Session["modifiedId"].ToString();
            _user = Membership.GetUser(User.Identity.Name);
            _userId = _user.ProviderUserKey.ToString();
            userId.Text = _userId.ToString();
            tId.Text = _userTestId.ToString();
            DataMethods.UpdateTestStart(_userTestId);

        }

        [WebMethod]
        public static void SaveResults(string game,
            string initThinkTime, string timeTotal,
            string numberOfMoves, string numberOfWrongMoves,
            string overTime, string overMoves, string minMoves)
        {
            string testId = Enums.TestId.TowerOfLondon;
            DataMethods.UpdateLondonUserResults(_userId, _userTestId, testId, Convert.ToInt32(game),
            System.Convert.ToDecimal(initThinkTime), System.Convert.ToDecimal(timeTotal),
            Convert.ToInt32(numberOfMoves), Convert.ToInt32(numberOfWrongMoves),
            Convert.ToBoolean(overTime), Convert.ToBoolean(overMoves), Convert.ToInt32(minMoves));
        }


        [WebMethod]
        public static void SaveFininishedLondon()
        {
            DataMethods.UpdateTestFinished(_userId, _userTestId);
        }

        [WebMethod]
        [ScriptMethod(UseHttpGet = true)]
        public static List<LondonMoves> GetLondonValues()
        {
            DataTable dt = DataMethods.GetLondonMoves(_modifiedId);
            LondonMoves lm = new LondonMoves();
            var oSerializer = new System.Web.Script.Serialization.JavaScriptSerializer();
            List<LondonMoves> listMoves = new List<LondonMoves>();
            foreach (DataRow dr in dt.Rows)
            {
                listMoves.Add(new LondonMoves
                {
                    GameRound = Convert.ToInt32(dr["round"]),
                    RoundStart = dr["roundValues"].ToString(),
                    RoundFinish = dr["roundFinish"].ToString(),
                    NumberOfMoves = Convert.ToInt32(dr["numMoves"]),

                });
            }

            return listMoves;
        }
    }

   
    

    public class LondonMoves
    {
        public int GameRound { get; set; }
        public string RoundStart { get; set; }
        public string RoundFinish { get; set; }
        public int NumberOfMoves { get; set; }
    }

    public class TestSetUpValues
    {
        public LondonMoves LondonMoves { get; set; }
        public GeneralSettings GeneralSettings;
    }

    public class GeneralSettings
    {
        public string TestName { get; set; }
        public string Instructions { get; set; }
        public string TxtToSpeech { get; set; }
        public string PrctRounds { get; set; }
        public string TestRounds { get; set; }
        public string CalcResFrom { get; set; }
        public string TimeOut { get; set; }
        public string MaxMoves { get; set; }
        public string ShowFeedback { get; set; }
       
    }
}