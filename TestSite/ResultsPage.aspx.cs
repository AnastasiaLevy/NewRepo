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
            //int age = Convert.ToInt32(Request.QueryString["age"]);
            int ageGroup = Enums.GetAgeGroup(age);
            DataTable dt;
            DataSet ds;
            decimal score;
            int factor;


            if (test == "3")
            {
                chartTitle.Text = "Results for Card Sort Test for participant " + userName;
                dt = DataMethods.GetTestResultsCardSort(userId, tId);
         


            }
               
                

            if (test == "2")
            {
                chartTitle.Text = "Results for Tower of London test for participant " + userName;
                dt = DataMethods.GetTestResultsLondon(userId, tId);
         
                ds = DataMethods.GetLondonUserResultsTotal(userId, tId, ageGroup);
                //if (ds.Tables[0].Rows[0]["avgUserScore"] != DBNull)
                score = Convert.ToDecimal(ds.Tables[0].Rows[0]["avgUserScore"]);
                //text = CalculateResults(score, Convert.ToDecimal(ds.Tables[0].Rows[0]["avgUserScore"]), Convert.ToDecimal(ds.Tables[0].Rows[0]["avgUserScore"]));
                //textStr.Text = text;
                GridView gvA = new GridView();
                SetGvProperties(gvA);




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
                    
                gvA.DataSource = dtA;
                gvA.DataBind();
                pResultPanel.Controls.Add(gvA);
                factor = CalculateResults(tr.PartA, meanA, stdA);
                Literal resA = new Literal();
                resA.Text = Enums.ReturnTrailsResultStrings(factor);
                pResultPanel.Controls.Add(resA);

                GridView gvB = new GridView();
                SetGvProperties(gvB);

                gvB.DataSource = dtB;
                gvB.DataBind();
                pResultPanel.Controls.Add(gvB);
                factor = CalculateResults(tr.PartB, meanB, stdB);
                Literal resB = new Literal();
                resB.Text = Enums.ReturnTrailsResultStrings(factor);
                pResultPanel.Controls.Add(resB);
            }
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