using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Threading;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using TestSite.HelpClasses;
using TestSite.Models;

namespace TestSite
{
    public partial class Layout : System.Web.UI.MasterPage
    {
        public LanguageModel[] Languages = {
            new LanguageModel { Language = "EN", FlagIco = "/assets/img/united-states.png", LanguageCode = LanguageManager.LangDefault },
            new LanguageModel { Language = "RU", FlagIco = "/assets/img/russia.png", LanguageCode = "ru" }
        };
        public LanguageModel CurrentLanguage { get; set; }

        protected void Page_Init(object sender, EventArgs e)
        {
            var isLoginPage = HttpContext.Current.Request.Url.PathAndQuery.Contains("Login.aspx");

            if (HttpContext.Current.User.Identity.IsAuthenticated)
            {
                login.Visible = false;
                profile.Visible = true;
            }
            else
            {
                login.Visible = !isLoginPage;
                profile.Visible = false;
            }

        }

        protected void Page_Load(object sender, EventArgs e)
        {
            SetCurrentLAnguage(LanguageManager.GetLang());

            languageCatalog.DataSource = Languages;
            languageCatalog.DataBind();
        }

        protected void logOut_Click(object sender, EventArgs e)
        {
            FormsAuthentication.SignOut();
            Response.Redirect("~/MainPage.aspx");
        }

        protected void SelectLanguage(object sender, CommandEventArgs e)
        {
            string selectedLanguage = e.CommandArgument as string;
            LanguageManager.SetLang(selectedLanguage);

            // reload page to apply new lang.
            Response.Redirect(Request.RawUrl);
        }

        private void SetCurrentLAnguage(string current)
        {
            CurrentLanguage = Languages.First(x => x.LanguageCode == current);
        }

        //protected void Set_En(object sender, EventArgs e)
        //{
        //    string selectedLanguage = "en";
        //    LanguageManager.SetLang(selectedLanguage);

        //    // reload page to apply new lang.
        //    Response.Redirect(Request.RawUrl);
        //}

        //protected void Set_Ru(object sender, EventArgs e)
        //{
        //    string selectedLanguage = "ru";
        //    LanguageManager.SetLang(selectedLanguage);

        //    // reload page to apply new lang.
        //    Response.Redirect(Request.RawUrl);
        //}
    }
}