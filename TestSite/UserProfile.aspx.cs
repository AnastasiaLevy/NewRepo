using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using TestSite.HelpClasses;

namespace TestSite
{
    public partial class UserProfile : System.Web.UI.Page
    {
        public string ageValue;
        protected void Page_Load(object sender, EventArgs e)
        {

            if (User.Identity.IsAuthenticated)
            {
                login.Visible = false;
                Logout.Visible = true;
                user.Text = User.Identity.Name;
                email.Text = Membership.GetUser().Email;
                age.Text = GetUserAge().ToString();
                //bday.Text = GetUserBithdate();
                LoadPaidTests();
                LoadFinishedTests();
            }
            else
            {
                Response.Redirect("~/ManePage.aspx");
                login.Visible = true;
                Logout.Visible = false;
            }
     
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
            gvAvailableTests.DataBind();
            gvAvailableTests.Columns[3].Visible = false;
            gvAvailableTests.Columns[4].Visible = false;

        }

        private int GetUserAge()
        {
            int age = DAL.DataMethods.GetUserAge(Membership.GetUser(User.Identity.Name).ProviderUserKey.ToString());
            return age;
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
            Session["userTestId"] = Convert.ToInt32(row.Cells[4].Text);
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





    }
}