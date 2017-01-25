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
            //if (ViewState["CreatingUser"]!= null)
            //{
            //    pProviderTools.Visible = true;
            //}
            //else
                pProviderTools.Visible = false;
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
            int? providerId = DAL.DataMethods.GetProviderId(userId);

            ViewState["providerId"] = providerId;
            SetParticipantGrid(providerId);
            SetProviderTestsGrid(providerId);

        }

        private void SetProviderTestsGrid(int? providerId)
        {
            gvProviderTests.DataSource = DAL.DataMethods.GetAllProviderTests(providerId);
            gvProviderTests.DataBind();
        }

        private void SetParticipantGrid(int? partId)
        {
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
            LinkButton btn = (LinkButton)sender;
            GridViewRow row = (GridViewRow)btn.NamingContainer;
            string providerId = ViewState["providerId"].ToString();
            ViewState["tUserId"] = row.Cells[6].Text;

            DAL.DataMethods.DeactivateParticipant(ViewState["tUserId"].ToString(), providerId);
            SetParticipantGrid(Convert.ToInt32(providerId));

        }

        protected void viewTest_Click(object sender, EventArgs e)
        {
            pop.Style["display"] = "inline";
            LinkButton btn = (LinkButton)sender;
            GridViewRow row = (GridViewRow)btn.NamingContainer;
            partName.Text = row.Cells[0].Text + " , " + row.Cells[1].Text;
            string userId = row.Cells[6].Text;//Convert.ToString(ViewState["tUserId"]);
            ViewState["tUserId"] = userId;
            SetUserTestsGrig(userId);
            string age = row.Cells[2].Text;

            ViewState["tUserAge"] = age;

        }

        private void SetUserTestsGrig(string userId)
        {
            gvTestPerUser.DataSource = DAL.DataMethods.GetAllUserTestsP(userId);

            gvTestPerUser.Columns[5].Visible = true;

            gvTestPerUser.DataBind();
            gvTestPerUser.Columns[5].Visible = false;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            pop.Style["display"] = "none";
           // Response.Redirect("ProviderPortal.aspx/#participant Data");
           //TODO:Fix redirect


        }

        protected void lbViewTestResults_Click(object sender, EventArgs e)
        {
            LinkButton btn = (LinkButton)sender;
            GridViewRow row = (GridViewRow)btn.NamingContainer;
            string tId = row.Cells[5].Text;
            string userId = Convert.ToString(ViewState["tUserId"]);
            string age = Convert.ToString(ViewState["tUserAge"]);
            string test = row.Cells[0].Text;
            string url = "~/ResultsPage.aspx?userId=" + userId + "&tid=" + tId + "&test=" + test + "&age=" + age;
            Response.Redirect(url);
        }


        protected void lbRemoveTestFromUserList_Click(object sender, EventArgs e)
        {
            LinkButton btn = (LinkButton)sender;
            GridViewRow row = (GridViewRow)btn.NamingContainer;
            string tId = row.Cells[5].Text;
            string userId = Convert.ToString(ViewState["tUserId"]);

            DAL.DataMethods.RemoveTestFromUserList(userId, tId);
            SetUserTestsGrig(userId);
        }

        protected void btnAddParticipant_Click(object sender, EventArgs e)
        {

        }

        protected void updateProfile_Click(object sender, EventArgs e)
        {
            pProviderTools.Visible = true;
        }

        protected void btnCancelUser_Click(object sender, EventArgs e)
        {
            pProviderTools.Visible =false;
            txtUserEmail.Text = "";
            txtNewUser.Text = "";
            txtPassword.Text = "";
        }

        protected void btnCreateNewUser_Click(object sender, EventArgs e)
        {
            string email = txtUserEmail.Text;
            string userName = txtNewUser.Text;
            string password = txtPassword.Text;
            try
            {
                MembershipUser user = Membership.CreateUser(userName, password, email);
                ViewState.Remove("CreatingUser");
                pProviderTools.Visible = true;
                lblError.Text = "New User was created";
                pProviderTools.Visible = true;
                DAL.DataMethods.InsertProviderToTheUser(user.ProviderUserKey, ViewState["providerId"].ToString());
            }
            catch (Exception ex)
            {
                lblError.Text = ex.Message;
                //ViewState["CreatingUser"] = true;
                pProviderTools.Visible = true;
            }
        }
    }
} 