using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using TestSite.DAL;
using TestSite.Models;

namespace TestSite.BL.Services
{
    public class MemoryCardsTextsServices
    {
        private const string _procedureName = "AllMemoryCardsTexts";
        public List<MemoryCardsTexts> GetAll()
        {
            List<MemoryCardsTexts> texts = new List<MemoryCardsTexts>();
            DataMethods dataMethods = new DataMethods();
            var dataTable = dataMethods.GetValues(_procedureName);
            foreach(DataRow row in dataTable.Rows)
            {
                int testNumber = !String.IsNullOrEmpty(row["TestNumber"].ToString()) ? Int32.Parse(row["TestNumber"].ToString()) : 0;
                texts.Add(new MemoryCardsTexts { Id = Int32.Parse(row["Id"].ToString()), Name = row["Name"].ToString(), Text = row["Text"].ToString(), TestNumber = testNumber});
            }

            return texts;
        }
    }
}