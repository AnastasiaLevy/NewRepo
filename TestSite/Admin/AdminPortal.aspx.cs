using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
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
                    DataSet ds = DataMethods.GetAllUsers();
                    gvUsers.DataSource = ds.Tables[0];
                    gvUsers.DataBind();

                    gvMessages.DataSource = ds.Tables[2];
                    gvMessages.DataBind();

                    gvErrors.DataSource = ds.Tables[1];
                    gvErrors.DataBind();
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
            string userId = row.Cells[1].Text;
            if (!String.IsNullOrEmpty(userId))
            {
                DAL.DataMethods.UpdateProviderTable(userId);
            }
            DataSet ds = DataMethods.GetAllUsers();
            gvUsers.DataSource = ds.Tables[0];
            gvUsers.DataBind();
        }

   
    }
}