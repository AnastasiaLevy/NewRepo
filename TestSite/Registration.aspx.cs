using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using TestSite.DAL;

using System.Web.Security;
using TestSite.HelpClasses;

namespace TestSite
{
    public partial class Registration : System.Web.UI.Page
    {
        protected MembershipUser _user;
        protected string _userId;
        protected bool _isProfilefilled;
        protected string _redirectTo;
        protected string _userName;

        protected override void InitializeCulture()
        {
            LanguageManager.ApplyLanguage();
            base.InitializeCulture();
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            fbBad.Visible = false;
            fbGood.Visible = false;

            if (!String.IsNullOrEmpty(Request.QueryString["provId"]))
            {
                _userId = Request.QueryString["userId"];
               _userName = Request.QueryString["userName"];
                //A1.HRef = "~/Provider/ProviderPortal.aspx";

            }
            else
            {
                //A1.HRef = "~/UserProfile.aspx";
                _user = Membership.GetUser(User.Identity.Name);
                _userName = User.Identity.Name;
                _userId = _user.ProviderUserKey.ToString();
            }
            _isProfilefilled = ProfileIsFilled(_userId);
            if (!String.IsNullOrEmpty(Request.QueryString["return"]) && Request.QueryString["return"] != null)
            {
                _redirectTo = Request.QueryString["return"].ToString();
            }

            if (!IsPostBack)
            {
                if (User.Identity.IsAuthenticated)
                {
                    PopulateEducation();
                    PopulateIncome();
                    PopulateHand();
                    PopulateInj();
                    PopulateEethnicity();
                }

                if (_isProfilefilled)
                {
                    PopulateRegistration();
                }
            }
        }

        private void PopulateRegistration()
        {
            DataTable data = DataMethods.GetRegistarionDataByUser(_userId);
            cbAgree.Checked = Convert.ToBoolean(data.Rows[0]["disclamerField"]);
            cbAgree.Enabled = !cbAgree.Checked;
            txtFirstName.Value = data.Rows[0]["firstName"].ToString();
            txtLastName.Value = data.Rows[0]["lastName"].ToString();
            DateTime date = (DateTime)data.Rows[0]["birthDate"];
            txtBDay.Text = date.ToString("MM/dd/yyyy", System.Globalization.CultureInfo.InvariantCulture);
            ddlEducation.SelectedIndex = data.Rows[0]["education"] != null ? Convert.ToInt32(data.Rows[0]["education"]) : ddlEducation.SelectedIndex;

            if (data.Rows[0]["medications"] != null)
            {
                if ((bool)data.Rows[0]["medications"])
                    cbMedicationsY.Checked = true;
                else
                    cbMedicationsN.Checked = true;
            }
            cbMedicationsY.Checked = (bool)data.Rows[0]["medications"];

            txtKindMeds.Text = data.Rows[0]["medName"].ToString();
            ddlIncome.SelectedIndex = data.Rows[0]["income"] != null ? Convert.ToInt32(data.Rows[0]["income"]) : ddlIncome.SelectedIndex;
            ddlHand.SelectedIndex = data.Rows[0]["hand"] != null ? Convert.ToInt32(data.Rows[0]["hand"]) : ddlIncome.SelectedIndex;
            if (data.Rows[0]["gender"].ToString() != null)
            {
                cbMale.Checked = data.Rows[0]["gender"].ToString() == "m";
                cbFmale.Checked = data.Rows[0]["gender"].ToString() == "f";
            }
            if (data.Rows[0]["headInjury"] != null)
            {
                if ((bool)data.Rows[0]["headInjury"])
                {
                    cbHeadInjY.Checked = true;
                    ddlHeadInjNum.SelectedValue = data.Rows[0]["headInjAmount"].ToString();
                }

                else
                {
                    cbHeadInjN.Checked = true;
                    ddlHeadInjNum.SelectedIndex = 0;
                }


            }
            ddlEthnicity.SelectedIndex = data.Rows[0]["ethnisity"] != null ? Convert.ToInt32(data.Rows[0]["ethnisity"]) : ddlEthnicity.SelectedIndex;

            if (data.Rows[0]["language"] != null)
            {
                if (data.Rows[0]["language"].ToString() == "English")
                {
                    cbEnglYes.Checked = true;
                }
                else
                {
                    cbEnglNo.Checked = true;
                    lblFstLang.Visible = true;
                    firstLang.Text = data.Rows[0]["language"].ToString();
                }


            }
            if (data.Rows[0]["brainActivity"] != null)
                SetBrainActivity(data.Rows[0]["brainActivity"].ToString());
            if (data.Rows[0]["selfHealth"] != null)
                SetHealth(data.Rows[0]["selfHealth"].ToString());
            if (data.Rows[0]["selfEsteem"] != null)
                SetSelfEsteem(data.Rows[0]["selfEsteem"].ToString());
            if (data.Rows[0]["exercise"] != null)
                SetExeLevel(data.Rows[0]["exercise"].ToString());
        }

        private void SetBrainActivity(string message)
        {
            if (message == "0-5")
                act1.Checked = true;
            else if (message == "6-10")
                act2.Checked = true;
            else if (message == "11-15")
                act3.Checked = true;
            else if (message == "16-20")
                act4.Checked = true;
            else if (message == "more than 20")
                act5.Checked = true;
        }

        private void SetExeLevel(string message)
        {
            if (message == "0-1")
                exe1.Checked = true;
            else if (message == "2-3")
                exe2.Checked = true;
            else if (message == "4-5")
                exe3.Checked = true;
            else if (message == "6-7")
                exe4.Checked = true;
            else if (message == "8-9")
                exe5.Checked = true;
        }

        private void SetSelfEsteem(string message)
        {

            if (message == "Low")
                esteem1.Checked = true;
            else if (message == "Below Avarage")
                esteem2.Checked = true;
            else if (message == "Average")
                esteem3.Checked = true;
            else if (message == "Above Average")
                esteem4.Checked = true;
            else if (message == "High")
                esteem5.Checked = true;
        }

        private void SetHealth(string message)
        {
            if (message == "Poor")
                health1.Checked = true;
            else if (message == "Below Average")
                health2.Checked = true;
            else if (message == "Average")
                health3.Checked = true;
            else if (message == "Above Average")
                health4.Checked = true;
            else if (message == "Excellent")
                health5.Checked = true;
        }

        private bool ProfileIsFilled(string p)
        {
            return DataMethods.GetRegKey(p);
        }

        private void PopulateEethnicity()
        {
            ddlEthnicity.Items.Clear();
            ddlEthnicity.Items.Add(new ListItem(GetLocalResourceObject("ddlEthnicity_item1").ToString(), "0"));
            ddlEthnicity.Items.Add(new ListItem(GetLocalResourceObject("ddlEthnicity_item2").ToString(), "1"));
            ddlEthnicity.Items.Add(new ListItem(GetLocalResourceObject("ddlEthnicity_item3").ToString(), "2"));
            ddlEthnicity.Items.Add(new ListItem(GetLocalResourceObject("ddlEthnicity_item4").ToString(), "3"));
            ddlEthnicity.Items.Add(new ListItem(GetLocalResourceObject("ddlEthnicity_item5").ToString(), "4"));
            ddlEthnicity.Items.Add(new ListItem(GetLocalResourceObject("ddlEthnicity_item6").ToString(), "5"));


        }

        private void PopulateEducation()
        {
            ddlEducation.Items.Clear();
            ddlEducation.Items.Add(new ListItem(GetLocalResourceObject("ddlEducation_item1").ToString(), "0"));
            ddlEducation.Items.Add(new ListItem(GetLocalResourceObject("ddlEducation_item2").ToString(), "1"));
            ddlEducation.Items.Add(new ListItem(GetLocalResourceObject("ddlEducation_item3").ToString(), "2"));
            ddlEducation.Items.Add(new ListItem(GetLocalResourceObject("ddlEducation_item4").ToString(), "3"));
            ddlEducation.Items.Add(new ListItem(GetLocalResourceObject("ddlEducation_item5").ToString(), "4"));
            ddlEducation.Items.Add(new ListItem(GetLocalResourceObject("ddlEducation_item6").ToString(), "5"));
        }

        private void PopulateInj()
        {
            ddlHeadInjNum.Items.Clear();
            for (int i = 1; i < 10; i++)
            {
                ddlHeadInjNum.Items.Add(new ListItem(i.ToString(), i.ToString()));
            }

            ddlHeadInjNum.Items.Add(new ListItem(">", "11"));
            ddlHeadInjNum.SelectedValue = "0";

        }

        private void PopulateIncome()
        {
            ddlIncome.Items.Clear();
            ddlIncome.Items.Add(new ListItem(GetLocalResourceObject("ddlIncome_item1").ToString(), "0"));
            ddlIncome.Items.Add(new ListItem(GetLocalResourceObject("ddlIncome_item2").ToString(), "1"));
            ddlIncome.Items.Add(new ListItem(GetLocalResourceObject("ddlIncome_item3").ToString(), "2"));
            ddlIncome.Items.Add(new ListItem(GetLocalResourceObject("ddlIncome_item4").ToString(), "3"));
            ddlIncome.Items.Add(new ListItem(GetLocalResourceObject("ddlIncome_item5").ToString(), "4"));

        }
        private void PopulateHand()
        {
            ddlHand.Items.Clear();
            ddlHand.Items.Add(new ListItem(GetLocalResourceObject("ddlHand_item1").ToString(), "0"));
            ddlHand.Items.Add(new ListItem(GetLocalResourceObject("ddlHand_item2").ToString(), "1"));
            ddlHand.Items.Add(new ListItem(GetLocalResourceObject("ddlHand_item3").ToString(), "2"));

        }

        protected void submit_Click(object sender, EventArgs e)
        {
            string firstName,
                   lastName,
                   education,
                   medications,
                   gender,
                   hand,
                   brainActivity,
                   ethnisity,
                   language,
                   headInjury,
                   selfEsteem,
                   userName,
                   selfHealth,
                   income,
                   exercise = "";
            bool isInj = false;
            bool isOnMeds = false;
            bool isFilled = false;

            DateTime birthDate;
            if (cbAgree.Checked != true)
            {
                error.Text = "*Please check this to continue";
            }
            else
            {
                error.Text = "";


               
                birthDate = (txtBDay.Text != null && txtBDay.Text != "") ? DateTime.ParseExact(txtBDay.Text, "MM/dd/yyyy", System.Globalization.CultureInfo.InvariantCulture) : DateTime.Today;

                exercise = GetExercise();
                firstName = txtFirstName.Value;
                lastName = txtLastName.Value;
                education = ddlEducation.SelectedValue;
                medications = GetMedications(ref isOnMeds);

                hand = ddlHand.SelectedValue;
                brainActivity = GetBrainActValue();
                gender = GetGender();
                ethnisity = ddlEthnicity.SelectedValue;
                language = GetLanguage();
                selfEsteem = GetSelfEsteem();
                selfHealth = GetSelfHealth();
                headInjury = GetHeadInjury(ref isInj);
                income = ddlIncome.SelectedValue;
                int providerId = GetUserProviderId(_userId);
                int id = 0;
                try
                {

               
                id = DataMethods.SaveRegistration(firstName, lastName, education, medications, gender, hand,
                    brainActivity, ethnisity, language, headInjury, selfEsteem, exercise, _userName, selfHealth,
                    birthDate, isOnMeds, isInj, isFilled, _userId, income, cbAgree.Checked, providerId);
                    fbGood.Visible = true;
                }
                catch(Exception ex)
                {
                    fbBad.Visible = true;
                }
                if (id > 0)
                {
                    DataMethods.UpdateRegCheck(_userId);
                    PopulateRegistration();
                }
                if (_redirectTo != null)
                {
                    Response.Redirect(_redirectTo);
                }
            }
        }

        private int GetUserProviderId(string _userId)
        {
         
            DataTable dt = DAL.DataMethods.GetUserProviderId(_userId);

            return (dt.Rows.Count > 0) && dt.Rows[0]["providerId"] !=DBNull.Value ? Convert.ToInt32(dt.Rows[0]["providerId"]) : 0;
        }

        private string GetSelfHealth()
        {
            if (health1.Checked)
                return "Poor";
            else if (health2.Checked)
                return "Below Average";
            else if (health3.Checked)
                return "Average";
            else if (health4.Checked)
                return "Above Average";
            else if (health5.Checked)
                return "Excellent";
            else
                return "";
        }

        private string GetMedications(ref bool isOnMeds)
        {
            string medications = "";
            if (cbMedicationsN.Checked == true)
            {
                return "";
            }
            if (txtKindMeds.Text.Length > 0)
            {
                isOnMeds = true;
                medications = txtKindMeds.Text;
            }
            return medications;
        }

        private string GetSelfEsteem()
        {
            if (esteem1.Checked)
                return "Low";
            else if (esteem2.Checked)
                return "Below Avarage";
            else if (esteem3.Checked)
                return "Average";
            else if (esteem4.Checked)
                return "Above Average";
            else if (esteem5.Checked)
                return "High";
            else
                return "";
        }

        private string GetHeadInjury(ref bool isInj)
        {
            if (cbHeadInjN.Checked)
            {
                return "0";
            }
            else if (cbHeadInjY.Checked)
            {
                isInj = true;
                return ddlHeadInjNum.SelectedValue;
            }

            else
                return "";
        }

        private string GetExercise()
        {
            if (exe1.Checked)
                return "0-1";
            else if (exe2.Checked)
                return "2-3";
            else if (exe3.Checked)
                return "4-5";
            else if (exe4.Checked)
                return "6-7";
            else if (exe5.Checked)
                return "8-9";
            else
                return "";
        }

        private string GetLanguage()
        {
            if (cbEnglYes.Checked)
                return "English";
            else if (firstLang.Text != null)
                return firstLang.Text;
            else
                return "";

        }

        private string GetGender()
        {
            if (cbMale.Checked)
                return "m";
            else if (cbFmale.Checked)
                return "f";
            else
                return "";


        }

        private string GetBrainActValue()
        {
            if (act1.Checked)
                return "0-5";
            else if (act2.Checked)
                return "6-10";
            else if (act3.Checked)
                return "11-15";
            else if (act4.Checked)
                return "16-20";
            else if (act5.Checked)
                return "more than 20";
            else
                return "";

        }
    }
}