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
      
        protected void Page_Load(object sender, EventArgs e)
        {
          //TODO: get providerId
          //Change Enum
        }

        [WebMethod]
        public static string GetParams (string testVal, string paramString, string api_transaction_id, string api_patient_id, string sequence)
        {
            return APICalls.GetTest(Convert.ToInt32(testVal), "685", 4, "self", Convert.ToInt32(api_transaction_id) ,Convert.ToInt32(api_patient_id), paramString, Convert.ToInt32(sequence));

        }
        [WebMethod]
        public static string StartTest()
        {
            return APICalls.GetTest(3, "685", 4, "self");
    }

}

    
}