using RestSharp;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TestSite.Tests
{
    public partial class PTSD : System.Web.UI.Page
    {
        public string _providerId = "2";
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void report_Click(object sender, EventArgs e)
        {
            Response.Redirect("../ReportsSamples/CPNI_Sample.html");
        }

        protected void single_Click(object sender, EventArgs e)
        {
            var client = new RestClient("http://178.62.94.173/api/");
            var request = new RestRequest("", Method.POST);
           
            request.AddParameter("controller", "Listoftestsapi");
            request.AddParameter("action", "buy");
            request.AddParameter("api_CASS_buy", "1");
            request.AddParameter(" api_provider_ext_id", _providerId);
           
            var response = client.Execute(request);

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