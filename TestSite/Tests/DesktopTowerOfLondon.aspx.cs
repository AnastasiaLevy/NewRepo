using Licensing;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Security.Cryptography;
using System.Text;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using TestSite.DAL;
using TestSite.HelpClasses;

namespace TestSite.Tests
{
    public partial class DesktopTowerOfLondon : System.Web.UI.Page
    {
        // Helper class for using pem key format
        internal static class PEMToX509
        {
            const string KEY_HEADER = "-----BEGIN RSA PRIVATE KEY-----";
            const string KEY_FOOTER = "-----END RSA PRIVATE KEY-----";

            internal static RSACryptoServiceProvider GetRSA(string pem)
            {
                RSACryptoServiceProvider rsa = null;

                if (IsPrivateKeyAvailable(pem))
                {

                    string keyFormatted = pem;

                    int cutIndex = keyFormatted.IndexOf(KEY_HEADER);
                    keyFormatted = keyFormatted.Substring(cutIndex, keyFormatted.Length - cutIndex);
                    cutIndex = keyFormatted.IndexOf(KEY_FOOTER);
                    keyFormatted = keyFormatted.Substring(0, cutIndex + KEY_FOOTER.Length);
                    keyFormatted = keyFormatted.Replace(KEY_HEADER, "");
                    keyFormatted = keyFormatted.Replace(KEY_FOOTER, "");
                    keyFormatted = keyFormatted.Replace("\r", "");
                    keyFormatted = keyFormatted.Replace("\n", "");
                    keyFormatted = keyFormatted.Trim();

                    byte[] privateKeyInDER = System.Convert.FromBase64String(keyFormatted);

                    rsa = DecodeRSAPrivateKey(privateKeyInDER);
                }

                return rsa;
            }

            private static bool IsPrivateKeyAvailable(string privateKeyInPEM)
            {
                return (privateKeyInPEM != null && privateKeyInPEM.Contains(KEY_HEADER)
                    && privateKeyInPEM.Contains(KEY_FOOTER));
            }

            //------- Parses binary ans.1 RSA private key; returns RSACryptoServiceProvider  ---
            public static RSACryptoServiceProvider DecodeRSAPrivateKey(byte[] privkey)
            {
                byte[] MODULUS, E, D, P, Q, DP, DQ, IQ;

                // ---------  Set up stream to decode the asn.1 encoded RSA private key  ------
                MemoryStream mem = new MemoryStream(privkey);
                BinaryReader binr = new BinaryReader(mem);    //wrap Memory Stream with BinaryReader for easy reading
                byte bt = 0;
                ushort twobytes = 0;
                int elems = 0;
                try
                {
                    twobytes = binr.ReadUInt16();
                    if (twobytes == 0x8130) //data read as little endian order (actual data order for Sequence is 30 81)
                        binr.ReadByte();        //advance 1 byte
                    else if (twobytes == 0x8230)
                        binr.ReadInt16();       //advance 2 bytes
                    else
                        return null;

                    twobytes = binr.ReadUInt16();
                    if (twobytes != 0x0102) //version number
                        return null;
                    bt = binr.ReadByte();
                    if (bt != 0x00)
                        return null;


                    //------  all private key components are Integer sequences ----
                    elems = GetIntegerSize(binr);
                    MODULUS = binr.ReadBytes(elems);

                    elems = GetIntegerSize(binr);
                    E = binr.ReadBytes(elems);

                    elems = GetIntegerSize(binr);
                    D = binr.ReadBytes(elems);

                    elems = GetIntegerSize(binr);
                    P = binr.ReadBytes(elems);

                    elems = GetIntegerSize(binr);
                    Q = binr.ReadBytes(elems);

                    elems = GetIntegerSize(binr);
                    DP = binr.ReadBytes(elems);

                    elems = GetIntegerSize(binr);
                    DQ = binr.ReadBytes(elems);

                    elems = GetIntegerSize(binr);
                    IQ = binr.ReadBytes(elems);

                    // ------- create RSACryptoServiceProvider instance and initialize with private key -----
                    RSACryptoServiceProvider RSA = new RSACryptoServiceProvider();
                    RSAParameters RSAparams = new RSAParameters();
                    RSAparams.Modulus = MODULUS;
                    RSAparams.Exponent = E;
                    RSAparams.D = D;
                    RSAparams.P = P;
                    RSAparams.Q = Q;
                    RSAparams.DP = DP;
                    RSAparams.DQ = DQ;
                    RSAparams.InverseQ = IQ;
                    RSA.ImportParameters(RSAparams);
                    return RSA;
                }
                catch (Exception)
                {
                    return null;
                }
                finally
                {
                    binr.Close();
                }
            }

            private static int GetIntegerSize(BinaryReader binary)
            {
                byte bt = 0;
                byte lowbyte = 0x00;
                byte highbyte = 0x00;
                int count = 0;

                bt = binary.ReadByte();

                if (bt != 0x02)
                    return 0;

                bt = binary.ReadByte();

                if (bt == 0x81)
                    count = binary.ReadByte();
                else if (bt == 0x82)
                {
                    highbyte = binary.ReadByte();
                    lowbyte = binary.ReadByte();
                    byte[] modint = { lowbyte, highbyte, 0x00, 0x00 };
                    count = BitConverter.ToInt32(modint, 0);
                }
                else
                    count = bt;

                while (binary.ReadByte() == 0x00)
                    count -= 1;

                binary.BaseStream.Seek(-1, SeekOrigin.Current);

                return count;
            }
        }

        private const string LibraryKey = "82820B44D0B2320F1EE844E7656A11587FCD08C1150CB84703532D37DC4313A0D71F7B57329D";

        protected string _baseUrl;
        protected string _itemName = "CogQuiz Desktop";
        protected string _page = "/Tests/DesktopTowerOfLondon.aspx";
        protected string _testId = Enums.TestId.TowerOfLondon;
        protected static int _userTestId;

        protected string _userId;
        protected MembershipUser _user;

        public string Key { get; set; }

        protected override void InitializeCulture()
        {
            LanguageManager.ApplyLanguage();
            base.InitializeCulture();
        }

        public bool PayPalSimulation
        {
            get
            {
                var paypalTest = Session["PayPalTOLSimulation"];
                return paypalTest == null ? false : (bool)paypalTest;
            }
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            _baseUrl = Request.Url.GetLeftPart(UriPartial.Authority);
            
            if (User.Identity.IsAuthenticated)
            {
                _user = Membership.GetUser(User.Identity.Name);
                _userId = _user.ProviderUserKey.ToString();
                Key = DataMethods.GetTowerOfLondonAppKey(_userId);

                if (hasPaidTest(_userId) && Key == null)
                {
                    this.IdentifierGroup.Visible = true;
                }
            }

            //  Catch response from paypal
            if ((IsPostBack || PayPalSimulation) && User.Identity.IsAuthenticated)
            {
                if (!String.IsNullOrEmpty(Request.QueryString["st"]) && Request.QueryString["st"].Equals("Completed", StringComparison.InvariantCultureIgnoreCase))
                {
                    if (PayPalSimulation) Session["PayPalSimulation"] = false;

                    this.IdentifierGroup.Visible = true;

                    if (!hasPaidTest(_userId) && string.IsNullOrEmpty(Key))
                    {
                        bool isPaid = UpdateTestPaid(_userId);
                    }
                }
            }

            if (User.Identity.IsAuthenticated && hasPaidTest(_userId))
            {
                ShowAppKey();
            }
            else
            {
                ShowBuyButton();
            }

            Page.DataBind();
        }

        protected void Buy_Click(object sender, EventArgs e)
        {
            if (!User.Identity.IsAuthenticated)
            {
                Response.Redirect("~/Login.aspx");
            }
            else
            {
                Response.Redirect(CommonMethods.PostPaypal(499, 1, _baseUrl, _itemName, _page), true);
            }
        }

        private void ShowBuyButton()
        {
            keyValueArea.Visible = false;
            buyButtonArea.Visible = true;
        }

        private void ShowAppKey()
        {
            keyValueArea.Visible = true;
            buyButtonArea.Visible = false;
        }

        protected void logOut_Click(object sender, EventArgs e)
        {
            FormsAuthentication.SignOut();
            Response.Redirect("~/MainPage.aspx");
        }

        protected void rbList_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void paypalsimulate_Click(object sender, EventArgs e)
        {
            var url = "DesktopTowerOfLondon.aspx?st=completed";
            Session["PayPalTOLSimulation"] = true;
            Response.Redirect(url);
        }

        private bool hasPaidTest(string _userId)
        {
            int id = DataMethods.HasPaidTest(_userId, _testId);
            if (id > 1)
            {
                _userTestId = id;
                return true;

            }
            else
                return false;
        }

        private bool UpdateTestPaid(string _userId)
        {
            try
            {
                DataMethods.InsertTestPaid(_userId, _testId);
                return true;
            }
            catch (Exception ex)
            {
                DAL.DataMethods.InsertErrorMessage(ex.ToString(), _userId, "CogQuest");
                return false;
            }
        }

        protected void GenerateLicenseBtn_Click(object sender, EventArgs e)
        {
            string identifier = IdentifierInput.Value;

            bool isKeySetup = SetupKey(identifier);

            if (isKeySetup)
            {
                Key = DataMethods.GetTowerOfLondonAppKey(_userId);
                Response.Redirect(Request.RawUrl);
            }
        }

        private bool SetupKey(string identifier)
        {
            try
            {
                string key = LicenseManager.Instance.GenerateLicenseKey(identifier, LibraryKey);
                return DataMethods.SaveWpfTOLAppKey(_userId, identifier, key);
            }
            catch (Exception exc)
            {
                return false;
            }
        }
    }
}