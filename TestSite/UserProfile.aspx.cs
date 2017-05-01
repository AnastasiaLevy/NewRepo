﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using TestSite.DAL;
using TestSite.HelpClasses;

namespace TestSite
{
    public partial class UserProfile : System.Web.UI.Page
    {
        public string ageValue;
        private string userId;
        protected void Page_Load(object sender, EventArgs e)
        {
            userId = Membership.GetUser(User.Identity.Name).ProviderUserKey.ToString();
         
          
                if (CommonMethods.UserIsProvider(userId))
                    Response.Redirect("~/Provider/ProviderPortal.aspx");

            

            if (User.Identity.IsAuthenticated)
            {
                login.Visible = false;
                Logout.Visible = true;
                user.Text = User.Identity.Name;
                email.Text = Membership.GetUser().Email;
                userId = Membership.GetUser(User.Identity.Name).ProviderUserKey.ToString();
                int uAge = GetUserAge();
                age.Text = uAge > 0 ? uAge.ToString(): "Not entered";
                ageValue = age.Text;
                //bday.Text = GetUserBithdate();
                LoadPaidTests();
                LoadFinishedTests();
                setUpUserCode.Visible = false;
            }
            else
            {
                Response.Redirect("~/ManePage.aspx");
                login.Visible = true;
                Logout.Visible = false;
            }
     
        }

        private bool UserIsProvider()
        {
            int? providerId = DAL.DataMethods.GetProviderId(userId);
            return providerId > 0;
        }

        private void LoadFinishedTests()
        {
            gvFinishedTests.DataSource = DAL.DataMethods.GetAllUserFinishedTests(Membership.GetUser(User.Identity.Name).ProviderUserKey.ToString());
            gvFinishedTests.Columns[3].Visible = true;
            gvFinishedTests.Columns[4].Visible = true;
            gvFinishedTests.DataBind();
            gvFinishedTests.Columns[3].Visible = false;
            gvFinishedTests.Columns[4].Visible = false;
            
        }

        private void LoadPaidTests()
        {

            gvAvailableTests.DataSource = DAL.DataMethods.GetAllUserTests(Membership.GetUser(User.Identity.Name).ProviderUserKey.ToString());
            gvAvailableTests.Columns[3].Visible = true;
            gvAvailableTests.Columns[4].Visible = true;
            gvAvailableTests.Columns[5].Visible = true;
            gvAvailableTests.DataBind();
            gvAvailableTests.Columns[3].Visible = false;
            gvAvailableTests.Columns[4].Visible = false;
            gvAvailableTests.Columns[5].Visible = false;


        }

        private int GetUserAge()
        {
            return DAL.DataMethods.GetUserAge(Membership.GetUser(User.Identity.Name).ProviderUserKey.ToString());
        }



        protected void logOut_Click(object sender, EventArgs e)
        {
            FormsAuthentication.SignOut();
            Response.Redirect("~/MainPage.aspx");

        }

        protected void Redirect_Click(object sender, EventArgs e)
        {
            LinkButton btn = (LinkButton)sender;
            GridViewRow row = (GridViewRow)btn.NamingContainer;
            string str = row.Cells[3].Text;
            Session["userTestId"] = row.Cells[4].Text;
            if (!String.IsNullOrEmpty(row.Cells[5].Text))
            {
                Session["modifiedId"] = row.Cells[5].Text;
            }

            OpenTestPage(str);
        }


        private void OpenTestPage(string str)
        {
         
            string location = Enums.TestsMap(str);
            Response.Redirect(location);

        }

        protected void showResults_Click(object sender, EventArgs e)
        {
            LinkButton btn = (LinkButton)sender;
            GridViewRow row = (GridViewRow)btn.NamingContainer;
            string tId = row.Cells[4].Text;
            string userId = Membership.GetUser(User.Identity.Name).ProviderUserKey.ToString();
            string test = row.Cells[3].Text;
            string url = "ResultsPage.aspx?userId=" + userId + "&tid=" + tId + "&test="+ test + "&age=" + ageValue;
          
            Response.Redirect(url);
        }


        protected void btnCodeSave_Click(object sender, EventArgs e)
        {
            string code = txtUserCode.Text;
            if (code.Length > 0)
            {
                try
                {
                    DAL.DataMethods.AddUserToProvider(userId, code);
                    lblError.Text = "Provider was added";
                    setUpUserCode.Visible = true;
                }
                catch(Exception ex)
                {
                    DataMethods.InsertErrorMessage(ex.ToString(), userId, "UserProfile");
                    lblError.Text = "There was an error adding a provider.";
                }
               
            }
            else
                lblError.Text = "User Code is not valid";

        }

        protected void btnCodeClose_Click(object sender, EventArgs e)
        {
            setUpUserCode.Visible = false;
            lblError.Text = "";
        }

        protected void btbAddProviderCode_Click(object sender, EventArgs e)
        {
            setUpUserCode.Visible = true;
            txtUserCode.Text = DAL.DataMethods.GetUserProviderCode(userId);

        }
    }
}