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

        protected string _baseUrl;
        protected string _itemName = "CogQuiz Desktop";
        protected string _page = "/Tests/DesktopTowerOfLondon.aspx";

        protected string _userId;
        protected MembershipUser _user;

        public string LicenseEmail { get; set; }
        public string Key { get; set; }

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
                login.Visible = false;
                profOpt.Visible = true;
                logOut.Visible = true;

                _user = Membership.GetUser(User.Identity.Name);
                _userId = _user.ProviderUserKey.ToString();
                LicenseEmail = _user.Email;
                Key = DataMethods.GetTowerOfLondonAppKey(_userId);
            }
            else
            {
                login.Visible = true;
                profOpt.Visible = false;
                logOut.Visible = false;
            }

            if ((IsPostBack || PayPalSimulation) && string.IsNullOrEmpty(Key) && User.Identity.IsAuthenticated)
            {
                if (PayPalSimulation) Session["PayPalTOLSimulation"] = false;

                //  'st' parameter - added by paypal
                if (!String.IsNullOrEmpty(Request.QueryString["st"]) && Request.QueryString["st"].Equals("Completed", StringComparison.InvariantCultureIgnoreCase))
                {
                    bool success = DataMethods.SetupTowerOfLondonAppKey(_userId);
                    Key = DataMethods.GetTowerOfLondonAppKey(_userId);
                    ShowAppKey();
                }
                else
                {
                    //TODO: need to show error - paid failed
                    ShowBuyButton();
                }
            }
            else
            {
                if (string.IsNullOrEmpty(Key))
                {
                    ShowBuyButton();
                }
                else
                {
                    ShowAppKey();
                }
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
                Response.Redirect(CommonMethods.PostPaypal(10, 1, _baseUrl, _itemName, _page), true);
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
    }
}