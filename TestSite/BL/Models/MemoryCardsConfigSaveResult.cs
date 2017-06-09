using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace TestSite.BL.Models
{
    public class MemoryCardsConfigSaveResult
    { 
        public int Id { get; set; }
        public string TestName { get; set; }
        public string TestText { get; set; }
        public string Matrix { get; set; }
        public string Scheme { get; set; }
        public int OverTime { get; set; }
        public string ImagesName { get; set; }        
    }
}