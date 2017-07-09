using System;
using System.Web.UI;
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

            string result;

            result = APICalls.BuyTest(_providerId.ToString(), "CPNI", 1);

        }

        protected void ten_Click(object sender, EventArgs e)
        {
            string result;
            result = APICalls.BuyTest(_providerId.ToString(), "CPNI", 10);
        }

        protected void hundred_Click(object sender, EventArgs e)
        {
            string result;
            result = APICalls.BuyTest(_providerId.ToString(), "CPNI", 100);
        }

        protected void unlim_Click(object sender, EventArgs e)
        {
            string result;
            result = APICalls.BuyTest(_providerId.ToString(), "CPNI", 10000);
        }

        protected void runTest_Click(object sender, EventArgs e)
        {

        }
    }
}