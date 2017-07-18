using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;
using TestSite.DAL;
using Newtonsoft.Json;

namespace TestSite.Results
{
    public partial class ADHD_Result : System.Web.UI.Page
    {
        private static string _providerId;
        public class MyArr
        {
            public IList<string> MyDatas { set; get; }
        }
        public class MyData
        {
            public IList<string> data { get; set; }
            //public string _params { get; set; }
            //public bool success { get; set; }
        }


        protected void Page_Load(object sender, EventArgs e)
        {
            //TODO: get providerId
            _providerId = "4567qwerty";//Session["providerId"].ToString();
            string transaction_id;
            string test_id;
            string print_id;
            string patientname;
            string arr;
            if (Request.QueryString["testValue"] == "4" || Request.QueryString["testValue"] == "6")
            {
                if (Request.QueryString["api_print_id"] == "2")
                {
                    transaction_id = Request.QueryString["api_transaction_id"];
                    test_id = Request.QueryString["api_test_id"];
                    print_id = Request.QueryString["api_print_id"];
                    arr = PrintTest(transaction_id, print_id);
                    MyData NewArr = JsonConvert.DeserializeObject<MyData>(arr);

                    var w = NewArr.data;
                }
                else if(Request.QueryString["api_print_id"] == "1")
                    {
                    transaction_id = Request.QueryString["api_transaction_id"];
                    test_id = Request.QueryString["api_test_id"];
                    patientname = Request.QueryString["patientname"];
                    arr = CsvTest(transaction_id, test_id, patientname);
                    MyData NewArr = JsonConvert.DeserializeObject<MyData>(arr);

                    var w = NewArr.data;
                }

            }

        }
        [WebMethod]
        public static string GetClientTests(string api_provider_ext_id)
        {
            return APICalls.GetClientTests(api_provider_ext_id);
        }
        [WebMethod]
        public static string TestInfo(string api_provider_ext_id, string api_patient_ext_id)
        {
            return APICalls.TestInfo(api_provider_ext_id, api_patient_ext_id);
        }
        [WebMethod]
        public static string ReadTest(string api_transaction_id, string api_test_id)
        {
            return APICalls.ReadTest(api_transaction_id, api_test_id);
        }
        [WebMethod]
        public static string PrintTest(string api_transaction_id, string api_print_id)
        {
            return APICalls.PrintTest(api_transaction_id, api_print_id);
        }
        [WebMethod]
        public static string CsvTest(string api_transaction_id, string api_test_id, string patientname)
        {
            return APICalls.CsvTest(api_transaction_id, api_test_id, patientname);
        }
    }
}