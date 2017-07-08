using RestSharp;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace TestSite.DAL
{
    public class APICalls
    {   
        //buying of test
        //example:
        // BuyTest(2,"CPNI",1);
        public static string BuyTest(string ProviderId, string test_name, int amnt)
        {
            //var client = new RestClient("http://test4.loc/api/");
            var client = new RestClient("http://178.62.94.173/api/");
            var request = new RestRequest("", Method.POST);

            string TestNameBuy = "api_" + test_name + "_buy";

            request.AddParameter("controller", "Listoftestsapi");
            request.AddParameter("action", "buy");
            request.AddParameter(TestNameBuy, amnt);
            request.AddParameter(" api_provider_ext_id", ProviderId);

            var response = client.Execute(request);

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
        /// <returns></returns>
        public static string GetTest(int TestValue, string ProviderId, int test_id, string relationship,
            int? api_transaction_id = null, int? api_patient_id = null)
        {
            var client = new RestClient("http://test4.loc/api/");
            //var client = new RestClient("http://178.62.94.173/api/");

            //private string q_str = '';


            var request = new RestRequest("", Method.POST);

            request.AddParameter("controller", "Testapi");
            request.AddParameter("action", "read");
            request.AddParameter("testValue", TestValue);
            request.AddParameter("api_provider_id", ProviderId);
            //request.AddParameter(" api_researcher_id", api_researcher_id);
            request.AddParameter("api_test_id", test_id);
            //request.AddParameter(" api_fname", fname);
            //request.AddParameter(" api_lname", lname);
            //request.AddParameter(" api_month", month);
            //request.AddParameter(" api_day", day);
            //request.AddParameter(" year", year);
            //request.AddParameter(" gender", gender);
            //request.AddParameter(" cotwin", cotwin);
            //request.AddParameter(" api_twin_id", api_twin_id);
            request.AddParameter("api_relationship", relationship);
            //request.AddParameter(" api_q_str", q_str);
            //request.AddParameter(" api_sequence", sequence);
            request.AddParameter("api_transaction_id", api_transaction_id);
            request.AddParameter("api_patient_id", api_patient_id);
            //request.AddParameter(" api_status", api_status);

            var response = client.Execute(request);

            return response.Content;

        }

        //getting of tests for provider
        //example:
        // GetClientTests(1,"2");
        public static string GetClientTests(int TestValue, string ProviderId)
        {
            var client = new RestClient("http://test4.loc/api/");
            //var client = new RestClient("http://178.62.94.173/api/");

            var request = new RestRequest("", Method.POST);

            request.AddParameter("controller", "Resultsapi");
            request.AddParameter("action", "getclienttests");
            request.AddParameter("testValue", TestValue);
            request.AddParameter("api_provider_ext_id", ProviderId);

            var response = client.Execute(request);

            return response.Content;
        }

        //getting test information
        //example:
        //GettestInfo(2,"764","765");
        public static string GetTestInfo(int TestValue, int ProviderId, int api_patient_id)
        {
            var client = new RestClient("http://test4.loc/api/");
            //var client = new RestClient("http://178.62.94.173/api/");

            var request = new RestRequest("", Method.POST);

            request.AddParameter("controller", "Resultsapi");
            request.AddParameter("action", "testinfo");
            request.AddParameter("testValue", TestValue);
            request.AddParameter("api_provider_id", ProviderId);
            request.AddParameter("api_patient_id", api_patient_id);

            var response = client.Execute(request);

            return response.Content;
        }

        //reading test information
        //example:
        //ReadTest(3,733,7);
        public static string ReadTest(int TestValue, int api_transaction_id, int api_test_id)
        {
            var client = new RestClient("http://test4.loc/api/");
            //var client = new RestClient("http://178.62.94.173/api/");

            var request = new RestRequest("", Method.POST);

            request.AddParameter("controller", "Resultsapi");
            request.AddParameter("action", "readtest");
            request.AddParameter("testValue", TestValue);
            request.AddParameter("api_transaction_id", api_transaction_id);
            request.AddParameter("api_test_id", api_test_id);

            var response = client.Execute(request);

            return response.Content;
        }

        //print of test information
        //example:
        //PrintTest(4,733,1);
        public static string PrintTest(int TestValue, int api_transaction_id, int api_print_id)
        {
            var client = new RestClient("http://test4.loc/api/");
            //var client = new RestClient("http://178.62.94.173/api/");

            var request = new RestRequest("", Method.POST);

            request.AddParameter("controller", "Resultsapi");
            request.AddParameter("action", "print_test");
            request.AddParameter("testValue", TestValue);
            request.AddParameter("api_transaction_id", api_transaction_id);
            request.AddParameter("api_print_id", api_print_id);

            var response = client.Execute(request);

            return response.Content;
        }

        //download of csv of test information
        //example:
        //CsvTest(6,733,1,"TestFirstName1 TestLastName1");
        public static string CsvTest(int TestValue, int api_transaction_id, int api_print_id, string patientname)
        {
            var client = new RestClient("http://test4.loc/api/");
            //var client = new RestClient("http://178.62.94.173/api/");

            var request = new RestRequest("", Method.POST);

            request.AddParameter("controller", "Resultsapi");
            request.AddParameter("action", "print_test");
            request.AddParameter("testValue", TestValue);
            request.AddParameter("api_transaction_id", api_transaction_id);
            request.AddParameter("api_print_id", api_print_id);
            request.AddParameter("patientname", patientname);

            var response = client.Execute(request);

            return response.Content;
        }
    }
}