using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using TestSite.DAL;
using TestSite.Models;

namespace TestSite.BL.Services
{
    public class MemoryCardsTestsServices
    {
        private const string _procedureName = "AllMemoryCardsTests";
        public List<MemoryCardsTests> GetAllTests()
        {
            List<MemoryCardsTests> texts = new List<MemoryCardsTests>();
            DataMethods dataMethods = new DataMethods();
            var dataTable = dataMethods.GetValues(_procedureName);
            foreach (DataRow row in dataTable.Rows)
            {
                texts.Add(new MemoryCardsTests { Id = Int32.Parse(row["Id"].ToString()), Name = row["Name"].ToString()});
            }

            return texts;
        }
    }
}