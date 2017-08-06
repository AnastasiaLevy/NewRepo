using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using TestSite.DAL;
using TestSite.HelpClasses;

namespace TestSite.Tests
{
    public partial class adult_ADHD : System.Web.UI.Page
    {
        public static int _providerId = 2;
        protected string _testId = Enums.TestId.CCI;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (1 == 1)
            {

                if (Session["providerId"] != null)
                {
                    _providerId = (int)Session["providerId"];
                }

                if (!String.IsNullOrEmpty(Request.QueryString["st"]) && Request.QueryString["st"] == "Completed")
                {
                    int amount = Convert.ToInt32(Request.QueryString["item_name"].Remove(0, 4));
                    DataMethods.InsertProviderTest(_providerId, _testId, 1, amount);
                    APICalls.BuyTest(_providerId.ToString(), "CCI", amount);

                }
            }
        }
        protected void report_Click(object sender, EventArgs e)
        {
            Response.Redirect("../ReportsSamples/CCI_Sample.html");
        }

        protected void single_Click(object sender, EventArgs e)
        {
            Site2 MyMasterPage = (Site2)Page.Master;

            MyMasterPage.PostPaypal(0.01, "CCI_1", "/Tests/adult_ADHD.aspx", 1);

            string result;

            result = APICalls.BuyTest(_providerId.ToString(), "CCI", 1);
        }

        protected void ten_Click(object sender, EventArgs e)
        {
            Site2 MyMasterPage = (Site2)Page.Master;

            MyMasterPage.PostPaypal(0.01, "CCI_10", "/Tests/adult_ADHD.aspx", 1);

            string result;

            result = APICalls.BuyTest(_providerId.ToString(), "CCI", 10);
        }

        protected void hundred_Click(object sender, EventArgs e)
        {
            Site2 MyMasterPage = (Site2)Page.Master;

            MyMasterPage.PostPaypal(0.01, "CCI_100", "/Tests/adult_ADHD.aspx", 1);

            string result;

            result = APICalls.BuyTest(_providerId.ToString(), "CCI", 100);
        }

        protected void unlim_Click(object sender, EventArgs e)
        {
            Site2 MyMasterPage = (Site2)Page.Master;

            MyMasterPage.PostPaypal(0.01, "CCI_1000", "/Tests/adult_ADHD.aspx", 1);

            string result;

            result = APICalls.BuyTest(_providerId.ToString(), "CCI", 10000);
        }

        protected void runTest_Click(object sender, EventArgs e)
        {

        }
    }
}