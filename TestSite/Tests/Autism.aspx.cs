using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TestSite.Tests
{
    public partial class Autism : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void report_Click(object sender, EventArgs e)
        {
            Response.Redirect("../ReportsSamples/CASS_Sample.html");
        }
    }
}