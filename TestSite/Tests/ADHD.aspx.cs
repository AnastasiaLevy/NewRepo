//using ASP;
using RestSharp;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using TestSite;
using TestSite.DAL;
using TestSite.HelpClasses;

namespace TestSite.Tests
{
    public partial class ADHD : System.Web.UI.Page
    {
        public int _providerId;
        protected string _testId = Enums.TestId.CPNI;
        protected void Page_Load(object sender, EventArgs e)
        {

            if(1==1)
            {

                if (Session["providerId"] != null)
                {
                    _providerId = (int)Session["providerId"];
                }

                if (!String.IsNullOrEmpty(Request.QueryString["st"]) && Request.QueryString["st"] == "Completed")
                {
                  int amount =Convert.ToInt32(Request.QueryString["item_name"].Remove(0,5));
                    DataMethods.InsertProviderTest(_providerId, _testId, 1, amount);
                    APICalls.BuyTest(_providerId.ToString(), "CPNI", amount);
                }
            }
        }

        protected void report_Click(object sender, EventArgs e)
        {
            Response.Redirect("../ReportsSamples/CPNI_Sample.html");
        }

        protected void single_Click(object sender, EventArgs e)
        {
            Site2 MyMasterPage = (Site2)Page.Master;

            MyMasterPage.PostPaypal(0.01, "ADHD_1", "/Tests/ADHD.aspx", 1);

        }

        protected void ten_Click(object sender, EventArgs e)
        {


        }

        protected void hundred_Click(object sender, EventArgs e)
        {

        }

        protected void unlim_Click(object sender, EventArgs e)
        {

        }

        protected void runTest_Click(object sender, EventArgs e)
        {

        }
    }
}