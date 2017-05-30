using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.SessionState;
using System.Web.UI;

namespace TestSite
{
    public class Global : System.Web.HttpApplication
    {

        protected void Application_Start(object sender, EventArgs e)
        {

        }

        protected void Session_Start(object sender, EventArgs e)
        {

        }

        protected void Application_BeginRequest(object sender, EventArgs e)
        {

        }

        protected void Application_AuthenticateRequest(object sender, EventArgs e)
        {

        }

        protected void Application_Error(object sender, EventArgs e)
        {

        }

        protected void Session_End(object sender, EventArgs e)
        {
        }

        protected void Application_End(object sender, EventArgs e)
        {

        }

        protected void Application_AcquireRequestState(Object sender, EventArgs e)
        {
            HttpSessionState session = HttpContext.Current.Session;
            if (session != null)
            {
                session["SessionTimeStarted"] = DateTime.Now;
                if(session["ActualTimeStarted"] == null)
                    session["ActualTimeStarted"] = session["SessionTimeStarted"];
            }
        }
    }
}