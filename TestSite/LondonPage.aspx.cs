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

        //[WebMethod]
        //[ScriptMethod(UseHttpGet = true)]
        //public static List<LondonMoves> GetLondonValues()
        //{
        //    return GetLondonMoves();
        //}

        [WebMethod]
        [ScriptMethod(UseHttpGet = true)]
        public static TestSetUpValues GetLondonValues()
        {
            DataSet ds = DataMethods.GetLondonMoves(_modifiedId);

            List<LondonMoves> moves = GetLondonMoves(ds.Tables[0]);
            GeneralSettings settings = GetGeneralSettings(ds.Tables[1]);

            return new TestSetUpValues
            {
                LondonMoves = moves,
                GeneralSettings = settings
            };
        }

        private static GeneralSettings GetGeneralSettings(DataTable dt)
        {
            GeneralSettings gs = new GeneralSettings();
            if (dt.Rows.Count > 0)
            {
                gs.TestName = dt.Rows[0]["testName"].ToString();
                gs.Instructions = dt.Rows[0]["testInstructions"].ToString();
                gs.InstructionsFinish = dt.Rows[0]["instructionsFinish"].ToString();
                gs.TxtButton = dt.Rows[0]["txtButton"].ToString();
                gs.Feedback = dt.Rows[0]["txtFeedBack"].ToString();
                gs.CountDownFrom = dt.Rows[0]["countDownFrom"].ToString();
                gs.TextOverMoves = dt.Rows[0]["txtOverMoves"].ToString();
                gs.TextOverTime = dt.Rows[0]["txtOverTime"].ToString();
                gs.DisplayResults = dt.Rows[0]["displayResult"].ToString();


                gs.TxtToSpeech = dt.Rows[0]["txtToSpeech"].ToString();
                gs.PrctRounds = dt.Rows[0]["prctRounds"].ToString();
                gs.TestRounds = dt.Rows[0]["testRounds"].ToString();
                gs.CalcResFrom = dt.Rows[0]["calcResFrom"].ToString();
                gs.TimeOut = dt.Rows[0]["timeOut"].ToString();
                gs.MaxMoves = dt.Rows[0]["maxMoves"].ToString();
                gs.ShowFeedback = dt.Rows[0]["showFeedBack"].ToString();
                gs.CountDownText = dt.Rows[0]["countDownText"].ToString();
                gs.Language = dt.Rows[0]["language"].ToString();
                gs.WorkTag = dt.Rows[0]["workTag"].ToString();
                gs.GoalTag = dt.Rows[0]["goalTag"].ToString();

            }
            return gs;
        }

        private static List<LondonMoves> GetLondonMoves(DataTable dt)
        {
          
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
        public List<LondonMoves> LondonMoves { get; set; }
        public GeneralSettings GeneralSettings;
    }

    public class GeneralSettings
    {
        public string TestName { get; set; }
        public string Instructions { get; set; }
        public string InstructionsFinish { get; set; }
        public string TxtButton { get; set; }
        public string Feedback { get; set; }
        public string CountDownFrom { get; set; }
        public string TextOverMoves { get; set; }
        public string TextOverTime { get; set; }
        public string DisplayResults { get; set; }
         
        public string TxtToSpeech { get; set; }
        public string PrctRounds { get; set; }
        public string TestRounds { get; set; }
        public string CalcResFrom { get; set; }
        public string TimeOut { get; set; }
        public string MaxMoves { get; set; }
        public string ShowFeedback { get; set; }
        public string WorkTag { get; set; }
        public string GoalTag { get; set; }
        public string CountDownText { get; set; }
        public string Language { get; set; }

    }
}