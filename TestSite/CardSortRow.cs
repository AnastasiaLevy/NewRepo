using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace TestSite
{
    public class CardSortRow
    {
        public string category { get; set; }
        public string respCount { get; set; }
        public string resTime { get; set; }
        public string correctCnt { get; set; }
        public string errorCnt { get; set; }
        public string errorTime { get; set; }
        public string persevResp { get; set; }
        public string persevTime { get; set; }
        public string persevRespError { get; set; }
        public string persevRespErrTime { get; set; }
        public string uniqueErr { get; set; }
        public string uniqErrTime { get; set; }
        public string failureSetCnt { get; set; }
        public string moves { get; set; }
    }
    public class RowList
    {
        List<CardSortRow> rowList { get; set; }
    }
}