using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TestSite.Create
{
    public partial class LondonModify : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack) { 
            ddlPractice.DataSource = Enumerable.Range(1, 3);
            ddlPractice.DataBind();

            ddlNumberGames.DataSource = Enumerable.Range(1, 13);
            ddlNumberGames.DataBind();

            ddlConuntFromRound.DataSource = Enumerable.Range(1,3);
            ddlConuntFromRound.DataBind();

            }
        }

    }
}