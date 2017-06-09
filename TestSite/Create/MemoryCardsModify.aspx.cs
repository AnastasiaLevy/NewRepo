using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Script.Services;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;
using TestSite.BL.Models;
using TestSite.BL.Services;
using TestSite.DAL;
using TestSite.Models;

namespace TestSite.Create
{
    public partial class MemoryCardsModify : System.Web.UI.Page
    {
        

        protected void Page_Load(object sender, EventArgs e)
        {
            

        }

        [WebMethod]
        [ScriptMethod(UseHttpGet = true)]
        public static MemoryCardsModifyViewModel GetAllData()
        {
            MemoryCardsStructureServices _memoryStructureServices = new MemoryCardsStructureServices();
            MemoryCardsTextsServices _memoryTextsServices = new MemoryCardsTextsServices();
            MemoryCardsImagesServices _memoryImagesServices = new MemoryCardsImagesServices();
            MemoryCardsTestsServices _memoryTestsServices = new MemoryCardsTestsServices();

            return new MemoryCardsModifyViewModel
            {
                MemoryCardsTests = _memoryTestsServices.GetAllTests(),
                MemoryCardsTexts = _memoryTextsServices.GetAllTexts(),
                MemoryCardsStructure = _memoryStructureServices.GetAllStructures(),
                MemoryCardsImages = _memoryImagesServices.GetAllImages()

            };
        }

        [WebMethod]
        public static void SaveResults(MemoryCardsConfigSaveResult result)
        {
            DataMethods.UpdateMemoryCardsTrial(result);
        }

        
        
    }
}