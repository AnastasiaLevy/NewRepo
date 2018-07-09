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

        public static string GetOption(string num)
        {
            string buyTestOptionString = "";
            switch (num)
            {
                case "1":
                    buyTestOptionString = "4";
                    break;
                case "10":
                    buyTestOptionString = "1";
                    break;
                case "100":
                    buyTestOptionString = "2";
                    break;
                case "500":
                    buyTestOptionString = "5";
                    break;
            }

            return buyTestOptionString;
        }

        public static string PostPaypal(double itemAmount, int num, string baseUrl, string itemName, string pageToReturn)
        {
            string business = "HQS7UWQMRHDTQ";
            //double itemAmount = 0.01;
            string currencyCode = "USD";

            StringBuilder ppHref = new StringBuilder();
            ppHref.Append("https://www.paypal.com/cgi-bin/webscr?cmd=_xclick");//("https://www.paypal.com/cgi-bin/webscr?cmd=_xclick");
            ppHref.Append("&business=" + business);
            ppHref.Append("&item_name=" + num + "_" + itemName);
            ppHref.Append("&amount=" + itemAmount);//itemAmount.ToString("#.00")
            ppHref.Append("&currency_code=" + currencyCode);
            ppHref.Append("&return=" + baseUrl + pageToReturn); //"http://localhost:52606/TrailsWrapper.aspx");
            return ppHref.ToString();
        }
    }
}