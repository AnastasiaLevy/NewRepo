using System;
using System.Collections.Generic;
using System.Data;
using System.Drawing;
using System.IO;
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
        string userId;
        int tId;
        string userName;
        protected void Page_Prerender(object sender, EventArgs e)
        {

            logOut.Visible = true;
            login.Visible = false;


        }
        protected void Page_Load(object sender, EventArgs e)
        {

            userId = Request.QueryString["userId"].ToString();
            int canView = DataMethods.GetUserViewResults(userId);
            if (canView == 0 && Request.QueryString["provider"] == null)
            {
                textStr.Text = "Provider has restricted  view of the result section.";
            }
            else
            {
                movesMap.Visible = movesMap.Visible ? true : false;

                int age = DataMethods.GetUserAge(userId);
                int ageGroup = Enums.GetAgeGroup(age);
                if (ageGroup == 10 || ageGroup == 100)
                {
                    chartTitle.Text = "Age Group Error. Please contact administrator."; //TODO: nice wording?

                }
                else
                { ShowResults(userId, ageGroup); }

            }
        }

        private void ShowResults(string userId, int ageGroup)
        {
            tId = Convert.ToInt32(Request.QueryString["tId"]);
            string test = Request.QueryString["test"].ToString();
            userName = User.Identity.Name;
            DataTable dt;
            DataSet ds;
            int factor;
            textStr.Text = "";

            if (test == "6" || test == "Stroop")
            {
                dt = DataMethods.GetStroopResults(tId);
                GridView stroopResults = new GridView();
                stroopResults.DataSource = dt;
                stroopResults.DataBind();
                SetGvProperties(stroopResults);
                pResultPanel.Controls.Add(stroopResults);
            }

            else if (test == "4" || test == "Nback")
            {
                decimal mean;
                decimal std;
                int percentCorrrect;



                dt = DataMethods.GetNbackUserResults(tId);
                if (dt == null)
                {
                    chartTitle.Text = "Results for nBack Test for participant cannot be displayed. Please coctact site administrator.";
                }
                else
                {
                    chartTitle.Text = "Results for nBack Test for participant " + userName;
                    GridView gvNbackUserResults = new GridView();
                    gvNbackUserResults.DataSource = dt;
                    gvNbackUserResults.DataBind();
                    SetGvProperties(gvNbackUserResults);
                    pResultPanel.Controls.Add(gvNbackUserResults);
                    ds = DataMethods.GetNbackNorms(ageGroup);

                    GetValues(ds, 0, out mean, out std);
                    percentCorrrect = GerPercentCorrect(dt, 1);
                    factor = CalculateResults(percentCorrrect, mean, std);
                    textStr.Text += "Result for nBack 1: " + Enums.ReturnNBackResultString(factor) + "<br/>";


                    GetValues(ds, 1, out mean, out std);
                    percentCorrrect = GerPercentCorrect(dt, 3);
                    factor = CalculateResults(percentCorrrect, mean, std);
                    textStr.Text += "Result for nBack 2: " + Enums.ReturnNBackResultString(factor) + "<br/>";


                    GetValues(ds, 2, out mean, out std);
                    percentCorrrect = GerPercentCorrect(dt, 5);
                    factor = CalculateResults(percentCorrrect, mean, std);
                    textStr.Text += "Result for nBack 3: " + Enums.ReturnNBackResultString(factor) + "<br/>";
                }

            }

            else if (test == "5" || test == "Syllogisms")
            {
                dt = DataMethods.GetSyllogismsUserTable(tId);
                if (dt == null)
                { chartTitle.Text = "There was an error loading results. Please contact the administrator."; }
                else
                {

                    chartTitle.Text = "Results for Syllogisms Test for participant " + userName;
                    GridView gvSyllogResTotal = new GridView();
                    DataTable dtRes = DataMethods.GetSyllogismsUserResults(tId);
                    gvSyllogResTotal.DataSource = dtRes;
                    gvSyllogResTotal.DataBind();
                    SetGvProperties(gvSyllogResTotal);
                    pResultPanel.Controls.Add(gvSyllogResTotal);

                    string html = dt.Rows[0]["htmlText"].ToString();
                    CreateMapButton();
                    AppendLog(html);

                    ds = DataMethods.GetSyllogysmTestNorms(ageGroup);
                    decimal mean;
                    decimal std;
                    decimal result = Convert.ToDecimal(dtRes.Rows[0]["totalCorrect"]);
                    GetValues(ds, 0, out mean, out std);
                    factor = CalculateResults(result, mean, std);
                    textStr.Text += "Total Correct Count:" + Enums.ReturnSyllogResultText(factor);
                }
            }

            else if (test == "3" || test == "Card Sort")
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
                    textStr.Text = "Total Number Categories Completed: " + Enums.ReturnCardSortCatNumber(factor) + "<br/>";

                    GetValues(dsNorms, 1, out mean, out std);
                    factor = CalculateResults(respcount, mean, std);
                    textStr.Text += "Total Response Count: " + Enums.ReturnCardSortNormsTotalCorrect(factor) + "<br/>";

                    GetValues(dsNorms, 2, out mean, out std);
                    factor = CalculateResults(persevCount, mean, std);
                    textStr.Text += "Total Perseverative Errors Count: " + Enums.ReturnCardSortPersevErrors(factor) + "<br/>";

                    GetValues(dsNorms, 3, out mean, out std);
                    factor = CalculateResults(correctCount, mean, std);
                    textStr.Text += "Total Correct Count: " + Enums.ReturnCardSortNormsTotalCorrect(factor) + "<br/>";


                    GetValues(dsNorms, 4, out mean, out std);
                    factor = CalculateResults(errorCount, mean, std);
                    textStr.Text += "Total Error Count:" + Enums.ReturnCardSortNormsTotalErrors(factor) + "<br/>";

                    GetValues(dsNorms, 5, out mean, out std);
                    factor = CalculateResults(uniqueErr, mean, std);
                    textStr.Text += "Total Unique Error Count: " + Enums.ReturnCardSortNormsUniqueErrors(factor) + "<br/>";
                }
            }

            else if (test == "2" || test == "Tower Of London")
            {
                chartTitle.Text = "Results for Tower of London Test for participant " + userName + ".";
                GridView gv;
                SetUpUserResultGrid(userId, tId, out dt, out gv);
                
                DataTable dtr = DataMethods.GetLondonNorms(ageGroup, tId);
                decimal mean = Convert.ToDecimal(dtr.Rows[0]["mean"]);
                decimal std = Convert.ToDecimal(dtr.Rows[0]["stdDeviation"]);
                int totalM = dt.AsEnumerable().Where(row => row.Field<int>("game") > 3).Sum(r => r.Field<int>("Exess Moves"));
                factor = CalculateResults(totalM, mean, std);
                Label descr = new Label();
                descr.Text = "You have made " + totalM + Enums.ReturnLondonResultStrings(factor) + "\n\r";
                pResultPanel.Controls.Add(gv);

            }

            else if (test == "1" || test == "Trails")
            {
                chartTitle.Text = "Results for Trails Test";
                dt = DataMethods.GetTestResultsTrails(userId, tId);

                TrailsResults tr = new TrailsResults();
                tr.PartA = (dt.Rows[0]["Trail A"]) == DBNull.Value ? 0 : Convert.ToDecimal(dt.Rows[0]["Trail A"]);
                tr.PartB = (dt.Rows[0]["Trail B"]) == DBNull.Value ? 0 : Convert.ToDecimal(dt.Rows[0]["Trail B"]);
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
                resA.Text = "Trails part A: " + Enums.ReturnTrailsResultStrings(factor) + "<br/>";
                pResultPanel.Controls.Add(resA);

                factor = CalculateResults(tr.PartB, meanB, stdB);
                Label resB = new Label();
                resB.Text = "Trails part B: " + Enums.ReturnTrailsResultStrings(factor) + "<br/>";

                pResultPanel.Controls.Add(resB);
            }
        }

        private int GerPercentCorrect(DataTable dt, int v)
        {

            DataRow[] dr = dt.Select("Trial = " + v.ToString());
            int percentCorrrect = Convert.ToInt32(dr[0]["Score"]);
            return percentCorrrect;
        }

        private void GetValues(DataSet dsNorms, int index, out decimal mean, out decimal std)
        {
            mean = Convert.ToDecimal(dsNorms.Tables[index].Rows[0]["mean"]);
            std = Convert.ToDecimal(dsNorms.Tables[index].Rows[0]["stdDeviation"]);
        }

        private void SetMovesMapDiv(string[] moves)
        {
            CreateMapButton();
            foreach (string s in moves)
            {
                AppendLog(s);
                AppendLog("<br/>");
            }
        }

        private void CreateMapButton()
        {
            Button bt = new Button();
            bt.Click += new EventHandler(this.btHide_click);
            bt.CssClass = "btn button";
            bt.Text = "Moves Map";
            pResultPanel.Controls.Add(bt);

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
            DataSet ds = DataMethods.GetTestResultsLondon(userId, tId);
            dt = ds.Tables[0];
            gv = new GridView();
            SetGvProperties(gv);
            gv.DataSource = ds.Tables[0];
            gv.DataBind();
            dt = ds.Tables[0];
        }

        protected int CalculateResults(decimal? score, decimal? mean, decimal? stdDev)
        {
            int category = 10;
            if (score == null || mean == null || stdDev == null)
            {
                return 10;
            }

            if (score < mean - stdDev * 3)
            {
                category = -3;
            }
            else if (score < mean - stdDev * 2)
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
            else if (score > mean + stdDev * 2)
            {
                category = +2;
            }
            else if (score > mean + stdDev * 3)
            {
                category = +3;
            }
            else
                category = 0;

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
            gv.ID = "gv";
            gv.Attributes.Add("runat", "server");

        }


        //private void ExportDataSetToExcel(DataTable dt)
        //{
        //    var excel = new Microsoft.Office.Interop.Excel.Application();
        //    var wb = excel.Workbooks.Add(true);
        //    Microsoft.Office.Interop.Excel.Sheets sheets = wb.Sheets;
        //    Microsoft.Office.Interop.Excel.Worksheet newSheet = sheets.Add();

        //    ExportOneLine(dt, newSheet);
        //    ExportNormal(dt, newSheet);

        //    wb.SaveAs(@"C:\LondonResults\" + userName + "_" + DateTime.Now.ToShortDateString() + ".xlsx");
        //    wb.Close();
        //}

        private static void ExportNormal(DataSet dt, Microsoft.Office.Interop.Excel.Worksheet newSheet)
        {
            int iCol = 0;
            foreach (DataColumn c in dt.Tables[0].Columns)
            {
                iCol++;
                newSheet.Cells[1, iCol] = c.ColumnName;
            }

            int iRow = 0;
            foreach (DataRow r in dt.Tables[0].Rows)
            {
                iRow++;
                // add each row's cell data...
                iCol = 0;
                foreach (DataColumn c in dt.Tables[0].Columns)
                {
                    iCol++;
                    newSheet.Cells[iRow + 1, iCol] = r[c.ColumnName];

                }
            }
        }

        private static void ExportOneLine(DataSet ds, Microsoft.Office.Interop.Excel.Worksheet newSheet)
        {
            int iCol = 0;
            foreach (DataRow r in ds.Tables[1].Rows)
            {
                foreach (DataColumn c in ds.Tables[1].Columns)
                {
                    iCol++;
                    newSheet.Cells[1, iCol] = c.ColumnName;
                    newSheet.Cells[2, iCol] = r[c.ColumnName];
                }

            }


            foreach (DataRow r in ds.Tables[0].Rows)
            {
                foreach (DataColumn c in ds.Tables[0].Columns)
                {
                    iCol++;
                    newSheet.Cells[1, iCol] = c.ColumnName;
                    newSheet.Cells[2, iCol] = r[c.ColumnName];
                }

            }
        }

        protected void btnExportLine_Click(object sender, EventArgs e)
        {
            DataSet ds = DataMethods.GetTestResultsLondon(userId, tId);
            
            var excel = new Microsoft.Office.Interop.Excel.Application();
            var wb = excel.Workbooks.Add(true);
            Microsoft.Office.Interop.Excel.Sheets sheets = wb.Sheets;
            Microsoft.Office.Interop.Excel.Worksheet newSheet = sheets.Add();

            ExportOneLine(ds, newSheet);

            try
            {

            wb.SaveAs(@"C:\LondonResults\" + userName + "_" + DateTime.Now.ToShortDateString() + ".xlsx");
            wb.Close();
            }
            catch (Exception ex)
            {

            }

        }

        protected void btnExportNorm_Click(object sender, EventArgs e)
        {
            DataSet ds = DataMethods.GetTestResultsLondon(userId, tId);
            string name = GetPartName(ds.Tables[1]);
            var excel = new Microsoft.Office.Interop.Excel.Application();
            var wb = excel.Workbooks.Add(true);
            Microsoft.Office.Interop.Excel.Sheets sheets = wb.Sheets;
            Microsoft.Office.Interop.Excel.Worksheet newSheet = sheets.Add();

            ExportNormal(ds, newSheet);

            try
            {
                wb.SaveAs(@"C:\LondonResults\" + name + "_" + DateTime.Now.ToShortDateString() + ".xlsx");
                wb.Close();
            }
            catch (Exception ex)
            {

            }
        }

        private string GetPartName(DataTable dt)
        {
            return string.Format("{0}_{1}", dt.Rows[0]["firstName"], dt.Rows[0]["lastName"]);
        }
    }
}