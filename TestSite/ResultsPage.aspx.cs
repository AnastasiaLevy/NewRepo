using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using TestSite.DAL;

namespace TestSite
{
    public partial class ResultsPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        
            logOut.Visible = true;
            login.Visible = false;

            string userId = Request.QueryString["userId"].ToString();
            int tId = Convert.ToInt32(Request.QueryString["tId"]);
            string test = Request.QueryString["test"].ToString();
            string userName = User.Identity.Name;
            DataTable dt;
       
                

            if (test == "2")
            {
                chartTitle.Text = "Results for Tower of London test for participant " + userName;
                dt = DataMethods.GetTestResultsLondon(userId, tId);
                gvTestResults.DataSource = dt;
                gvTestResults.DataBind();
            }

            if (test == "1")
            {
                chartTitle.Text = "Results for Trails test for participant " + userName;
                dt = DataMethods.GetTestResultsTrails(userId, tId);
                gvTestResults.DataSource = dt;
                gvTestResults.DataBind();
            }

        }

        protected void logOut_Click(object sender, EventArgs e)
        {
            FormsAuthentication.SignOut();
            Response.Redirect("~/MainPage.aspx");

        }
    }
}