using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using TestSite.BL.Models;
using TestSite.BL.Services;

namespace TestSite.Create
{
    public partial class MemoryCardsModify : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            MemoryCardsStructureServices _memoryStructureServices = new MemoryCardsStructureServices();
            MemoryCardsTextsServices _memoryTextsServices = new MemoryCardsTextsServices();
            MemoryCardsImagesServices _memoryImagesServices = new MemoryCardsImagesServices();
            MemoryCardsTestsServices _memoryTestsServices = new MemoryCardsTestsServices();
            var structureData = _memoryStructureServices.GetAllStructures();
            var textsData = _memoryTextsServices.GetAllTexts();
            var imagesData = _memoryImagesServices.GetAllImages();
            var testsData = _memoryTestsServices.GetAllTests();

            int testNumber = testsData.First().Id;
            testName.Value = testsData.First().Name;
            instructions.Value = textsData.Where(x => x.TestNumber == testNumber).First().Text;
            overTime.Value = structureData.Where(x => x.TestNumber == testNumber).First(x => x.Name.ToLower().Contains("time")).Structure;
            
            var memoryCards = new MemoryCardsViewModel
            {
                Structures = structureData,
                Texts = textsData,
                Images = imagesData
            };
        }
    }
}