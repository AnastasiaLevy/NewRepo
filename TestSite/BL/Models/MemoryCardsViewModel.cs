using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using TestSite.Models;

namespace TestSite.BL.Models
{
    public class MemoryCardsViewModel
    {
        public List<MemoryCardsStructure> Structures { get; set; }
        public List<MemoryCardsTexts> Texts { get; set; }
        public List<MemoryCardsImages> Images { get; set; }
    }
}