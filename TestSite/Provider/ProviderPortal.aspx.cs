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
     
        protected void Page_Load(object sender, EventArgs e)
        {
            pop.Style["display"] = "none";
          
                if (User.Identity.IsAuthenticated)
                {
                    login.Visible = false;
                    Logout.Visible = true;
                    user.Text = User.Identity.Name;
                    email.Text = Membership.GetUser().Email;


                }
                else
                {
                    Response.Redirect("~/ManePage.aspx");
                    login.Visible = true;
                    Logout.Visible = false;
                }


                string userId = Membership.GetUser(User.Identity.Name).ProviderUserKey.ToString();
                int? partId = DAL.DataMethods.GetProviderId(userId);
            
                ViewState["providerId"] = partId;
                gvAllParticipants.DataSource = DAL.DataMethods.GetAllProviderParticipants(partId);
                gvAllParticipants.Columns[6].Visible = true;

                gvAllParticipants.DataBind();
                gvAllParticipants.Columns[6].Visible = false;

         
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
            string providerId = ViewState["providerId"].ToString();
            ViewState["tUserId"] = row.Cells[6].Text;

            Response.Redirect("~/Registration.aspx?userId="+ Convert.ToString(ViewState["tUserId"]) + "&provId=" + providerId);
        }

        protected void delete_Click(object sender, EventArgs e)
        {

        }

        protected void viewTest_Click(object sender, EventArgs e)
        {
            pop.Style["display"] = "inline";
            LinkButton btn = (LinkButton)sender;
            GridViewRow row = (GridViewRow)btn.NamingContainer;
            string userId = row.Cells[6].Text;//Convert.ToString(ViewState["tUserId"]);

            ViewState["tUserId"] = userId;
            gvTestPerUser.DataSource = DAL.DataMethods.GetAllUserTestsP(userId);

            gvTestPerUser.Columns[5].Visible = true;

            gvTestPerUser.DataBind();
            gvTestPerUser.Columns[5].Visible = false;
            string age = row.Cells[2].Text;
           
            ViewState["tUserAge"] = age;

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            pop.Style["display"] = "none";


        }

        protected void lbViewTestResults_Click(object sender, EventArgs e)
        {
            LinkButton btn = (LinkButton)sender;
            GridViewRow row = (GridViewRow)btn.NamingContainer;
            string tId = row.Cells[5].Text;
            string userId = Convert.ToString(ViewState["tUserId"]);
            string age = Convert.ToString(ViewState["tUserAge"]);
            string test = row.Cells[3].Text;
            string url = "~/ResultsPage.aspx?userId=" + userId + "&tid=" + tId + "&test=" + test + "&age=" + age;
            Response.Redirect(url);
        }


        protected void lbRemoveTestFromUserList_Click(object sender, EventArgs e)
        {

        }
    }
}