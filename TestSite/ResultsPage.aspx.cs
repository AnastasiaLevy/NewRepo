using System;
using System.Collections.Generic;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using TestSite.DAL;
using TestSite.HelpClasses;
using TestSite.ResultsObjs;

namespace TestSite
{
    public partial class ResultsPage : System.Web.UI.Page
    {
        protected void Page_Prerender(object sender, EventArgs e)
        {

            logOut.Visible = true;
            login.Visible = false;
        
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            movesMap.Visible = false;

            string userId = Request.QueryString["userId"].ToString();
            int age = DataMethods.GetUserAge(userId);
            int tId = Convert.ToInt32(Request.QueryString["tId"]);
            string test = Request.QueryString["test"].ToString();
            string userName = User.Identity.Name;
            int ageGroup = Enums.GetAgeGroup(age);
            DataTable dt;
            DataSet ds;
            int factor;


            if (test == "3")
            {
                ds = DataMethods.GetTestResultsCardSort(userId, tId);
                if (ds == null)
                { chartTitle.Text = "There was an error loading results. Please contact the administrator."; }
                else
                {
                    chartTitle.Text = "Results for Card Sort Test for participant " + userName;
                    string html = (ds.Tables[1].Rows[0]["textHtml"] == DBNull.Value) ? "" : ds.Tables[1].Rows[0]["textHtml"].ToString();
                    int respcount = (ds.Tables[0].Rows[0]["Responce Count"] == DBNull.Value) ? 0 : Convert.ToInt32(ds.Tables[0].Rows[0]["Responce Count"]);
                    decimal resptime = (ds.Tables[0].Rows[0]["Responce Time"] == DBNull.Value) ? 0 : Convert.ToDecimal(ds.Tables[0].Rows[0]["Responce Time"]);
                    int correctCount = (ds.Tables[0].Rows[0]["Correct Count"] == DBNull.Value) ? 0 : Convert.ToInt32(ds.Tables[0].Rows[0]["Correct Count"]);
                    int errorCount = (ds.Tables[0].Rows[0]["Error Count"] == DBNull.Value) ? 0 : Convert.ToInt32(ds.Tables[0].Rows[0]["Error Count"]);
                    decimal errortime = (ds.Tables[0].Rows[0]["Error Time"] == DBNull.Value) ? 0 : Convert.ToDecimal(ds.Tables[0].Rows[0]["Error Time"]);
                    int persevCount = (ds.Tables[0].Rows[0]["Persev Resp"] == DBNull.Value) ? 0 : Convert.ToInt32(ds.Tables[0].Rows[0]["Persev Resp"]);
                    decimal persevtime = (ds.Tables[0].Rows[0]["Persev Time"] == DBNull.Value) ? 0 : Convert.ToDecimal(ds.Tables[0].Rows[0]["Persev Time"]);
                    int persevRespError = (ds.Tables[0].Rows[0]["Persev Resp Error"] == DBNull.Value) ? 0 : Convert.ToInt32(ds.Tables[0].Rows[0]["Persev Resp Error"]);
                    decimal persevRespErrTime = (ds.Tables[0].Rows[0]["Persev Resp Error Time"] == DBNull.Value) ? 0 : Convert.ToDecimal(ds.Tables[0].Rows[0]["Persev Resp Error Time"]);
                    int uniqueErr = (ds.Tables[0].Rows[0]["Unique Error"] == DBNull.Value) ? 0 : Convert.ToInt32(ds.Tables[0].Rows[0]["Unique Error"]);
                    decimal uniqueErrTime = (ds.Tables[0].Rows[0]["Unique Error Time"] == DBNull.Value) ? 0 : Convert.ToDecimal(ds.Tables[0].Rows[0]["Unique Error Time"]);
                    int failuerSetCnt = (ds.Tables[0].Rows[0]["Failure to Maintain Set"] == DBNull.Value) ? 0 : Convert.ToInt32(ds.Tables[0].Rows[0]["Failure to Maintain Set"]);
                    string cats = ds.Tables[0].Rows[0]["Categories Complete"] == DBNull.Value ? "" : ds.Tables[0].Rows[0]["Categories Complete"].ToString();
                    string movesMap = ds.Tables[2].Rows[0]["movesText"] == DBNull.Value ? "" : ds.Tables[2].Rows[0]["movesText"].ToString();
                    string[] moves = movesMap.Split(',');

                    DisplayTable(html);
                    SetMovesMapDiv(moves);

                    DataSet dsNorms = DataMethods.GetCardSortNorms(ageGroup);
                    decimal mean;
                    decimal std;
                    
                    decimal catComplete = cats.Length;
                    GetValues(dsNorms, 0, out mean, out std);
                    factor = CalculateResults(catComplete, mean, std);
                    textStr.Text ="Total Number Categories Completed:" + Enums.ReturnCardSortCatNumber(factor);

                    GetValues(dsNorms, 1, out mean, out std);
                    factor = CalculateResults(respcount, mean, std);
                    textStr.Text += "Total Response Count:" + Enums.ReturnCardSortNormsTotalCorrect(factor);

                    GetValues(dsNorms, 2, out mean, out std);
                    factor = CalculateResults(persevCount, mean, std);
                    textStr.Text += "Total Perseverative Errors Count:" + Enums.ReturnCardSortPersevErrors(factor);

                    GetValues(dsNorms, 3, out mean, out std);
                    factor = CalculateResults(correctCount, mean, std);
                    textStr.Text += "Total Correct Count:" + Enums.ReturnCardSortNormsTotalCorrect(factor);


                    GetValues(dsNorms, 4, out mean, out std);
                    factor = CalculateResults(errorCount, mean, std);
                    textStr.Text += "Total Error Count:" + Enums.ReturnCardSortNormsTotalErrors(factor);

                    GetValues(dsNorms, 5, out mean, out std);
                    factor = CalculateResults(uniqueErr, mean, std);
                    textStr.Text += "Total Unique Error Count:" + Enums.ReturnCardSortNormsUniqueErrors(factor);
                }
            }
               
            if (test == "2" || test == "Tower Of London")
            {
                chartTitle.Text = "Results for Tower of London test";
                GridView gv;
                SetUpUserResultGrid(userId, tId, out dt, out gv);

                DataTable dtr = DataMethods.GetLondonNorms(ageGroup);
                decimal mean = Convert.ToDecimal(dtr.Rows[0]["mean"]);
                decimal std = Convert.ToDecimal(dtr.Rows[0]["stdDeviation"]);
                int totalM = dt.AsEnumerable().Where(row => row.Field<int>("game") > 3).Sum(r => r.Field<int>("Exess Moves"));
                factor = CalculateResults(totalM, mean, std);
                Label descr = new Label();
                descr.Text = "You have made " + totalM + Enums.ReturnLondonResultStrings(factor);
                pResultPanel.Controls.Add(gv);

            }

            if (test == "1" || test == "Trails")
            {
                chartTitle.Text = "Results for Trails Test";
                dt = DataMethods.GetTestResultsTrails(userId, tId);
             
                TrailsResults tr = new TrailsResults();
                tr.PartA = (dt.Rows[0]["Trail A"]) == DBNull.Value ? 0 : Convert.ToDecimal( dt.Rows[0]["Trail A"]);
                tr.PartB = (dt.Rows[0]["Trail B"]) == DBNull.Value ? 0: Convert.ToDecimal(dt.Rows[0]["Trail B"]);
                DataSet dts = DataMethods.GetTestNormsTrails(ageGroup);
                DataTable dtA = dts.Tables[0];
                DataTable dtB = dts.Tables[1];

                decimal meanA = Convert.ToDecimal(dtA.Rows[0]["mean"]);
                decimal meanB = Convert.ToDecimal(dtB.Rows[0]["mean"]);

                decimal stdA = Convert.ToDecimal(dtA.Rows[0]["stdDeviation"]);
                decimal stdB = Convert.ToDecimal(dtB.Rows[0]["stdDeviation"]);
                GridView gvA = new GridView();
                SetGvProperties(gvA);
                    
                gvA.DataSource = dt;
                gvA.DataBind();
                pResultPanel.Controls.Add(gvA);
                factor = CalculateResults(tr.PartA, meanA, stdA);
                Label resA = new Label();
                resA.Text = "Trails part A: " + Enums.ReturnTrailsResultStrings(factor);
                pResultPanel.Controls.Add(resA);

                factor = CalculateResults(tr.PartB, meanB, stdB);
                Label resB = new Label();
                resB.Text = "Trails part B: " + Enums.ReturnTrailsResultStrings(factor);
               
                pResultPanel.Controls.Add(resB);
            }
        }

        private void GetValues(DataSet dsNorms, int index, out decimal mean, out decimal std)
        {
            mean = Convert.ToDecimal(dsNorms.Tables[index].Rows[0]["mean"]);
            std = Convert.ToDecimal(dsNorms.Tables[index].Rows[0]["stdDeviation"]);
        }

        private void SetMovesMapDiv(string[] moves)
        {
            Button bt = new Button();
            bt.Click += new EventHandler(this.btHide_click);
            bt.CssClass = "btn button";
            bt.Text = "Moves Map";

            pResultPanel.Controls.Add(bt);

            foreach (string s in moves)
            {
                AppendLog(s);
            }
        }

        private void btHide_click(object sender, EventArgs e)
        {
            if (movesMap.Visible == true)
                movesMap.Visible = false;
            else
                movesMap.Visible = true;

        }

        private void AppendLog(string s)
        {
            System.Web.UI.HtmlControls.HtmlGenericControl newDiv = new
                                    System.Web.UI.HtmlControls.HtmlGenericControl();
            newDiv.InnerHtml = s;
            movesMap.Controls.Add(newDiv);
        }

        private void DisplayTable(string html)
        {
            System.Web.UI.HtmlControls.HtmlGenericControl newDiv = new
            System.Web.UI.HtmlControls.HtmlGenericControl();
            newDiv.ID = "divcreated";
            newDiv.InnerHtml = html;
            pResultPanel.Controls.Add(newDiv);
        }

        private void SetUpUserResultGrid(string userId, int tId, out DataTable dt, out GridView gv)
        {
            dt = DataMethods.GetTestResultsLondon(userId, tId);
            gv = new GridView();
            SetGvProperties(gv);
            gv.DataSource = dt;
            gv.DataBind();
        }

        protected int CalculateResults(decimal? score, decimal? mean, decimal? stdDev)
        {
            int category = 10;
            if (score == null || mean == null || stdDev== null)
            {
                return 10;
            }

            if (score < mean - stdDev * 3)
            {
                category = -3;
            }
            else if (score < mean - stdDev *2)
            {
               category = -2;
            }
            else if (score < mean - stdDev)
            {
                category = -1;
            }
            else if (score > mean + stdDev)
            {
                category = +1;
            }
            else if (score > mean + stdDev*2)
            {
                category = +2;
            }
            else if (score > mean + stdDev * 3)
            {
                category = +3;
            }
            else
                category =0;

            return category;

        }

        protected void logOut_Click(object sender, EventArgs e)
        {
            FormsAuthentication.SignOut();
            Response.Redirect("~/MainPage.aspx");

        }

        private void SetGvProperties(GridView gv)
        {
            gv.AlternatingRowStyle.BackColor = System.Drawing.Color.White;
            gv.EditRowStyle.BackColor = System.Drawing.Color.Wheat;
            gv.GridLines = GridLines.None;
            //TODO:style class from css
            gv.CellPadding = 4;
            gv.ForeColor = Color.Ivory;
            gv.HeaderStyle.BackColor = Color.DarkGreen;
            gv.HeaderStyle.ForeColor = Color.White;
            gv.ForeColor = Color.Black;
            gv.RowStyle.BackColor = Color.FloralWhite;
            gv.CssClass = "testResGrid";
          




        }
    }
}