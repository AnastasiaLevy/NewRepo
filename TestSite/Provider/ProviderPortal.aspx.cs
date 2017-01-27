using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using static TestSite.HelpClasses.Enums;

namespace TestSite.Provider
{
    public partial class ProviderPortal : System.Web.UI.Page
    {
     
        protected void Page_Load(object sender, EventArgs e)
        {
            pop.Style["display"] = "none";
    
            createUser.Visible = false;
            assignTest.Visible = false;
            if (User.Identity.IsAuthenticated)
            {
                login.Visible = false;
                Logout.Visible = true;
                //user.Text = User.Identity.Name;
                //email.Text = Membership.GetUser().Email;


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
            gvAllParticipants.Columns[7].Visible = true;

            gvAllParticipants.DataBind();
            gvAllParticipants.Columns[7].Visible = false;
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
            ViewState["tUserId"] = row.Cells[7].Text;

            Response.Redirect("~/Registration.aspx?userId="+ Convert.ToString(ViewState["tUserId"]) + "&provId=" + providerId);
        }

        protected void delete_Click(object sender, EventArgs e)
        {
            LinkButton btn = (LinkButton)sender;
            GridViewRow row = (GridViewRow)btn.NamingContainer;
            string providerId = ViewState["providerId"].ToString();
            ViewState["tUserId"] = row.Cells[7].Text;

            DAL.DataMethods.DeactivateParticipant(ViewState["tUserId"].ToString(), providerId);
            SetParticipantGrid(Convert.ToInt32(providerId));

        }

        protected void viewTest_Click(object sender, EventArgs e)
        {
            pop.Style["display"] = "inline";
            LinkButton btn = (LinkButton)sender;
            GridViewRow row = (GridViewRow)btn.NamingContainer;
            partName.Text = row.Cells[0].Text + " , " + row.Cells[1].Text;
            string userId = row.Cells[7].Text;//Convert.ToString(ViewState["tUserId"]);
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
            
        }

        protected void btnCancelUser_Click(object sender, EventArgs e)
        {
            createUser.Visible =false;
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
               createUser.Visible = true;
                lblError.Text = "New User was created";
                createUser.Visible = true;
                DAL.DataMethods.InsertProviderToTheUser(user.ProviderUserKey.ToString(), Convert.ToInt32(ViewState["providerId"]), userName);
                SetProviderTestsGrid(Convert.ToInt32(ViewState["providerId"]));
            }
            catch (Exception ex)
            {
                lblError.Text = ex.Message;
                //ViewState["CreatingUser"] = true;
                createUser.Visible = true;
            }
        }

        protected void btnAddNewPart_Click(object sender, EventArgs e)
        {
           createUser.Visible = true;
        }

        protected void addUserTest_Click(object sender, EventArgs e)
        {

        }

        protected void btnAddUserTest_Click(object sender, EventArgs e)
        {
            assignTest.Visible = true;
            int providerId = Convert.ToInt32(ViewState["providerId"]);
            DataTable dt = DAL.DataMethods.GetAllProviderParticipants(providerId);

            ddlAllParticipants.Items.Clear();
            foreach (DataRow dr in dt.Rows)
            {
                string display = dr["Last Name"].ToString() + " , " + dr["First Name"].ToString();
                if (String.IsNullOrEmpty(dr["Last Name"].ToString()))
                    display = "(" + dr["userName"].ToString() + ")";
                ddlAllParticipants.Items.Add(new ListItem(display, dr["userId"].ToString()));
            }
           SetDllProviderTests(providerId);

        }

        private void SetDllProviderTests(int providerId)
        {
            ddlProvTests.Items.Clear();
            DataTable dt = DAL.DataMethods.GetAllProviderTests(providerId);
            foreach (DataRow dr in dt.Rows)
            {
                string display = dr["Name"].ToString() + "(amount:" + dr["Left"].ToString() + ")";
                ddlProvTests.Items.Add(new ListItem(display, dr["Id"].ToString()));
            }
        }

        protected void btnPartAddTest_Click1(object sender, EventArgs e)
        {
            string userId = ddlAllParticipants.SelectedValue;
            string provTestId =ddlProvTests.SelectedValue;

            DAL.DataMethods.InsertTestToParticipant(Convert.ToInt32(provTestId), userId);
            int providerId = Convert.ToInt32(ViewState["providerId"]);
            SetDllProviderTests(providerId);
            SetProviderTestsGrid(providerId);
            //TODO: Display success message;


        }

        protected void btnCloseAddTest_Click(object sender, EventArgs e)
        {
            assignTest.Visible = false;
        }
        

        //<%----%>
    }
} 