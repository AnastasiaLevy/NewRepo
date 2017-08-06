using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using TestSite.Models;

namespace TestSite.BL.Models
{
    public class MemoryCardsModifyViewModel
    {
        public MemoryCards MyProperty { get; set; }
        public List<MemoryCardsTests> MemoryCardsTests { get; set; }
        public List<MemoryCardsTexts> MemoryCardsTexts { get; set; }
        public List<MemoryCardsStructure> MemoryCardsStructure { get; set; }
        public List<MemoryCardsImages> MemoryCardsImages { get; set; }
    }
}