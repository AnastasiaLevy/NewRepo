using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Threading;
using System.Web;

namespace TestSite.HelpClasses
{
    public class LanguageManager
    {
        private const string LangKey = "LANG_KEY";
        public const string LangDefault = "en";

        public static string GetLang()
        {
            var langCoockie = HttpContext.Current.Request.Cookies[LangKey];

            if (langCoockie == null || string.IsNullOrEmpty(langCoockie.Value))
            {
                langCoockie = new HttpCookie(LangKey, LangDefault);
                langCoockie.Expires = DateTime.Now.AddHours(10);
                HttpContext.Current.Response.Cookies.Set(langCoockie);
            }

            return langCoockie.Value;
        }

        public static void SetLang(string lang)
        {
            var langCoockie = new HttpCookie(LangKey, lang);
            HttpContext.Current.Response.Cookies.Set(langCoockie);
        }

        public static void ApplyLanguage()
        {
            var langCoockie = HttpContext.Current.Request.Cookies[LangKey];
            if (langCoockie != null)
            {
                String selectedLanguage = langCoockie.Value;
                Thread.CurrentThread.CurrentCulture = CultureInfo.CreateSpecificCulture(selectedLanguage);
                Thread.CurrentThread.CurrentUICulture = new CultureInfo(selectedLanguage);
            }
        }
    }
}