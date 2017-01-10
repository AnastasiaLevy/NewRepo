using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using TestSite.DAL;

using System.Web.Security;

namespace TestSite
{
    public partial class Registration : System.Web.UI.Page
    {
        protected MembershipUser _user;
        protected string _userId;
        protected bool _isProfilefilled;
        protected string _redirectTo;
        protected void Page_Load(object sender, EventArgs e)
        {

            _user = Membership.GetUser(User.Identity.Name);
            _userId = _user.ProviderUserKey.ToString();
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
            if (message == lact1.InnerText)
                act1.Checked = true;
            else if (message == lact2.InnerText)
                act2.Checked = true;
            else if (message == lact3.InnerText)
                act3.Checked = true;
            else if (message == lact4.InnerText)
                act4.Checked = true;
            else if (message == lact5.InnerText)
                act5.Checked = true;
        }

        private void SetExeLevel(string message)
        {
            if (message == lexe1.InnerText)
                exe1.Checked = true;
            else if (message == lexe2.InnerText)
                exe2.Checked = true;
            else if (message == lexe3.InnerText)
                exe3.Checked = true;
            else if (message == lexe4.InnerText)
                exe4.Checked = true;
            else if (message == lexe5.InnerText)
                exe5.Checked = true;
        }

        private void SetSelfEsteem(string message)
        {

            if (message == lesteem1.InnerText)
                esteem1.Checked = true;
            else if (message == lesteem2.InnerText)
                esteem2.Checked = true;
            else if (message == lesteem3.InnerText)
                esteem3.Checked = true;
            else if (message == lesteem4.InnerText)
                esteem4.Checked = true;
        }

        private void SetHealth(string message)
        {
            if (message == lhealth1.InnerText)
                health1.Checked = true;
            else if (message == lhealth2.InnerText)
                health2.Checked = true;
            else if (message == lhealth3.InnerText)
                health3.Checked = true;
            else if (message == lhealth4.InnerText)
                health4.Checked = true;
        }

        private bool ProfileIsFilled(string p)
        {
            return DataMethods.GetRegKey(p);
        }

        private void PopulateEethnicity()
        {
            ddlEthnicity.Items.Clear();
            ddlEthnicity.Items.Add(new ListItem("White/Non-hispanic", "0"));
            ddlEthnicity.Items.Add(new ListItem("African American/African origin", "1"));
            ddlEthnicity.Items.Add(new ListItem("Hispanic or Latino", "2"));
            ddlEthnicity.Items.Add(new ListItem("Asian", "3"));
            ddlEthnicity.Items.Add(new ListItem("American Indian or Alaskan Native", "4"));
            ddlEthnicity.Items.Add(new ListItem("Native Hawaiian or Pacific Islander", "5"));


        }

        private void PopulateEducation()
        {
            ddlEducation.Items.Clear();
            ddlEducation.Items.Add(new ListItem("Some High School", "0"));
            ddlEducation.Items.Add(new ListItem("High School Grad", "1"));
            ddlEducation.Items.Add(new ListItem("Some University", "2"));
            ddlEducation.Items.Add(new ListItem("Univ Undegraduate", "3"));
            ddlEducation.Items.Add(new ListItem("Graduate School", "4"));
            ddlEducation.Items.Add(new ListItem("PhD", "5"));
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
            ddlIncome.Items.Add(new ListItem("less than 10 000", "0"));
            ddlIncome.Items.Add(new ListItem("10 001 -- 25 000", "1"));
            ddlIncome.Items.Add(new ListItem("25 001 -- 50 000", "2"));
            ddlIncome.Items.Add(new ListItem("50 001 -- 100 000", "3"));
            ddlIncome.Items.Add(new ListItem("more than 100 000", "4"));

        }
        private void PopulateHand()
        {
            ddlHand.Items.Clear();
            ddlHand.Items.Add(new ListItem("left", "0"));
            ddlHand.Items.Add(new ListItem("right", "1"));
            ddlHand.Items.Add(new ListItem("ambidextrous", "2"));

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
                error.Text = "Please check this to continue";
            }
            else
            {
                error.Text = "";
            }

            userName = User.Identity.Name;
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

            int id = 0;
            id = DataMethods.SaveRegistration(firstName, lastName, education, medications, gender, hand, brainActivity, ethnisity, language, headInjury, selfEsteem, exercise, userName, selfHealth, birthDate, isOnMeds, isInj, isFilled, _userId, income);
            if (id > 0 && cbAgree.Checked == true)
            {
                DataMethods.UpdateRegCheck(_userId);
                PopulateRegistration();
            }
            if (_redirectTo != null)
            {
                Response.Redirect(_redirectTo);
            }
        }

        private string GetSelfHealth()
        {
            if (health1.Checked)
                return lhealth1.InnerText;
            else if (health2.Checked)
                return lhealth2.InnerText;
            else if (health3.Checked)
                return lhealth3.InnerText;
            else if (health4.Checked)
                return lhealth4.InnerText;
            else if (health5.Checked)
                return lhealth5.InnerText;
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
                return lesteem1.InnerText;
            else if (esteem2.Checked)
                return lesteem2.InnerText;
            else if (esteem3.Checked)
                return lesteem3.InnerText;
            else if (esteem4.Checked)
                return lesteem4.InnerText;
            else if (esteem5.Checked)
                return lesteem5.InnerText;
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
                return lexe1.InnerText;
            else if (exe2.Checked)
                return lexe2.InnerText;
            else if (exe3.Checked)
                return lexe3.InnerText;
            else if (exe4.Checked)
                return lexe4.InnerText;
            else if (exe5.Checked)
                return lexe4.InnerText;
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
                return lact1.InnerText;
            else if (act2.Checked)
                return lact2.InnerText;
            else if (act3.Checked)
                return lact3.InnerText;
            else if (act4.Checked)
                return lact4.InnerText;
            else if (act5.Checked)
                return lact4.InnerText;
            else
                return "";

        }
    }
}