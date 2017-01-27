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
        protected void Page_Load(object sender, EventArgs e)
        {
        
            logOut.Visible = true;
            login.Visible = false;

            string userId = Request.QueryString["userId"].ToString();
            int age = DataMethods.GetUserAge(userId);
            int tId = Convert.ToInt32(Request.QueryString["tId"]);
            string test = Request.QueryString["test"].ToString();
            string userName = User.Identity.Name;
            int ageGroup = Enums.GetAgeGroup(age);
            DataTable dt;
            int factor;


            if (test == "3")
            {
                chartTitle.Text = "Results for Card Sort Test for participant " + userName;
                dt = DataMethods.GetTestResultsCardSort(userId, tId);



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
                tr.PartA =Convert.ToDecimal( dt.Rows[0]["Trail A"]);
                tr.PartB = Convert.ToDecimal(dt.Rows[0]["Trail B"]);
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
                resA.Text = "Trails part A: " +Enums.ReturnTrailsResultStrings(factor);
                pResultPanel.Controls.Add(resA);

                factor = CalculateResults(tr.PartB, meanB, stdB);
                Label resB = new Label();
                resB.Text = "Trails part B: " +Enums.ReturnTrailsResultStrings(factor);
               
                pResultPanel.Controls.Add(resB);
            }
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