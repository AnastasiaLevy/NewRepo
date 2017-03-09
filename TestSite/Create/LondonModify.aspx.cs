using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TestSite.Create
{
    public partial class LondonModify : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack) {
                ddlPractice.DataSource = Enumerable.Range(1, 3);
                ddlPractice.DataBind();

                ddlNumberGames.DataSource = Enumerable.Range(1, 13);
                ddlNumberGames.DataBind();

                ddlConuntFromRound.DataSource = Enumerable.Range(1, 3);
                ddlConuntFromRound.DataBind();

            }
        }

        protected void saveTest_Click(object sender, EventArgs e)
        {

        }

        [WebMethod]
        public static void SaveResults(
            string testName,
            string instructions,
            string txtToSpeech,
            string prctRounds,
            string testRounds,
            string calcResFrom,
            string timeOut,
            string maxMoves,
            string showFeedback,
            string movesData
            )
        {
            int? modifidId = null;
            try { 
             modifidId = DAL.DataMethods.InsertLondonTestModify(testName, instructions, Convert.ToBoolean(txtToSpeech),
                Convert.ToInt32(prctRounds), Convert.ToInt32(testRounds), Convert.ToInt32(calcResFrom),
                Convert.ToInt32(timeOut), Convert.ToInt32(maxMoves), Convert.ToBoolean(showFeedback));
            }catch(Exception ex)
            {
                DAL.DataMethods.InsertErrorMessage(ex.Message, null, "LondonModify");
            }
            if (modifidId != null)
            {
                int round = 0;
                dynamic smth = JsonConvert.DeserializeObject<MovesData[]>(movesData);
                List<MovesData> listMd = new List<MovesData>();
                foreach (MovesData data in smth)
                {
                    
                    MovesData md = new MovesData();
                    string movesStart = "{";
                    string movesFinish = "{";

                    var strS = JsonConvert.DeserializeObject<Move[]>(data.arrStart);
                    var strF = JsonConvert.DeserializeObject<Move[]>(data.arrFinish);
                    for (int i = 0; i < strS.Count(); i++)
                    {
                        
                        movesStart += '"' + strS[i].color + "' : '" + strS[i].id.Substring(0, 2) + '"' + ',';
                        movesFinish += '"' + strF[i].color + "' : '" + strF[i].id.Substring(0, 2) + '"' + ',';
                    }
                    md.arrStart = movesStart.TrimEnd(',') + "}";
                    md.arrFinish = movesFinish.TrimEnd(',') + "}";
                    md.numMoves = data.numMoves;

                    DAL.DataMethods.InsertLondonMoves(testName, round, md.arrStart, md.arrFinish, data.numMoves, modifidId);
                    round++;
                }
          

                //listMd.Add(md);
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