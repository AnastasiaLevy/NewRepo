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

        private static int testId = 0; 
        protected void Page_Load(object sender, EventArgs e)
        {
        //    string testid = Request.QueryString["testid"];
        //    if (!String.IsNullOrEmpty(testid))
        //    {
        //        testId = Int32.Parse(testid);
        //    }
        testId = 1;
        }

        [WebMethod]
        [ScriptMethod(UseHttpGet = true)]
        public static MemoryCardsModifyViewModel GetAllData()
        {
            if (testId != 0)
            {
                MemoryCardsStructureServices _memoryStructureServices = new MemoryCardsStructureServices();
                MemoryCardsTextsServices _memoryTextsServices = new MemoryCardsTextsServices();
                MemoryCardsImagesServices _memoryImagesServices = new MemoryCardsImagesServices();
                MemoryCardsTestsServices _memoryTestsServices = new MemoryCardsTestsServices();

                var trials = _memoryTestsServices.GetAll().Where(x => x.TestId == testId).ToList();
                List<MemoryCardsTexts> texts = new List<MemoryCardsTexts>();
                foreach (var trial in trials)
                {
                    texts.AddRange(_memoryTextsServices.GetAll().Where(x => x.TestNumber == trial.Id).ToList());
                }

                List<MemoryCardsStructure> structures = new List<MemoryCardsStructure>();
                foreach (var trial in trials)
                {
                    structures.AddRange(_memoryStructureServices.GetAll().Where(x => x.TestNumber == trial.Id).ToList());
                }

                var images = _memoryImagesServices.GetAll();

                return new MemoryCardsModifyViewModel
                {
                    MemoryCardsTests = trials,
                    MemoryCardsTexts = texts,
                    MemoryCardsStructure = structures,
                    MemoryCardsImages = images

                };
            }
            else
            {
                MemoryCardsService _memoryCardsServices = new MemoryCardsService();
                MemoryCardsImagesServices _memoryImagesServices = new MemoryCardsImagesServices();
                return new MemoryCardsModifyViewModel()
                {
                    MemoryCardsTests = new List<MemoryCardsTests> { new MemoryCardsTests { Id = 1, Images = "face", Name = "Trial1", TestId = 0 } },
                    MemoryCardsTexts = new List<MemoryCardsTexts> { new MemoryCardsTexts { Name = "Message", Text="",TestNumber=1 } },
                    MemoryCardsStructure = new List<MemoryCardsStructure> { new MemoryCardsStructure { Name="Matrix", TestNumber = 1, Structure = "4;3"},
                        new MemoryCardsStructure { Name="TimeTest",Structure="", TestNumber=1} },
                    MemoryCardsImages = _memoryImagesServices.GetAll()
            };
            }

            
                 
            
        }
        [WebMethod]
        public static void SaveResults(MemoryCardsConfigSaveResult result)
        {
            //DataMethods.UpdateMemoryCardsTrial(result);
        }



    }
}