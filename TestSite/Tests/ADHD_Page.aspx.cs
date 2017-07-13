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
            //api_patient_ext_id = ???;
            //Change Enum

            //get month of birthday;
            _month = 12;

            //get day of birthday
            _day=30;
           
            //get year of birthday
            _year=1980;
        }

        [WebMethod]
        public static string GetParams(string testVal, string paramString, string api_transaction_id, string api_patient_ext_id, string api_patient_id, string sequence, string fname, string lname,  string relationship, string gender)
        {
            return APICalls.GetTest(Convert.ToInt32(testVal), _providerId, api_patient_ext_id, fname, lname,_month, _day, _year, 9, relationship, gender, Convert.ToInt32(api_transaction_id), Convert.ToInt32(api_patient_id), paramString, Convert.ToInt32(sequence));
        }

        [WebMethod]
        public static string StartTest(string api_patient_ext_id, string fname, string lname, string relationship, string gender)
        {
            return APICalls.GetTest(3, _providerId, api_patient_ext_id, fname, lname,_month, _day,_year, 9,relationship, gender);
        }
    }
}