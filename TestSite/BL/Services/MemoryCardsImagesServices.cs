using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using TestSite.DAL;
using TestSite.Models;

namespace TestSite.BL.Services
{
    public class MemoryCardsImagesServices
    {
        private const string _procedureName = "AllMemoryCardsImages";
        public List<MemoryCardsImages> GetAllImages()
        {
            List<MemoryCardsImages> images = new List<MemoryCardsImages>();
            DataMethods dataMethods = new DataMethods();
            var dataTable = dataMethods.GetValues(_procedureName);
            foreach (DataRow row in dataTable.Rows)
            {
                images.Add(new MemoryCardsImages { Id = Int32.Parse(row["Id"].ToString()), Name = row["Name"].ToString(), Path = row["Path"].ToString(), TestNumber = Int32.Parse(row["TestNumber"].ToString()), SortOrder = Int32.Parse(row["SortOrder"].ToString()) });
            }
            return images;
        }
    }
}