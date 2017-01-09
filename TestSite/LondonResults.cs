using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace TestSite
{
    public class LondonResults
    {
        public int Game { get; set; }
        public decimal InitThinktime { get; set; }
        public decimal Totaltime { get; set; }
        public int NumberOfMoves { get; set; }
        public int NumberOfWrongMoves { get; set; }
        public bool OverTime { get; set; }
        public bool OverMoves { get; set; }
    }
}