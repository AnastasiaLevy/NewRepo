using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
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

        public static int GetProviderId(string userId)
        {
            return DAL.DataMethods.GetProviderId(userId);
        }

 
    }
}