using RestSharp;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace TestSite.DAL
{
    public static class APICalls
    {
        private static RestClient _client;

        static APICalls()
        {
            //_client = new RestClient("http://test4.loc/api/");
            _client = new RestClient("http://178.62.94.173/api/");
        }

        public static string BuyTest(string ProviderId, string test_name, int amnt)
        {
            var request = new RestRequest("", Method.POST);

            string TestNameBuy = "api_" + test_name + "_buy";

            request.AddParameter("controller", "Listoftestsapi");
            request.AddParameter("action", "buy");
            request.AddParameter(TestNameBuy, amnt);
            request.AddParameter(" api_provider_ext_id", ProviderId);

            var response = _client.Execute(request);

            return response.ToString();
        }

        //work with test
        //TestValue- step in getting test
        /// <summary>
        ///
        /// </summary>
        /// <param name="TestValue">Step</param>
        /// <param name="ProviderId">Prov_id</param>
        /// <param name="test_id">Id of the test</param>
        /// <param name="relationship"></param>
        /// <param name="api_transaction_id">Connection between test, provider, and user</param>
        /// <param name="api_patient_id"></param>
        /// <param name="api_patient_ext_id"></param>
        /// <returns></returns>
        public static string GetTest(int TestValue, string ProviderId, string api_patient_ext_id, string fname, string lname, int month, int day, int year, int test_id, string relationship,
           string gender, int? api_transaction_id = null, int? api_patient_id=null, string q_str = null, int? sequence=null)
        {

            //private string q_str = '';


            var request = new RestRequest("", Method.POST);

            request.AddParameter("controller", "Testapi");
            request.AddParameter("action", "read");
            request.AddParameter("testValue", TestValue);
            request.AddParameter("api_provider_ext_id", ProviderId);
            //request.AddParameter(" api_researcher_id", api_researcher_id);
            request.AddParameter("api_test_id", test_id);
            request.AddParameter(" api_fname", fname);
            request.AddParameter(" api_lname", lname);
            request.AddParameter(" api_month", month);
            request.AddParameter(" api_day", day);
            request.AddParameter(" api_year", year);
            request.AddParameter(" api_gender", gender);
            //request.AddParameter(" cotwin", cotwin);
            //request.AddParameter(" api_twin_id", api_twin_id);
            request.AddParameter("api_relationship", relationship);
            request.AddParameter("api_q_str", q_str);
            request.AddParameter("api_sequence", sequence);
            request.AddParameter("api_transaction_id", api_transaction_id);
            request.AddParameter("api_patient_id", api_patient_id);
            //request.AddParameter(" api_status", api_status);
            request.AddParameter("api_patient_ext_id", api_patient_ext_id);

            var response = _client.Execute(request);

            return response.Content;

        }
        //work with result
        //TestValue - step in getting results
        public static string GetClientTests(string ProviderId)
        {

            var request = new RestRequest("", Method.POST);

            request.AddParameter("controller", "Resultsapi");
            request.AddParameter("action", "getclienttests");
            request.AddParameter("testValue", 1);
            request.AddParameter("api_provider_ext_id", ProviderId);

            var response = _client.Execute(request);

            return response.Content;
        }

        public static string TestInfo(string api_provider_ext_id, string api_patient_ext_id)
        {

            var request = new RestRequest("", Method.POST);

            request.AddParameter("controller", "Resultsapi");
            request.AddParameter("action", "testinfo");
            request.AddParameter("testValue", 2);
            request.AddParameter("api_provider_ext_id", api_provider_ext_id);
            request.AddParameter("api_patient_ext_id", api_patient_ext_id);
            var response = _client.Execute(request);

            return response.Content;
        }

        public static string ReadTest(string api_transaction_id, string api_test_id)
        {

            var request = new RestRequest("", Method.POST);

            request.AddParameter("controller", "Resultsapi");
            request.AddParameter("action", "readtest");
            request.AddParameter("testValue", 3);
            request.AddParameter("api_transaction_id", api_transaction_id);
            request.AddParameter("api_test_id", api_test_id);
            var response = _client.Execute(request);

            return response.Content;
        }

        public static string PrintTest(string api_transaction_id, string api_print_id)
        {

            var request = new RestRequest("", Method.POST);

            request.AddParameter("controller", "Resultsapi");
            request.AddParameter("action", "print_test");
            request.AddParameter("testValue", 4);
            request.AddParameter("api_transaction_id", api_transaction_id);
            request.AddParameter("api_print_id", api_print_id);
            var response = _client.Execute(request);

            return response.Content;
        }
        public static string CsvTest(string api_transaction_id, string api_test_id, string patientname)
        {

            var request = new RestRequest("", Method.POST);

            request.AddParameter("controller", "Resultsapi");
            request.AddParameter("action", "csv_test");
            request.AddParameter("testValue", 4);
            request.AddParameter("api_transaction_id", api_transaction_id);
            request.AddParameter("api_test_id", api_test_id);
            request.AddParameter("patientname", patientname);
            var response = _client.Execute(request);

            return response.Content;
        }
    }
}