using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace TestSite.BL.Models
{
    public class LondonResultViewModel
    {
            public string game { get; set; }
            public string initThinkTime { get; set; }
            public string totalTime { get; set; }
            public string nm { get; set; }
            public string nmWrong { get; set; }
            public string overTime { get; set; }
            public string overMoves { get; set; }
            public string minMoves { get; set; }

       
    }
}