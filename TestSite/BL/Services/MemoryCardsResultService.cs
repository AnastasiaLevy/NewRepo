using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using TestSite.DAL;
using TestSite.Models;

namespace TestSite.BL.Services
{
    public class MemoryCardsResultService
    {
        //todo extend with reflections
        public void InsertRow(MemoryCardsResults result)
        {
            DataMethods.InsertMemoryCardsResult(result);
        }
    }
}