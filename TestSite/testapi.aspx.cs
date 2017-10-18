using System;
using System.Collections.Generic;
using System.Data;
using System.Diagnostics;
using System.Linq;
using System.Web;
using System.Web.Script.Services;
using System.Web.Security;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;
using TestSite.DAL;
using TestSite.HelpClasses;
using System.Globalization;
using TestSite.BL.Models;
using TestSite.BL.Services;
using Newtonsoft.Json;

namespace TestSite
{
    public class TestApi
    {
        public string data { get; set; }
       // public object param
       //     {
        //        public string controller { get; set; }
       //         public string action { get; set; }
        //        public string TestValue { get; set; }
        //    }
    public string success { get; set; }
    }

    public partial class testapi : System.Web.UI.Page
    {
        protected PlaceHolder contentPH;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        //protected void Get_test(object sender, EventArgs e)
        //{
        //    string result;

        //    var res1 = new TestApi();
        //    result = APICalls.GetTest(1);

        //    var res2 = JsonConvert.DeserializeObject(result);


        //    form1.InnerHtml = res2.ToString();//1.data.ToString();
        //    //red1 = result;
        //    //Label1.Text = "Ok!";
        //}
    }
}