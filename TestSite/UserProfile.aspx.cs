using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using TestSite.DAL;
using TestSite.HelpClasses;
using System.IO;
using System.Web.Script.Serialization;
using System.Globalization;

namespace TestSite
{
    public partial class UserProfile : System.Web.UI.Page
    {



        public string ageValue;
        private string userId;
        protected void Page_Load(object sender, EventArgs e)
        {


            Session["asd"] = "asd";
            if (!IsPostBack)
            {
                HidePanels();
            }
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

            }
            else
            {
                Response.Redirect("~/MainPage.aspx");
                login.Visible = true;
                Logout.Visible = false;
            }

        }

        private void HidePanels()
        {
            resetPw.Visible = false;
            setUpUserCode.Visible = false;
            uploadRes.Visible = false;
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
            Session["providerId"] = DAL.DataMethods.GetUserProviderId(userId).Rows[0][0];
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

        protected void btnUploadResults_Click(object sender, EventArgs e)
        {
            HidePanels();
            uploadRes.Visible = true;
        }

        protected void btnCloseRes_Click(object sender, EventArgs e)
        {
            uploadRes.Visible = false;
        }

        protected void btnUploadRes_Click(object sender, EventArgs e)
        {
            var results = new List<Dictionary<string, string>>();
            string userId="";
            int testId=0;
            try
            {
                var file = ResultsFile.PostedFile;
                StreamReader reader = new StreamReader(file.InputStream);
                var content = reader.ReadToEnd().Replace("\r\n", "");

                int pFrom = content.IndexOf("UserId:") + "UserId:".Length;
                int pTo = content.IndexOf(".");

                userId = content.Substring(pFrom, pTo - pFrom).Trim();

                content = content.Substring(pTo + 1);

                pFrom = content.IndexOf("TestId:") + "TestId:".Length;
                pTo = content.IndexOf(".");

                testId = Convert.ToInt32(content.Substring(pFrom, pTo - pFrom).Trim());


                content = content.Substring(pTo + 1);
                content = content.Remove(content.Length - 1);
                content = "[" + content.Replace("}.", "},") + "]";

                results = new JavaScriptSerializer().Deserialize<List<Dictionary<string, string>>>(content);
            }
            catch(Exception ex)
            {
                errorUpl.Text = "The file is in wrong format";
                return;
            }

            foreach(var result in results)
            {
                SaveResults(userId, testId,
                    result["game"],
                    result["initThinkTime"],
                    result["timeTotal"],
                    result["numberOfMoves"],
                    result["numberOfWrongMoves"],
                    result["overTime"],
                    result["overMoves"],
                    result["minMoves"]);
            }
            SaveFininishedLondon(userId, testId);

            LoadPaidTests();
            LoadFinishedTests();

        }
        public void SaveResults(string userId, int userTestId,string game,
            string initThinkTime, string timeTotal,
            string numberOfMoves, string numberOfWrongMoves,
            string overTime, string overMoves, string minMoves)
        {
            string testId = Enums.TestId.TowerOfLondon;
            DataMethods.UpdateLondonUserResults(userId, userTestId, testId, Convert.ToInt32(game),
            System.Convert.ToDecimal(initThinkTime, new CultureInfo("en-US")), System.Convert.ToDecimal(timeTotal, new CultureInfo("en-US")),
            Convert.ToInt32(numberOfMoves), Convert.ToInt32(numberOfWrongMoves),
            Convert.ToBoolean(overTime), Convert.ToBoolean(overMoves), Convert.ToInt32(minMoves));
        }

        public static void SaveFininishedLondon(string userId, int userTestId)
        {
            DataMethods.UpdateTestFinished(userId, userTestId);
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
            HidePanels();
            setUpUserCode.Visible = true;
            txtUserCode.Text = DAL.DataMethods.GetUserProviderCode(userId);

        }
           protected void btnResetPw_Click(object sender, EventArgs e)
        {
            MembershipUser u = Membership.GetUser(User.Identity.Name);

            try
            {

                if (u.ChangePassword(txtOldPw.Text, txtNewPw.Text))
                {
                   errorPW.Text = "Password changed.";
                }
                else
                {
                   errorPW.Text = "Password change failed. Please re-enter your values and try again.";
                }
            }
            catch (Exception ex)
            {
                errorPW.Text ="Please re-enter your values and try again.";
            }
        }

        protected void btnClosePw_Click(object sender, EventArgs e)
        {
            resetPw.Visible = false;
        }

        protected void btnResetPassword_Click(object sender, EventArgs e)
        {
            HidePanels();
            resetPw.Visible = true;
        }

    }
}