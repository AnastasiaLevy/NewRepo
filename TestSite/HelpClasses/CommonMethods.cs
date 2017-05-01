using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace TestSite.HelpClasses
{
    public static class CommonMethods
    {
        public static bool UserIsProvider(string userId)
        {
            int? providerId = DAL.DataMethods.GetProviderId(userId);
            return providerId > 0;
        }
    }
}