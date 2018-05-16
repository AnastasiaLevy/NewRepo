using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using TestSite.BL.Services;
using TestSite.DAL;
using TestSite.HelpClasses;
using static TestSite.HelpClasses.Enums;

namespace TestSite.Provider
{
    public partial class ProviderPortal : System.Web.UI.Page
    {
        protected MembershipUser _user;

        protected void Page_PreRender(object sender, EventArgs e)
        {
           
            DataTable dt = DAL.DataMethods.GetModifyTestList(Convert.ToInt32(ViewState["providerId"]));
            if (dt.Rows.Count < 1)
            {
                ToL.Style.Add("display", "none");
            }
            dt = DAL.DataMethods.GetMemoryCardsTestModify(Convert.ToInt32(ViewState["providerId"]));
            if (dt.Rows.Count < 1)
            {
                // MC.Style.Add("display", "none");
            }
            string buyTestTypeString = Request.QueryString["buyTestType"];
            string buyTestOptionString = Request.QueryString["buyTestOption"];
            string buyTestNumString = Request.QueryString["buyTestNum"];            
            if ((buyTestTypeString != null)&&(buyTestOptionString != null)&&(buyTestNumString != null))
            {
                int numTests = Convert.ToInt32(buyTestNumString);
                int option = Convert.ToInt32(buyTestOptionString);
                string testType = buyTestTypeString;
                _user = Membership.GetUser(User.Identity.Name);
                int buyProviderId = DataMethods.GetProviderId(_user.ProviderUserKey.ToString());
                DataTable providerTests = DataMethods.GetAllProviderTests(buyProviderId);
                numTests += GetNumberTest(buyTestTypeString,buyTestOptionString,providerTests);
                DataMethods.InsertProviderTest(buyProviderId, testType, option, numTests);
                //Session["payTestNum"] = 0;
            } else
            {
                popupForProvider.Visible = false;
            }
        }
        protected int GetNumberTest(string testType, string testOptions, DataTable dt)
        {
            int num = 0;
            switch(testType)
            {
                case"1":
                    {
                        testType = "Trails";
                        break;
                    }
                case "2":
                    {
                        testType = "Tower Of London";
                        break;
                    }
                case "3":
                    {
                        testType = "Card Sort";
                        break;
                    }
                case "4":
                    {
                        testType = "Nback";
                        break;
                    }
                case "5":
                    {
                        testType = "Syllogisms";
                        break;
                    }
            }
            switch (testOptions)
            {
                case "1":
                    {
                        testOptions = "10";
                        break;
                    }
                case "2":
                    {
                        testOptions = "100";
                        break;
                    }
                case "3":
                    {
                        testOptions = "unlimited";
                        break;
                    }
                case "4":
                    {
                        testOptions = "1";
                        break;
                    }
                case "5":
                    {
                        testOptions = "500";
                        break;
                    }
            }
            foreach (DataRow table in dt.Rows)
            {
                if (table.ItemArray[0].ToString() == testType && table.ItemArray[1].ToString() == testOptions)
                {
                    num = Convert.ToInt32(table.ItemArray[2].ToString());
                }
            }
            return num;
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                pop.Style["display"] = "none";

                MakePanelsInvisible();
                cbAllowUserViewResults.Checked = false;


                if (User.Identity.IsAuthenticated)
                {
                    //login.Visible = false;
                    //Logout.Visible = true;
                    //user.Text = User.Identity.Name;
                    //email.Text = Membership.GetUser().Email;
                }
                else
                {
                    Response.Redirect("~/ManePage.aspx");
                    //login.Visible = true;
                    //Logout.Visible = false;
                }


                string userId = Membership.GetUser(User.Identity.Name).ProviderUserKey.ToString();
                ViewState["pUserId"] = userId;
                int? providerId = DAL.DataMethods.GetProviderId(userId);

                ViewState["providerId"] = providerId;
                SetParticipantGrid(providerId);
                SetProviderTestsGrid(providerId);
            }
        }

        private void MakePanelsInvisible()
        {
            createUser.Visible = false;
            assignTest.Visible = false;
            setUpUserCode.Visible = false;
            editTest.Visible = false;
            resetPw.Visible = false;
            exportTestResults.Visible = false;
        }

        private void SetProviderTestsGrid(int? providerId)
        {
            DataTable dt = DAL.DataMethods.GetAllProviderTests(providerId);
            gvProviderTests.DataSource = DAL.DataMethods.GetAllProviderTests(providerId);
            gvProviderTests.Columns[3].Visible = true;
            gvProviderTests.DataBind();
            gvProviderTests.Columns[3].Visible = false;

        }

        private void SetParticipantGrid(int? partId)
        {
            gvAllParticipants.DataSource = DAL.DataMethods.GetAllProviderParticipants(partId);
            ViewState["dtbl"] = DAL.DataMethods.GetAllProviderParticipants(partId);
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
            string userName = row.Cells[2].Text; ;
            ViewState["tUserId"] = row.Cells[7].Text;

            Response.Redirect("~/Registration.aspx?userId=" + Convert.ToString(ViewState["tUserId"]) + "&provId=" + providerId + "&userName=" + userName);
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
            if (row.Cells[0].Text.Length > 0 && row.Cells[0].Text != ("&nbsp;"))
                partName.Text = row.Cells[0].Text + " , " + row.Cells[1].Text;
            else
                partName.Text = "User have not yet filled profile form.\n\r";
            string userId = row.Cells[7].Text;
            ViewState["tUserId"] = userId;
            SetUserTestsGrig(userId);
            if (gvTestPerUser.Rows.Count == 0)
            {
                partName.Text += "No test assigned";
            }
            string age = row.Cells[2].Text;

            ViewState["tUserAge"] = age;
            cbViewResults.Checked = CheckAllowUserViewResults(userId);


        }

        private bool CheckAllowUserViewResults(string userId)
        {
            return Convert.ToBoolean(DAL.DataMethods.GetUserViewResults(userId));
        }

        private void SetUserTestsGrig(string userId)
        {
            gvTestPerUser.DataSource = DAL.DataMethods.GetAllUserTestsP(userId);
            gvTestPerUser.Columns[5].Visible = true;
            gvTestPerUser.Columns[6].Visible = true;
            gvTestPerUser.DataBind();
            gvTestPerUser.Columns[5].Visible = false;
            gvTestPerUser.Columns[6].Visible = false;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            pop.Style["display"] = "none";
            if (cbViewResults.Checked)
            {

                DAL.DataMethods.SetAllowUserViewResults(ViewState["tUserId"].ToString(), true);
            }
            else
            {
                DAL.DataMethods.SetAllowUserViewResults(ViewState["tUserId"].ToString(), false);
            }
        }

        protected void lbViewTestResults_Click(object sender, EventArgs e)
        {
            LinkButton btn = (LinkButton)sender;
            GridViewRow row = (GridViewRow)btn.NamingContainer;
            string tId = row.Cells[5].Text;
            string userId = Convert.ToString(ViewState["tUserId"]);
            string age = Convert.ToString(ViewState["tUserAge"]);
            string test = row.Cells[6].Text;
            string url = "~/ResultsPage.aspx?userId=" + userId + "&tid=" + tId + "&test=" + test + "&age=" + age + "&provider=true";
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
            createUser.Visible = false;
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
                if (user == null)
                {

                }

                ViewState.Remove("CreatingUser");
                createUser.Visible = true;
                lblError.Text = "New User was created";
                lblError.CssClass = "successMessage";
                createUser.Visible = true;
                DAL.DataMethods.InsertProviderToTheUser(user.ProviderUserKey.ToString(), Convert.ToInt32(ViewState["providerId"]), userName);

                if (cbAllowUserViewResults.Checked)
                {
                    DAL.DataMethods.SetAllowUserViewResults(user.ProviderUserKey.ToString(), true);
                }
                else
                {
                    DAL.DataMethods.SetAllowUserViewResults(user.ProviderUserKey.ToString(), false);
                }
                SetProviderTestsGrid(Convert.ToInt32(ViewState["providerId"]));
                SetParticipantGrid(Convert.ToInt32(ViewState["providerId"]));
            }
            catch (Exception ex)
            {
                lblError.Text = ex.Message;
                lblError.CssClass = "errorMessage";

                createUser.Visible = true;
                DAL.DataMethods.InsertErrorMessage(ex.ToString(), Convert.ToString(ViewState["tUserId"]), "providerProtal", null);
            }
        }

        protected void btnAddNewPart_Click(object sender, EventArgs e)
        {
            MakePanelsInvisible();
            createUser.Visible = true;
        }

        protected void addUserTest_Click(object sender, EventArgs e)
        {

        }

        protected void btnAddUserTest_Click(object sender, EventArgs e)
        {
            MakePanelsInvisible();
            assignTest.Visible = true;
            ddlModifiedID.Visible = false;
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


            DataTable dt = DAL.DataMethods.GetAllProviderTests(providerId);//ds.Tables[0];
            foreach (DataRow dr in dt.Rows)
            {
                string display = dr["Name"].ToString() + "(amount:" + dr["Left"].ToString() + ")";
                ddlProvTests.Items.Add(new ListItem(display, dr["Id"].ToString()));
            }
            ddlProvTests.Items.Insert(0, new ListItem("Select Test", "NA"));
            //dt = ds.Tables[1];
            //if (dt.Rows.Count > 0)
            //{
            //    foreach (DataRow dr in dt.Rows)
            //    {
            //        ddlModifiedID.Items.Add(new ListItem(dr["testName"].ToString(), dr["Id"].ToString()));
            //    }
            //}
        }

        protected void ddlProvTests_SelectedIndexChanged(object sender, EventArgs e)
        {
            ddlModifiedID.Visible = false;
            ddlModifiedID.Items.Clear();
            DataTable dt = DAL.DataMethods.GetModfiedTest(ddlProvTests.SelectedValue, Convert.ToInt32(ViewState["providerId"]));
            if (dt.Rows.Count > 0)
            {
                ddlModifiedID.Visible = true;
                foreach (DataRow dr in dt.Rows)
                {
                    ddlModifiedID.Items.Add(new ListItem(dr["testName"].ToString(), dr["Id"].ToString()));
                }
            }
            else
            {
                ddlModifiedID.Visible = false;
            }

            assignTest.Visible = true;
        }

        protected void btnPartAddTest_Click1(object sender, EventArgs e)
        {
            string userId = ddlAllParticipants.SelectedValue;
            string provTestId = ddlProvTests.SelectedValue;
            if (panelAssignIsValid(userId, provTestId))
            {



                int modifiedId = String.IsNullOrEmpty(ddlModifiedID.SelectedValue) ? 0 : Convert.ToInt32(ddlModifiedID.SelectedValue);

                try
                {

                    DAL.DataMethods.InsertTestToParticipant(Convert.ToInt32(provTestId), userId, modifiedId);
                    int providerId = Convert.ToInt32(ViewState["providerId"]);
                    SetDllProviderTests(providerId);
                    SetProviderTestsGrid(providerId);
                    SetParticipantGrid(providerId);
                    //TODO: Display success message;
                    assignTest.Visible = true;
                    ddlModifiedID.Visible = false;
                    lblTestMessage.Text = "Test was successfully assigned";
                    lblTestMessage.CssClass = "successMessage";
                }
                catch (Exception ex)
                {
                    lblTestMessage.Text = "There was an error assigning test";
                    lblTestMessage.CssClass = "errorMessage";
                    DAL.DataMethods.InsertErrorMessage(ex.ToString(), Convert.ToString(ViewState["tUserId"]), "ProviderPortal", null);
                }
            }
        }

        private bool panelAssignIsValid(string userId, string provTestId)
        {
            bool isValid = true;
            if (userId.Length == 0)
            {
                lblTestMessage.Text = "Select a User";
                lblTestMessage.CssClass = "errorMessage";
                isValid = false;
            }

            if (provTestId == "NA")
            {
                lblTestMessage.Text = "Select a Valid Test";
                lblTestMessage.CssClass = "errorMessage";
                isValid = false;
            }
            return isValid;
        }

        protected void btnCloseAddTest_Click(object sender, EventArgs e)
        {
            assignTest.Visible = false;
        }

        protected void btnUpdateProfile_Click(object sender, EventArgs e)
        {
            MakePanelsInvisible();
            setUpUserCode.Visible = true;
            txtUserCode.Text = GetProviderUserCode(ViewState["providerId"].ToString());
        }

        private string GetProviderUserCode(string providerId)
        {
            DataTable dt = DAL.DataMethods.GetProvderUserCode(providerId);
            return (dt.Rows.Count > 0) ? dt.Rows[0]["providerCode"].ToString() : "";
        }

        protected void btnCodeSave_Click(object sender, EventArgs e)
        {
            string code = txtUserCode.Text;
            if (code.Length > 0)
                DAL.DataMethods.UpdateProviderTableSetCode(ViewState["pUserId"].ToString(), code);
        }

        protected void btnCodeClose_Click(object sender, EventArgs e)
        {
            setUpUserCode.Visible = false;
        }

        protected void SelectCheckBox_CheckedChanged(object sender, EventArgs e)
        {
            //CheckBox cb = (CheckBox)sender;
            // if (cb.Checked)
            // {

            //     DAL.DataMethods.SetAllowUserViewResults(ViewState["tUserId"].ToString(), true);
            // }
            // else
            // {
            //     DAL.DataMethods.SetAllowUserViewResults(ViewState["tUserId"].ToString(), false);
            // }
        }

        protected void btnModifyTest_Click(object sender, EventArgs e)
        {
            MakePanelsInvisible();
            editTest.Visible = true;
            SetUpModTest();
        }

        private void SetUpModTest()
        {
            DataTable dt = DAL.DataMethods.GetModifyTestList(Convert.ToInt32(ViewState["providerId"]));

            ddlModifyTest.Items.Clear();

            foreach (DataRow dr in dt.Rows)
            {
                ddlModifyTest.Items.Add(new ListItem(dr["testName"].ToString(), "../Create/LondonModify.aspx?testId=" + dr["Id"].ToString()));
            }

            dt = DAL.DataMethods.GetMemoryCardsTestModify(Convert.ToInt32(ViewState["providerId"]));
            MemoryCardsService _memoryCardsServices = new MemoryCardsService();
            foreach (DataRow dr in dt.Rows)
            {

                // ddlModifyTest.Items.Add(new ListItem(_memoryCardsServices.GetAll().First(x=>x.Id == Int32.Parse(dr["TestId"].ToString())).Name, "~/Create/MemoryCardsCreate.aspx?testId="+dr["Id"].ToString()));
            }

        }



        protected void btnSelectModify_Click(object sender, EventArgs e)
        {
            Session["providerId"] = Convert.ToInt32(ViewState["providerId"]);

            Response.Redirect(ddlModifyTest.SelectedItem.Value);

        }

        protected void btnCreateNewTest_Click(object sender, EventArgs e)
        {

            Session["providerId"] = Convert.ToInt32(ViewState["providerId"]);
            Response.Redirect("../Create/LondonModify.aspx?p");
        }

        protected void btnCancelModify_Click(object sender, EventArgs e)
        {
            Session.Contents.Remove("testId");
            ddlModifyTest.Items.Clear();
            editTest.Visible = false;

        }

        protected void btnDeleteModify_Click(object sender, EventArgs e)
        {
            string modTestId = ddlModifyTest.SelectedValue;
            DAL.DataMethods.DeleteModifiedTest(modTestId);
            SetUpModTest();
        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            gvAllParticipants.Focus();
        }

        protected void gvAllParticipants_Sorting(object sender, GridViewSortEventArgs e)
        {
            string SortDir = string.Empty;
            if (dir == SortDirection.Ascending)
            {
                dir = SortDirection.Descending;
                SortDir = "Desc";
            }
            else
            {
                dir = SortDirection.Ascending;
                SortDir = "Asc";
            }

            DataTable dataTable = ViewState["dtbl"] as DataTable;
            if (dataTable != null)
            {
                DataView sortedView = new DataView(dataTable);

                sortedView.Sort = e.SortExpression + " " + SortDir;
                gvAllParticipants.DataSource = sortedView;

                gvAllParticipants.Columns[7].Visible = true;

                gvAllParticipants.DataBind();
                gvAllParticipants.Columns[7].Visible = false;
            }
            //gvAllParticipants.Focus();
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
                errorPW.Text = "Please re-enter your values and try again.";
            }
        }


        protected void btnResetPassword_Click(object sender, EventArgs e)
        {
            MakePanelsInvisible();
            resetPw.Visible = true;
        }

        protected SortDirection dir
        {
            get
            {
                if (ViewState["dirState"] == null)
                {
                    ViewState["dirState"] = SortDirection.Ascending;
                }
                return (SortDirection)ViewState["dirState"];
            }
            set
            {
                ViewState["dirState"] = value;
            }
        }

        protected void btnClosePw_Click(object sender, EventArgs e)
        {
            resetPw.Visible = false;
        }


        protected void drAdult_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Norms/AdultDrexelNorms.pdf");
        }

        protected void drChild_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Norms/ChildGroupsNorms.pdf");
        }

        protected void CST_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Norms/CardSort_norms.pdf");
        }

        protected void Nback_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Norms/NbackNorms.pdf");
        }

        protected void btnExportTestResults_Click(object sender, EventArgs e)
        {
            MakePanelsInvisible();
            SetUpExportTestResults();
            TestsForExportResults.Visible = false;
            exportTestResults.Visible = true;
        }

        protected void TestTemplatesForExportResults_SelectedIndexChanged(object sender, EventArgs e)
        {
            TestsForExportResults.Visible = false;
            TestsForExportResults.Items.Clear();
            DataTable dt = DAL.DataMethods.GetModfiedTest(TestTemplatesForExportResults.SelectedValue, Convert.ToInt32(ViewState["providerId"]));
            if (dt.Rows.Count > 0)
            {
                TestsForExportResults.Visible = true;
                foreach (DataRow dr in dt.Rows)
                {
                    TestsForExportResults.Items.Add(new ListItem(dr["testName"].ToString(), dr["Id"].ToString()));
                }
            }
            else
            {
                TestsForExportResults.Items.Clear();
                TestsForExportResults.Visible = false;
            }
        }

        private void SetUpExportTestResults()
        {
            TestTemplatesForExportResults.Items.Clear();

            DataSet dt = DAL.DataMethods.GetAvailableTestByProviderId(Convert.ToInt32(ViewState["providerId"]));
            foreach (DataRow dr in dt.Tables[0].Rows)
            {
                string display = dr["Name"].ToString();// + (!string.IsNullOrEmpty(dr["Left"].ToString())?"(amount:" + dr["Left"].ToString() + ")":"");
                TestTemplatesForExportResults.Items.Add(new ListItem(display, dr["Id"].ToString()));
            }
        }

        protected void btnExportTestResultsInOneRow_Click(object sender, EventArgs e)
        {
            DateTime fromBuffer;
            DateTime toBuffer;
            var from = DateTime.TryParse(fromDate.Text, out fromBuffer) ? fromBuffer : (DateTime?)null;
            var to = DateTime.TryParse(toDate.Text, out toBuffer) ? toBuffer.AddDays(1) : (DateTime?)null;

            ExportData.ExportAllInSingleLines(Convert.ToInt32(TestTemplatesForExportResults.SelectedValue),
                Convert.ToInt32(ViewState["providerId"]), from, to);
        }

        protected void btnExportTestResultsInManyRows_Click(object sender, EventArgs e)
        {
            DateTime fromBuffer;
            DateTime toBuffer;
            var from = DateTime.TryParse(fromDate.Text, out fromBuffer) ? fromBuffer : (DateTime?)null;
            var to = DateTime.TryParse(toDate.Text, out toBuffer) ? toBuffer.AddDays(1) : (DateTime?)null;
            if (string.IsNullOrEmpty(TestsForExportResults.SelectedValue))
            {
                ExportData.ExportAllNormal(Convert.ToInt32(TestTemplatesForExportResults.SelectedValue),
                    Convert.ToInt32(ViewState["providerId"]), from, to);
            }
            else
            {
                ExportData.ExportAllNormalByModifyId(Convert.ToInt32(TestTemplatesForExportResults.SelectedValue),
                    Convert.ToInt32(TestsForExportResults.SelectedValue),
                    Convert.ToInt32(ViewState["providerId"]), from, to);
            }
        }

        
        //protected void afterBuyTOL(object sender, EventArgs e)
        //{
        //    //Session["payTestNum"] = 5;
        //    string buyTestTypeString = "4";
        //    string buyTestOptionString = "1";
        //    string buyTestNumString = "10";
        //    Response.Redirect("~/Provider/ProviderPortal.aspx?buyTestType=" + buyTestTypeString + "&buyTestOption=" + buyTestOptionString + "&buyTestNum=" + buyTestNumString);
        //}

        protected void closePopUp(object sender, EventArgs e)
        {
            //popupForProvider.Visible = false;
        }
    }
}