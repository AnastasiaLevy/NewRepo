using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace TestSite.Models
{
    public class MemoryCardsImages
    {
        public int Id { get; set; }
        public string Name { get; set; }
        public string Path { get; set; }
        public int TestNumber { get; set; }
        public int SortOrder { get; set; }
    }
}