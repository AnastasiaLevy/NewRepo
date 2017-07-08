using RestSharp;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using TestSite.DAL;

namespace TestSite.Tests
{
    public partial class PTSD : System.Web.UI.Page
    {
        public static string ProviderId = "4567qwerty";//"2";

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void report_Click(object sender, EventArgs e)
        {
            Response.Redirect("../ReportsSamples/CPNI_Sample.html");
        }

        protected void single_Click(object sender, EventArgs e)
        {
            string result;
            
            result =  APICalls.BuyTest(ProviderId, "CPNI", 1);
        }

        protected void ten_Click(object sender, EventArgs e)
        {
            string result;
            result = APICalls.BuyTest(ProviderId, "CPNI", 10);
        }

        protected void hundred_Click(object sender, EventArgs e)
        {
            string result;
            result = APICalls.BuyTest(ProviderId, "CPNI", 100);
        }

        protected void unlim_Click(object sender, EventArgs e)
        {
            string result;
            result = APICalls.BuyTest(ProviderId, "CPNI", 10000);
        }

        protected void runTest_Click(object sender, EventArgs e)
        {

        }
    }
}