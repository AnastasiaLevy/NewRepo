using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using TestSite.DAL;
using TestSite.Models;

namespace TestSite.BL.Services
{
    public class MemoryCardsService
    {
            private const string _procedureName = "AllMemoryCard";
            public List<MemoryCards> GetAll()
            {
                List<MemoryCards> images = new List<MemoryCards>();
                DataMethods dataMethods = new DataMethods();
                var dataTable = dataMethods.GetValues(_procedureName);
                foreach (DataRow row in dataTable.Rows)
                {
                    images.Add(new MemoryCards { Id = Int32.Parse(row["Id"].ToString()), Name = row["Name"].ToString() });
                }
                return images;
            }
        
    }
}