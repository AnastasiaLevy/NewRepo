using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using TestSite.DAL;

namespace TestSite
{
    public partial class ResultsPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string userId = Request.QueryString["userId"].ToString();
            int tId = Convert.ToInt32(Request.QueryString["tId"]);
            string test = Request.QueryString["test"].ToString();

            DataTable dt = DataMethods.GetTestResults(userId, tId);
            gvTestResults.DataSource = dt;

            gvTestResults.DataBind();
                

            if (test == "London")
            {

            }
        }
    }
}