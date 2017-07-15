using Newtonsoft.Json;
using Newtonsoft.Json.Linq;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Script.Serialization;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;
using TestSite.DAL;

namespace TestSite.Tests
{
    public partial class ADHD_Page : System.Web.UI.Page
    {
        private static string _providerId;
        private static string api_patient_ext_id;
        private static string gender;
        private static int _month;
        private static int _day;
        private static int _year;
        protected void Page_Load(object sender, EventArgs e)
        {
            //TODO: get providerId
            _providerId = "4567qwerty";//Session["providerId"].ToString();
            //TODO get patient id
            api_patient_ext_id = "0256C12C-A598-47D5-9CE9-C25E1A5EE3E1";
            //Change Enum

            //get month of birthday;
            _month = 12;

            //get day of birthday
            _day = 30;

            //get year of birthday
            _year = 1980;
        }

        [WebMethod]
        public static string GetParams(string testVal, string paramString, string api_transaction_id, string api_patient_id, string sequence, string fname, string lname, string relationship, string gender)
        {
            DAL.DataMethods.Update3dPartyTest(Convert.ToInt32(api_transaction_id), Convert.ToInt32(sequence), false, paramString, Guid.Parse(api_patient_ext_id));
            return APICalls.GetTest(Convert.ToInt32(testVal), _providerId, api_patient_ext_id, fname, lname, _month, _day, _year, 9, relationship, gender, Convert.ToInt32(api_transaction_id), Convert.ToInt32(api_patient_id), paramString, Convert.ToInt32(sequence));
        }

        [WebMethod]
        public static string StartTest(string fname, string lname, string relationship, string gender)
        {
            var unfinishedTest = DAL.DataMethods.Get3dPartyTest(false, Guid.Parse(api_patient_ext_id));
            if (unfinishedTest.Tables[0].Rows.Count == 0)
            {
                DAL.DataMethods.Insert3dPartyTest(Guid.Parse(api_patient_ext_id), 0, false);
                return APICalls.GetTest(3, _providerId, api_patient_ext_id, fname, lname, _month, _day, _year, 9, relationship, gender);
            }
            var transactionId = unfinishedTest.Tables[0].Rows[0]["transactionId"] != DBNull.Value ? Convert.ToInt32(unfinishedTest.Tables[0].Rows[0]["transactionId"]) : (int?)null;
            var sequence = Convert.ToInt32(unfinishedTest.Tables[0].Rows[0]["sequence"]);
            var paramString = unfinishedTest.Tables[0].Rows[0]["paramString"] != DBNull.Value ? unfinishedTest.Tables[0].Rows[0]["paramString"].ToString() : null;
            return APICalls.GetTest(3, _providerId, api_patient_ext_id, fname, lname, _month, _day, _year, 9, relationship, gender, transactionId, null, paramString, sequence);
        }
    }
}