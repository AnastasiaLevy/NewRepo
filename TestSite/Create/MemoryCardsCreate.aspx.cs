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
using TestSite.HelpClasses;
using TestSite.Models;
using TestSite.UserControls;

namespace TestSite.Create
{
    public partial class MemoryCardsCreate : System.Web.UI.Page
    {
        private static int id = 0;
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!Page.IsPostBack)
            {
                string parameter = Request.QueryString["testId"];
                if(!String.IsNullOrEmpty(parameter))
                {
                    Int32.TryParse(parameter, out id);
                    addTrial.Style.Add("display","none");
                    txtTrialNumber.Style.Add("display", "none");
                    headParagraph.Style.Add("display", "none");
                    MemoryCardsService _memoryCardsServices = new MemoryCardsService();
                    MemoryCardsStructureServices __memoryStructureServices = new MemoryCardsStructureServices();
                    MemoryCardsTestsServices _memoryTestsServices = new MemoryCardsTestsServices();
                    MemoryCardsTextsServices _memoryTextsServices = new MemoryCardsTextsServices();
                    var test = _memoryCardsServices.GetAll().FirstOrDefault(x => x.Id == id);
                    var trials = _memoryTestsServices.GetAll().Where(x => x.TestId == test.Id);
                    testNameId.Value = test.Id.ToString();
                    testName.Value = test.Name;
                    foreach (var trial in trials)
                    {
                        var texts = _memoryTextsServices.GetAll().FirstOrDefault(x => x.TestNumber == trial.Id);
                        var structures = __memoryStructureServices.GetAll().Where(x => x.TestNumber == trial.Id);
                        var control = (MemoryCardsModifyPanel)LoadControl("~/UserControls/MemoryCardsModifyPanel.ascx");
                        control.trialNameId.Value = trial.Id.ToString();
                        control.trialName.Value = trial.Name;
                        control.testText.Value = texts.Text;
                        if(structures.First(x=>x.Name.ToLower().Contains("matrix")).Structure == "6;4")
                        {
                            control.mediumMatrix.Attributes.Add("class", "btn btn-success");
                        }
                        else if(structures.First(x => x.Name.ToLower().Contains("matrix")).Structure == "4;3")
                        {
                            control.smallMatrix.Attributes.Add("class", "btn btn-success");
                        }

                        control.overTime.Value = structures.First(x => x.Name.ToLower().Contains("time")).Structure;
                        control.selectImage.Value = trial.Images;
                        panelPlaceholder.Controls.Add(control);
                        panelPlaceholder.Controls.Add(new LiteralControl("<BR>"));
                    }
                }
                addTrial.Visible = true;
                txtTrialNumber.Visible = true;
            }
           


        }

        [WebMethod]
        [ScriptMethod(UseHttpGet = true)]
        public static MemoryCardsModifyViewModel GetAllData()
        { 
            MemoryCardsService _memoryCardsServices = new MemoryCardsService();
            MemoryCardsImagesServices _memoryImagesServices = new MemoryCardsImagesServices();
            return new MemoryCardsModifyViewModel()
            {
                MemoryCardsImages = _memoryImagesServices.GetAll()
            };
        }

        protected void addTrial_Click(object sender, EventArgs e)
        {
            var count = Int32.Parse(txtTrialNumber.Text);
            for (int i = 0; i < count; i++)
            {
                var control = (MemoryCardsModifyPanel)LoadControl("~/UserControls/MemoryCardsModifyPanel.ascx");
                control.smallMatrix.Attributes.Add("class", "btn btn-success");
                panelPlaceholder.Controls.Add(control);
                panelPlaceholder.Controls.Add(new LiteralControl("<BR>"));
            }
            
        }

        protected void Page_PreInit(object sender, EventArgs e)
        {
            
        }

        [WebMethod]
        public static void SaveResults(MemoryCardsConfigSaveResult result)
        {
            
        }

        [WebMethod]
        public static void SaveResults(string testName, string testNameId, List<MemoryCardsConfigSaveResult> result)
        {
            MemoryCards lastRow;
            if(Int32.Parse(testNameId) == 0)
            {
                DataMethods.CreateMemoryCards(testName, Int32.Parse(testNameId));
                MemoryCardsService _memoryCardsServices = new MemoryCardsService();
                lastRow  = _memoryCardsServices.GetAll().Last();
                foreach(var res in result)
                {
                    DataMethods.InsertMemoryCardsTrial(lastRow.Id, res);
                }
                
            }
            else
            {
                MemoryCardsService _memoryCardsServices = new MemoryCardsService();
                lastRow = _memoryCardsServices.GetAll().Last();
                foreach (var res in result)
                {
                    DataMethods.UpdateMemoryCardsTrial(lastRow.Name,lastRow.Id, res);
                }
                
            }
            
        }

        


    }
}