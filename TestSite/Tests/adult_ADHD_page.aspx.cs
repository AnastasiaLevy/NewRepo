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
    public partial class adult_ADHD_Page : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            HttpContext.Current.Session["userId"] = "0256C12C-A598-47D5-9CE9-C25E1A5EE3E1";
            HttpContext.Current.Session["providerId"] = "2";
            //var unfinishedTest = DAL.DataMethods.Get3dPartyTest(false, Guid.Parse(HttpContext.Current.Session["userId"].ToString()), Convert.ToInt32(Session["userTestId"]));
            //if (unfinishedTest.Tables[0].Rows.Count > 0)
            //{
            //    relationship.Disabled = true;
            //    string rel = unfinishedTest.Tables[0].Rows[0]["relationship"].ToString();
            //    rel = rel.First().ToString().ToUpper() + rel.Substring(1);
            //    relationship.SelectedIndex = relationship.Items.IndexOf(relationship.Items.FindByText(rel));

            //    Button1.Value = "Continue...";
            //}

        }

        [WebMethod(EnableSession = true)]
        public static string GetParams(string testVal, string providerId, string paramString, string api_transaction_id, string api_patient_id, string sequence, string relationship)
        {
            var api_patient_ext_id = HttpContext.Current.Session["userId"].ToString();
            var registration = DataMethods.GetRegistarionDataByUser(api_patient_ext_id);
            var gender = registration.Rows[0]["gender"]?.ToString();
            var year = registration.Rows[0]["birthDate"] != DBNull.Value
                ? DateTime.Parse(registration.Rows[0]["birthDate"].ToString()).Year : 0;
            var month = registration.Rows[0]["birthDate"] != DBNull.Value
                ? DateTime.Parse(registration.Rows[0]["birthDate"].ToString()).Month : 0;
            var day = registration.Rows[0]["birthDate"] != DBNull.Value
                ? DateTime.Parse(registration.Rows[0]["birthDate"].ToString()).Day : 0;
            string fname = registration.Rows[0]["firstNAme"]?.ToString();
            string lname = registration.Rows[0]["lastName"]?.ToString();
            int api_age = 35;
            DAL.DataMethods.Update3dPartyTest(Convert.ToInt32(api_transaction_id), Convert.ToInt32(sequence), false, paramString, Guid.Parse(api_patient_ext_id), Convert.ToInt32(HttpContext.Current.Session["userTestId"]));
            return APICalls.GetTest(Convert.ToInt32(testVal), providerId, api_patient_ext_id, fname, lname, month, day, year, api_age, 11, relationship, gender, Convert.ToInt32(api_transaction_id), Convert.ToInt32(api_patient_id), paramString, Convert.ToInt32(sequence));
        }

        [WebMethod(EnableSession = true)]
        public static string StartTest(string relationship)
        {
            var providerId = HttpContext.Current.Session["providerId"]?.ToString();
            var api_patient_ext_id = HttpContext.Current.Session["userId"].ToString();
            var registration = DataMethods.GetRegistarionDataByUser(api_patient_ext_id);
            var gender = registration.Rows[0]["gender"]?.ToString();
            var year = registration.Rows[0]["birthDate"] != DBNull.Value
                ? DateTime.Parse(registration.Rows[0]["birthDate"].ToString()).Year : 0;
            var month = registration.Rows[0]["birthDate"] != DBNull.Value
                ? DateTime.Parse(registration.Rows[0]["birthDate"].ToString()).Month : 0;
            var day = registration.Rows[0]["birthDate"] != DBNull.Value
                ? DateTime.Parse(registration.Rows[0]["birthDate"].ToString()).Day : 0;
            string fname = registration.Rows[0]["firstNAme"]?.ToString();
            string lname = registration.Rows[0]["lastName"]?.ToString();
            int api_age = 35;
            var unfinishedTest = DAL.DataMethods.Get3dPartyTest(false, Guid.Parse(api_patient_ext_id), Convert.ToInt32(HttpContext.Current.Session["userTestId"]));
            if (unfinishedTest.Tables[0].Rows.Count == 0)
            {
                DAL.DataMethods.Insert3dPartyTest(Guid.Parse(api_patient_ext_id), 0, false, relationship, Convert.ToInt32(HttpContext.Current.Session["userTestId"]));
                return APICalls.GetTest(3, providerId, api_patient_ext_id, fname, lname, month, day, year, api_age, 11, relationship, gender);
            }
            var transactionId = unfinishedTest.Tables[0].Rows[0]["transactionId"] != DBNull.Value ? Convert.ToInt32(unfinishedTest.Tables[0].Rows[0]["transactionId"]) : (int?)null;
            var sequence = Convert.ToInt32(unfinishedTest.Tables[0].Rows[0]["sequence"]);
            var paramString = unfinishedTest.Tables[0].Rows[0]["paramString"] != DBNull.Value ? unfinishedTest.Tables[0].Rows[0]["paramString"].ToString() : null;
            return APICalls.GetTest(3, providerId, api_patient_ext_id, fname, lname, month, day, year, api_age, 11, relationship, gender, transactionId, null, paramString, sequence);
        }

        [WebMethod(EnableSession = true)]
        public static string SaveAndClose(string testVal, string providerId, string paramString, string api_transaction_id, string api_patient_id, string sequence, string relationship)
        {
            var api_patient_ext_id = HttpContext.Current.Session["userId"].ToString();
            var registration = DataMethods.GetRegistarionDataByUser(api_patient_ext_id);
            var gender = registration.Rows[0]["gender"]?.ToString();
            var year = registration.Rows[0]["birthDate"] != DBNull.Value
                ? DateTime.Parse(registration.Rows[0]["birthDate"].ToString()).Year : 0;
            var month = registration.Rows[0]["birthDate"] != DBNull.Value
                ? DateTime.Parse(registration.Rows[0]["birthDate"].ToString()).Month : 0;
            var day = registration.Rows[0]["birthDate"] != DBNull.Value
                ? DateTime.Parse(registration.Rows[0]["birthDate"].ToString()).Day : 0;
            string fname = registration.Rows[0]["firstNAme"]?.ToString();
            string lname = registration.Rows[0]["lastName"]?.ToString();
            DAL.DataMethods.Update3dPartyTest(Convert.ToInt32(api_transaction_id), Convert.ToInt32(sequence), false, paramString, Guid.Parse(api_patient_ext_id), Convert.ToInt32(HttpContext.Current.Session["userTestId"]));
            return "Ok";
        }
    }
}