using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using TestSite.DAL;

namespace TestSite.Admin
{
    public partial class AdminPortal : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (Request.QueryString["admin"].ToString() == "true")
            {
                if (!IsPostBack)
                {
                    DataSet ds = DataMethods.GetAdminData();
                    gvUsers.DataSource = ds.Tables[0];
                    gvUsers.DataBind();

                    gvMessages.DataSource = ds.Tables[2];
                    gvMessages.DataBind();

                    gvErrors.DataSource = ds.Tables[1];
                    gvErrors.DataBind();

                    ddlProviders.Items.Clear();
                    List<DataRow> providers = ds.Tables[0].Rows.Cast<DataRow>().Where(x => (x.Field<int?>("Provider Id") != null)).ToList();

                    foreach (DataRow dr in providers)
                    {
                        ddlProviders.Items.Add(new ListItem(dr["UserName"].ToString(), dr["Provider Id"].ToString()));
                    }

                    DataSet tests = DataMethods.GetAvailableTest();
                    foreach (DataRow dr in tests.Tables[0].Rows)
                    {
                        ddlTests.Items.Add(new ListItem(dr["testName"].ToString(), dr["testId"].ToString()));
                    }

                    ddlOptions.DataSource = Enumerable.Range(1, 3);
                    ddlOptions.DataBind();

                    DataSet prTests = DataMethods.GetProviderTable();
                    gvProviderTests.DataSource = prTests.Tables[0];
                    gvProviderTests.DataBind();

                }
            }
        }

        protected void OnPaging(object sender, GridViewPageEventArgs e)
        {
            gvErrors.PageIndex = e.NewPageIndex;
            gvErrors.DataBind();

        }

        protected void makeProvider_Click(object sender, EventArgs e)
        {
            LinkButton btn = (LinkButton)sender;
            GridViewRow row = (GridViewRow)btn.NamingContainer;
            string userId = row.Cells[2].Text;
            if (!String.IsNullOrEmpty(userId))
            {
                DAL.DataMethods.UpdateProviderTable(userId);
            }
            DataSet ds = DataMethods.GetAdminData();
            gvUsers.DataSource = ds.Tables[0];
            gvUsers.DataBind();
        }

        protected void btnAssign_Click(object sender, EventArgs e)
        {
            int providerId = Convert.ToInt32(ddlProviders.SelectedItem.Value);
            string testType = ddlTests.SelectedValue;
            int option = Convert.ToInt32(ddlOptions.SelectedValue);
            int number = txtNumLeft.Text.Length>0? Convert.ToInt32(txtNumLeft.Text) : -1;

            DataMethods.InsertProviderTest(providerId, testType, option, number);

        }

        protected void lbRemoveTestFromUserList_Click(object sender, EventArgs e)
        {
            LinkButton btn = (LinkButton)sender;
            GridViewRow row = (GridViewRow)btn.NamingContainer;
            string userId = row.Cells[3].Text;

            string password = "newpassword";
            MembershipUser mu = Membership.GetUser(userId);
            mu.ChangePassword(mu.ResetPassword(), password);
        }
    }
}