using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TestSite.Provider
{
    public partial class ProviderPortal : System.Web.UI.Page
    {
        int? _providerId = 0;
        protected void Page_Load(object sender, EventArgs e)
        {
            string userId = Membership.GetUser(User.Identity.Name).ProviderUserKey.ToString();
            int? partId = DAL.DataMethods.GetProviderId(userId);
            _providerId = partId;
            gvAllParticipants.DataSource = DAL.DataMethods.GetAllProviderParticipants(partId);
            gvAllParticipants.Columns[5].Visible = true;
            gvAllParticipants.DataBind();
            gvAllParticipants.Columns[5].Visible = false;
          

        }
        protected void logOut_Click(object sender, EventArgs e)
        {
            FormsAuthentication.SignOut();
            Response.Redirect("~/MainPage.aspx");

        }

        protected void view_Click(object sender, EventArgs e)
        {
            LinkButton btn = (LinkButton)sender;
            GridViewRow row = (GridViewRow)btn.NamingContainer;
            string str = row.Cells[5].Text;
            Response.Redirect("~/Registration.aspx?userId="+ str+ "&provId=" + _providerId);
        }

        protected void delete_Click(object sender, EventArgs e)
        {

        }
    }
}