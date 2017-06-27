using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using TestSite.DAL;

namespace TestSite.Tests
{
    public partial class ADHD_Page : System.Web.UI.Page
    {
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
            APICalls.GetTest(3, "685", 4, "self");
            var res2 = JsonConvert.DeserializeObject(APICalls.GetTest(3, "685", 4, "self"));
            questHtml.Text = res2.ToString();
        }
    }
}