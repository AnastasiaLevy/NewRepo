using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.Script.Serialization;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TestSite.Create
{
    public partial class LondonModify : System.Web.UI.Page
    {
        public static string testId; //modifiedTestId
        private static int providerId;
        protected void Page_Load(object sender, EventArgs e)
        {
            providerId = Convert.ToInt32(Session["providerId"]);

            if (!string.IsNullOrEmpty(Request.QueryString["testId"]))
            {
                testId = Request.QueryString["testId"];
                SetTestModify(testId);
            }
            else testId = null;
            if (!IsPostBack)
            {
                ddlPractice.DataSource = Enumerable.Range(0, 10);
                ddlPractice.DataBind();

                ddlNumberGames.DataSource = Enumerable.Range(0, 20);
                ddlNumberGames.DataBind();

                ddlConuntFromRound.DataSource = Enumerable.Range(1, 20);
                ddlConuntFromRound.DataBind();

            }
        }

        private void SetTestModify(string testId)
        {
            DataSet ds = DAL.DataMethods.GetLondonMoves(testId);
            DataTable dt = ds.Tables[1];

            testName.Value = dt.Rows[0]["testName"].ToString();
            instructions.Value = dt.Rows[0]["testInstructions"].ToString();
            instructionsFinish.Value = dt.Rows[0]["instructionsFinish"].ToString();
            txtButton.Value = dt.Rows[0]["txtButton"].ToString();
            overMoves.Value = dt.Rows[0]["txtOverMoves"].ToString();
            overTime.Value = dt.Rows[0]["txtOverTime"].ToString();
            feedback.Value = dt.Rows[0]["txtFeedBack"].ToString();
            cbTextSpeech.Checked = Convert.ToBoolean(dt.Rows[0]["txtToSpeech"]);
            ddlPractice.SelectedValue = dt.Rows[0]["prctRounds"].ToString();
            ddlNumberGames.SelectedValue = dt.Rows[0]["testRounds"].ToString();
            ddlConuntFromRound.SelectedValue = dt.Rows[0]["calcResFrom"].ToString();
            timeOutAfter.Text = dt.Rows[0]["timeOut"].ToString();
            maxMovesLimit.Text = dt.Rows[0]["maxMoves"].ToString();
            showFeedback.Checked = Convert.ToBoolean(dt.Rows[0]["txtToSpeech"]);
            displayResultPage.Checked = Convert.ToBoolean(dt.Rows[0]["displayResult"]);
            countDown.Text = dt.Rows[0]["countDownFrom"].ToString();
            movesText.Value = GetLondonMoves(ds.Tables[0]);
            workArea.Value = dt.Rows[0]["workTag"].ToString();
            endArea.Value = dt.Rows[0]["goalTag"].ToString();
            countDownText.Text = dt.Rows[0]["countDownText"].ToString();
          

        }

        private static string GetLondonMoves(DataTable dt)
        {

            LondonMoves lm = new LondonMoves();
            var oSerializer = new System.Web.Script.Serialization.JavaScriptSerializer();
            List<LondonMoves> listMoves = new List<LondonMoves>();
            foreach (DataRow dr in dt.Rows)
            {
                listMoves.Add(new LondonMoves
                {
                    GameRound = Convert.ToInt32(dr["round"]),
                    RoundStart = GetRoundStart(dr["roundValues"].ToString(), "-start"),
                    RoundFinish = GetRoundStart(dr["roundFinish"].ToString(), "-end"),
                    NumberOfMoves = Convert.ToInt32(dr["numMoves"]),

                });
            }

            return oSerializer.Serialize(listMoves);
        }

        private static string GetRoundFinished(string data)
        {
            return "test";
        }

        private static string GetRoundStart(string data, string append)
        {
            List<Move> listOfMoves = new List<Move>();
            string[] arr = data.Replace('{', ' ').Replace('}', ' ').Split(',');
            foreach (string s in arr)
            {
                Move move = new Move(); //"[{"id":"p3-end","color":"green"},{"id":"p5-end","color":"blue"},{"id":"p6-end","color":"red"}]"
                var temp = s.Split(':');
                move.color = temp[0].Replace('\'', '"').Replace('"', ' ').TrimEnd().TrimStart();
                move.id = temp[1].TrimEnd().TrimEnd('"').TrimStart('\'', ' ', '"') + append.TrimStart();
                listOfMoves.Add(move);
            }
            var json = new JavaScriptSerializer().Serialize(listOfMoves);
            return json;
        }

        protected void saveTest_Click(object sender, EventArgs e)
        {

        }

        [WebMethod]
        public static void SaveResults(
            string testName,
            string instructions,
            string overMoves,
            string overTime,
            string txtButton,
            string txtFeedback,
            string instructionsFinish,
            string txtToSpeech,
            string displayResultPage,
            string prctRounds,
            string testRounds,
            string calcResFrom,
            string countDownFrom,
            string timeOut,
            string maxMoves,
            string showFeedback,
            string movesData,
            string language,
            string workTag,
            string goalTag,
            string countDownText
            )
        {
            
            if (testId == null)
            {
                int? modifidId = null;

                try
                {
                   
                        int time = Convert.ToInt32(timeOut);
                        int numMoves = Convert.ToInt32(maxMoves);
                        bool feedBack = Convert.ToBoolean(showFeedback);
                        int resFrom = Convert.ToInt32(calcResFrom);
                        int count = Convert.ToInt32(countDownFrom);
                        int prct = Convert.ToInt32(prctRounds);
                        int testRnd = Convert.ToInt32(testRounds);
                        bool txtSpch = Convert.ToBoolean(txtToSpeech);
                        bool resPage = Convert.ToBoolean(displayResultPage);
        
                        modifidId = DAL.DataMethods.InsertLondonTestModify(testName, instructions, overMoves, overTime, txtButton, txtFeedback, instructionsFinish, Convert.ToBoolean(txtToSpeech), Convert.ToBoolean(displayResultPage),
                           Convert.ToInt32(prctRounds), Convert.ToInt32(testRounds), Convert.ToInt32(calcResFrom), Convert.ToInt32(countDownFrom),
                           Convert.ToInt32(timeOut), Convert.ToInt32(maxMoves), Convert.ToBoolean(showFeedback), providerId, language, workTag, goalTag, countDownText); //TODO: pass ProviderId
                    
                }
                catch (Exception ex)
                {
                    DAL.DataMethods.InsertErrorMessage(ex.Message, null, "LondonModify");
                }
                if (modifidId != null)
                {
                    UpdateMoves(testName, movesData, modifidId);
                    testId = modifidId.ToString();
                    //listMd.Add(md);
                }
            }
            else
            {
                DAL.DataMethods.UpdateLondonTestModify(testId, testName, instructions, overMoves, overTime, txtButton, txtFeedback, instructionsFinish, Convert.ToBoolean(txtToSpeech), Convert.ToBoolean(displayResultPage),
                           Convert.ToInt32(prctRounds), Convert.ToInt32(testRounds), Convert.ToInt32(calcResFrom), Convert.ToInt32(countDownFrom),
                           Convert.ToInt32(timeOut), Convert.ToInt32(maxMoves), Convert.ToBoolean(showFeedback), providerId, language,workTag, goalTag, countDownText); //TODO: pass ProviderId

                UpdateMoves(testName, movesData, Convert.ToInt32(testId));

            }

        }

        private static void UpdateMoves(string testName, string movesData, int? modifidId)
        {
            int round = 1;
            dynamic smth = JsonConvert.DeserializeObject<MovesData[]>(movesData);
            List<MovesData> listMd = new List<MovesData>();
            foreach (MovesData data in smth)
            {
                if (data == null)
                    continue;
                MovesData md = new MovesData();
                string movesStart = "{";
                string movesFinish = "{";

                var strS = JsonConvert.DeserializeObject<Move[]>(data.arrStart);
                var strF = JsonConvert.DeserializeObject<Move[]>(data.arrFinish);
                for (int i = 0; i < strS.Count(); i++)
                {

                    movesStart += '"' + strS[i].color + "\" : \"" + strS[i].id.Substring(0, 2) + '"' + ',';
                    movesFinish += '"' + strF[i].color + "\" : \"" + strF[i].id.Substring(0, 2) + '"' + ',';
                }
                md.arrStart = movesStart.TrimEnd(',') + "}";
                md.arrFinish = movesFinish.TrimEnd(',') + "}";
                md.numMoves = data.numMoves;

                DAL.DataMethods.InsertLondonMoves(testName, round, md.arrStart, md.arrFinish, data.numMoves, modifidId);
                round++;
            }
        }
    }

    internal class MovesData
    {
        public string arrStart { get; set; }
        public string arrFinish { get; set; }
        public int numMoves { get; set; }
    }
    internal class Move
    {
        public string id { get; set; }
        public string color { get; set; }
    }
}