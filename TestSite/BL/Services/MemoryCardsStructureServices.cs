using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using TestSite.DAL;
using TestSite.Models;

namespace TestSite.BL.Services
{
    public class MemoryCardsStructureServices
    {
        private const string _procedureName = "AllMemoryCardsStucture";
        public List<MemoryCardsStructure> GetAll()
        {
            List<MemoryCardsStructure> structure = new List<MemoryCardsStructure>();
            DataMethods dataMethods = new DataMethods();
            var dataTable = dataMethods.GetValues(_procedureName);
            foreach(DataRow row in dataTable.Rows)
            {
                structure.Add(new MemoryCardsStructure { Id = Int32.Parse(row["Id"].ToString()), Name = row["Name"].ToString(), Structure = row["Structure"].ToString(),TestNumber = Int32.Parse(row["TestNumber"].ToString()) });
            }
            return structure;
        }

    }
}