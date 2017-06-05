using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Script.Services;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;
using TestSite.BL.Models;
using TestSite.BL.Services;
using TestSite.Models;


namespace TestSite.Tests
{
    public partial class MemoryCardsPage : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        [WebMethod]
        [ScriptMethod(UseHttpGet = true)]
        public static MemoryCardsViewModel GetMemCardsValues()
        {
            MemoryCardsStructureServices _memoryStructureServices = new MemoryCardsStructureServices();
            MemoryCardsTextsServices _memoryTextsServices = new MemoryCardsTextsServices();
            MemoryCardsImagesServices _memoryImagesServices = new MemoryCardsImagesServices();
            var structureData = _memoryStructureServices.GetAllStructures();
            var textsData = _memoryTextsServices.GetAllTexts();
            var imagesData = _memoryImagesServices.GetAllImages();
            return new MemoryCardsViewModel
            {
                Structures = structureData,
                Texts = textsData,
                Images = imagesData
            };
        }
        
        [WebMethod]
        public static void SaveResults(List<MemoryCardsResults> result)
        {
            MemoryCardsResultService _memoryCardsResultService = new MemoryCardsResultService();
            foreach(var row in result)
            {
                _memoryCardsResultService.InsertRow(row);
            }
            
        }
    }
}