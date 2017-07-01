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
        string _test = "t";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                PopulateDropDown();
            }
        }

        private void PopulateDropDown()
        {
            ddlRelationships.Items.Clear();
            ddlRelationships.Items.Add( new ListItem("0", "self"));
            ddlRelationships.Items.Add(new ListItem("1", "Mother"));
            ddlRelationships.Items.Add(new ListItem("2", "Father"));
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            
            var result = APICalls.GetTest(3, "685", 4, "self");
            JavaScriptSerializer serializer = new JavaScriptSerializer();
            dynamic item = serializer.Deserialize<object>(result);
            var name = item["data"];
            var param = item["params"];
            questHtml.Text = name[0].ToString();
        }

        [WebMethod]
        public static void GetParams (string paramString, string api_transaction_id, string api_patient_id)
        {
  

        }
        [WebMethod]
        public static string Call1()
        {
            return APICalls.GetTest(3, "685", 4, "self");
           
        //JavaScriptSerializer serializer = new JavaScriptSerializer();
        //dynamic item = serializer.Deserialize<object>(result);
        //var name = item["data"];
        //var param = item["params"];
        //questHtml.Text = name[0].ToString();
    }

}

    
}