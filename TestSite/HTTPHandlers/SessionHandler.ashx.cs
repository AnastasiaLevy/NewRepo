using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.SessionState;

namespace TestSite.HTTPHandlers
{
    /// <summary>
    /// Summary description for SessionHandler
    /// </summary>
    public class SessionHandler : IHttpHandler, IRequiresSessionState
    {

        public void ProcessRequest(HttpContext context)
        {

            
            var type = context.Request["type"];
            var response = "NoResponse";
            switch (type)
            {
                case "GetSessionTimeout":
                    response = GetSessionTimeOut();
                    break;
                case "ProlongSession":
                    ProlongSession();
                    break;
                case "ExitSession":
                    response=ExitSession();
                    break;
            }

            context.Response.ContentType = "text/plain";
            context.Response.Write(response);
        }

        private string GetSessionTimeOut()
        {
            var context = HttpContext.Current;
            var session = context.Session;
            if (session["currentPage"] == null || session["currentPage"].ToString() != context.Request.UrlReferrer.ToString())
            {
                session["currentPage"] = context.Request.UrlReferrer.ToString();
                session["ActualTimeStarted"] = session["SessionTimeStarted"];
            }
            var secondsLeft = Math.Ceiling(((((DateTime)session["ActualTimeStarted"]).AddMinutes(session.Timeout)) - DateTime.Now).TotalSeconds);
            session["ActualTimeStarted"] = session["SessionTimeStarted"];
            return secondsLeft.ToString();
                
        }

        private void ProlongSession()
        {
            var session = HttpContext.Current.Session;
            session["SessionTimeStarted"] = DateTime.Now;
            session["ActualTimeStarted"] = session["SessionTimeStarted"];
        }

        private string ExitSession()
        {
            var context = HttpContext.Current;
            var session = context.Session;
            session.Clear();
            string baseUrl = context.Request.Url.Scheme + "://" + context.Request.Url.Authority +
                    context.Request.ApplicationPath.TrimEnd('/') + "/";
            return baseUrl + "MainPage.aspx";

            FormsAuthentication.SignOut();
        }

        public bool IsReusable
        {
            get
            {
                return false;
            }
        }
    }    
}