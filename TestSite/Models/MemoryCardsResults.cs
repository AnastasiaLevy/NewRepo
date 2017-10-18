using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace TestSite.Models
{
    public class MemoryCardsResults
    {
        public int Id { get; set; }
        public string Name { get; set; }
        public int TotalMoves { get; set; }
        public int IncorrectMatching { get; set; }
        public int Score { get; set; }
        public int FirstCardAvgRespTime { get; set; }
        public int SecondCardAvgRespTime { get; set; }
        public int TestTime { get; set; }
    }
}