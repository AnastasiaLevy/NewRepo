using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;
using TestSite.DAL;
using Newtonsoft.Json;
using System.Text;
using System.Text.RegularExpressions;

namespace TestSite.Results
{
    public partial class adult_ADHD_Result : System.Web.UI.Page
    {
        private static string _providerId;


        protected void Page_Load(object sender, EventArgs e)
        {
            //TODO: get providerId
            _providerId = "4567qwerty";//Session["providerId"].ToString();
            string transaction_id = Request.QueryString["api_transaction_id"]??"";
            string test_id = Request.QueryString["api_test_id"]??"";
            string showResults = Request.QueryString["showResults"]??"false";
            string print_id;
            string patientname;
            string arr;
            if (bool.Parse(showResults))
            {
                string response = APICalls.ReadTest(transaction_id, test_id);
                dynamic result = JsonConvert.DeserializeObject(response);
                testText.InnerHtml = result.data[0];
            }
            if (Request.QueryString["testValue"] == "4" || Request.QueryString["testValue"] == "6")
            {
                if (Request.QueryString["api_print_id"] == "2")
                {
                    transaction_id = Request.QueryString["api_transaction_id"];
                    test_id = Request.QueryString["api_test_id"];
                    print_id = Request.QueryString["api_print_id"];
                    arr = PrintTest(transaction_id, print_id);
                }
                else if (Request.QueryString["api_print_id"] == "1")
                {
                    transaction_id = Request.QueryString["api_transaction_id"];
                    test_id = Request.QueryString["api_test_id"];
                    patientname = Request.QueryString["patientname"];

                    arr = CsvTest(transaction_id, test_id, patientname);
                    dynamic responses = JsonConvert.DeserializeObject(arr);
                    Export(test_id != null ? Convert.ToInt32(test_id) : 0, CreateCSVString(responses.data[0].ToString()));
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

        private string CreateCSVString(string responses)
        {
            StringBuilder sb = new StringBuilder();
            sb.Append(responses);
            sb.Replace("\\", "");

            var reg = new Regex("\".*?\"");
            var matches = reg.Matches(responses);
            sb.Replace("\"", "");
            foreach (var item in matches)
            {
                //Tomorrow will be something smarter :(
                //var test = item.ToString().Replace("\"", "").Replace("\\", "");
                //var quotedAnswer = test.Replace(",", "\",\"");
                //if (!string.IsNullOrEmpty(test)) sb.Replace(test, quotedAnswer);
            }
            sb.Replace("\\r\\n", "")
                .Replace("\\n", Environment.NewLine)
                .Replace("[", "")
                .Replace("]", "");

            return sb.ToString();
        }

        private void Export(int tId, string csvstring)
        {
            try
            {
                string fileName = "results" + "_" + DateTime.Now.ToShortDateString() + "_" + tId + ".csv";
                string filePath = Environment.GetFolderPath(Environment.SpecialFolder.MyDocuments);
                //File.WriteAllText(filePath + "\\" + fileName, myfile);
                string attachment = "attachment; filename=" + fileName;
                HttpContext.Current.Response.Clear();
                HttpContext.Current.Response.ClearHeaders();
                HttpContext.Current.Response.ClearContent();
                HttpContext.Current.Response.AddHeader("content-disposition", attachment);
                HttpContext.Current.Response.ContentType = "text/csv";
                HttpContext.Current.Response.AddHeader("Pragma", "public");
                HttpContext.Current.Response.Write(csvstring);
                HttpContext.Current.Response.Flush();
                HttpContext.Current.Response.End();
            }
            catch (Exception ex)
            {

            }
        }
    }
}