using System;
using System.Collections.Generic;
using System.Data;
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
       
                

            if (test == "2")
            {
                chartTitle.Text = "Results for Tower of London test for participant " + userName;
                dt = DataMethods.GetTestResultsLondon(userId, tId);
                gvTestResults.DataSource = dt;
                gvTestResults.DataBind();
                dt = DataMethods.GetLondonUserResultsTotal(userId, tId, ageGroup);


            }

            if (test == "1")
            {
                chartTitle.Text = "Results for Trails test for participant " + userName;
                dt = DataMethods.GetTestResultsTrails(userId, tId);
                gvTestResults.DataSource = dt;
                gvTestResults.DataBind();
                
                TrailsResults tr = new TrailsResults();
                tr.PartA =Convert.ToDecimal( dt.Rows[0]["Trail A"]);
                tr.PartB = Convert.ToDecimal(dt.Rows[0]["Trail B"]);
                dt = DataMethods.GetTestNormsTrails(ageGroup);
                tr.Mean = Convert.ToDecimal(dt.Rows[0]["mean"]);
                tr.StdDev = Convert.ToDecimal(dt.Rows[0]["stdDeviation"]);
                decimal score = (tr.PartA + tr.PartB) / 2;
                string text = CalculateResults(score, tr.Mean, tr.StdDev);
                textStr.Text = text;   
            }

        }

        protected string CalculateResults(decimal score, decimal mean, decimal stdDev)
        {
            string text = "";
            if (score < mean - stdDev * 3)
            {
                text = Resources.Text.ResultLower3StdDev;
            }
            else if (score < mean - stdDev *2)
            {
                text = Resources.Text.ResultLower2StdDev;
            }
            else if (score < mean - stdDev)
            {
                text = Resources.Text.ResultBelowStdDev;
            }
            else if (score > mean + stdDev)
            {
                text = Resources.Text.ResultHigherStdDev;
            }
            else if (score > mean + stdDev*2)
            {
                text = Resources.Text.ResultHigher2StdDev;
            }
            else if (score > mean + stdDev * 3)
            {
                text = Resources.Text.ResultHigher3StdDev;
            }
            else
                text = Resources.Text.ResultMiddleStdDev;

            return text;

        }

        protected void logOut_Click(object sender, EventArgs e)
        {
            FormsAuthentication.SignOut();
            Response.Redirect("~/MainPage.aspx");

        }
    }
}