using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Web;
using TestSite.BL.Models;
using TestSite.DAL;
using TestSite.HelpClasses;

namespace TestSite.BL.Services
{
    public class LondonResultServices
    {
        public void InsertRow(LondonResultViewModel result,string userid,int userTestId)
        {
            DataMethods.UpdateLondonUserResults(userid, userTestId, Enums.TestId.TowerOfLondon, Convert.ToInt32(result.game),
            System.Convert.ToDecimal(result.initThinkTime, new CultureInfo("en-US"))/1000, System.Convert.ToDecimal(result.totalTime, new CultureInfo("en-US"))/1000,
            Convert.ToInt32(result.nm), Convert.ToInt32(result.nmWrong),
            Convert.ToBoolean(result.overTime), Convert.ToBoolean(result.overMoves), Convert.ToInt32(result.minMoves));
        }
    }
}