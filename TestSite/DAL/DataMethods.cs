using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Configuration;
using System.Data.SqlClient;
using TestSite.Models;
using TestSite.BL.Models;

namespace TestSite.DAL
{
    public class DataMethods
    {
        //static string connectionSring = ConfigurationManager.ConnectionStrings["TestApp"].ToString();
        static string connectionSring = ConfigurationManager.ConnectionStrings["AnaLocal"].ToString();
        public static DataTable GetEvents()
        {
            DataTable events = new DataTable();
            events.Columns.Add("date");
            events.Columns.Add("title");
            events.Columns.Add("description");
            events.Columns.Add("link");
            events.Columns.Add("comment");

            DataRow dr = events.NewRow();
            dr["date"] = DateTime.Now;
            dr["title"] = "Registration";
            dr["description"] = "Registering for the site. Some other stuff to make the thing look longer.Registering for the site. Some other stuff to make the thing look longer.";
            dr["link"] = "www.cogquiz.com";
            dr["comment"] = "Awesome Job!";
            events.Rows.Add(dr);

            dr = events.NewRow();
            dr["date"] = DateTime.Now.AddDays(-1);
            dr["title"] = "Test taken: Trails";
            dr["description"] = "Trails test taken with a saved results. To review results, follow the link";
            dr["link"] = "www.cogquiz.com";
            dr["comment"] = "Awesome Job!";
            events.Rows.Add(dr);

            dr = events.NewRow();
            dr["date"] = DateTime.Now.AddDays(-2);
            dr["title"] = "Test taken: Tower of London";
            dr["description"] = "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Amet cupiditate, delectus deserunt doloribus earum eveniet explicabo fuga iste magni maxime mollitia nemo neque, perferendis quod reprehenderit ut";
            dr["link"] = "www.cogquiz.com";
            dr["comment"] = "Awesome Job!";
            events.Rows.Add(dr);

            return events;

        }

        internal static DataSet GetProviderTable()
        {
            DataSet ds = new DataSet();
            SqlConnection conn = new SqlConnection(connectionSring);
            SqlCommand cmd = new SqlCommand("GetAllProviderTestsAdmin", conn);
            cmd.CommandType = CommandType.StoredProcedure;

            try
            {
                SqlDataAdapter adp = new SqlDataAdapter(cmd);
                adp.Fill(ds);
            }
            catch (Exception ex)
            {
                InsertErrorMessage(ex.ToString(), null, null, "GetAllProviderTestsAdmin");

            }

            return ds;
        }

        internal static DataSet GetAvailableTest()
        {
            DataSet ds = new DataSet();
            SqlConnection conn = new SqlConnection(connectionSring);
            SqlCommand cmd = new SqlCommand("GetAvailableTest", conn);
            cmd.CommandType = CommandType.StoredProcedure;

            try
            {
                SqlDataAdapter adp = new SqlDataAdapter(cmd);
                adp.Fill(ds);
            }
            catch (Exception ex)
            {
                InsertErrorMessage(ex.ToString(), null, null, "GetAvailableTest");

            }

            return ds;
        }

        internal static void InsertProviderTest(int providerId, string testType, int option, int number)
        {
            SqlConnection conn = new SqlConnection(connectionSring);
            SqlCommand cmd = new SqlCommand("InsertProviderTest", conn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@providerId", providerId);
            cmd.Parameters.AddWithValue("@testType", testType);
            cmd.Parameters.AddWithValue("@testTypeOption", option);
            if (number != -1)
                cmd.Parameters.AddWithValue("@numLeft", number);
            else
                cmd.Parameters.AddWithValue("@numLeft", DBNull.Value);

            try
            {
                conn.Open();
                cmd.ExecuteNonQuery();
            }
            catch (Exception ex)
            {
                InsertErrorMessage(ex.ToString(), null, null, "SaveUserMessage");
                throw new Exception("Execption SaveUserMessage" + ex.Message);
            }
            finally
            {
                conn.Close();
            }
        }

        internal static DataSet GetAdminData()
        {
            DataSet ds = new DataSet();
            SqlConnection conn = new SqlConnection(connectionSring);
            SqlCommand cmd = new SqlCommand("GetAllUsers", conn);
            cmd.CommandType = CommandType.StoredProcedure;

            try
            {
                SqlDataAdapter adp = new SqlDataAdapter(cmd);
                adp.Fill(ds);
            }
            catch (Exception ex)
            {
                InsertErrorMessage(ex.ToString(), null, null, "GetAllUsers");

            }

            return ds;
        }

        internal static DataTable GetModifiedTestData(string testId)
        {
            throw new NotImplementedException();
        }

        internal static void SaveUserMessage(string txtNameFrom, string txtEmailFrom, string txtMessage)
        {
            {
                SqlConnection conn = new SqlConnection(connectionSring);
                SqlCommand cmd = new SqlCommand("InsertUserMessage", conn);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@firstName", txtNameFrom);
                cmd.Parameters.AddWithValue("@email", txtEmailFrom);
                cmd.Parameters.AddWithValue("@textMessage", txtMessage);

                try
                {
                    conn.Open();
                    cmd.ExecuteNonQuery();
                }
                catch (Exception ex)
                {
                    InsertErrorMessage(ex.ToString(), null, null, "SaveUserMessage");
                    throw new Exception("Execption SaveUserMessage" + ex.Message);
                }
                finally
                {
                    conn.Close();
                }
            }
        }

        internal static DataTable GetLondonFixedTests()
        {
            DataTable ds = new DataTable();
            SqlConnection conn = new SqlConnection(connectionSring);
            SqlCommand cmd = new SqlCommand("GetLondonFixedTests", conn);
            cmd.CommandType = CommandType.StoredProcedure;

            try
            {
                SqlDataAdapter adp = new SqlDataAdapter(cmd);
                adp.Fill(ds);
            }
            catch (Exception ex)
            {
                InsertErrorMessage(ex.ToString(), null, null, "GetLondonFixedTests");
                throw new Exception("Execption getting London Moves. " + ex.Message);
            }

            return ds;
        }

        internal static DataSet GetLondonMoves(string modifiedId)
        {
            DataSet ds = new DataSet();
            SqlConnection conn = new SqlConnection(connectionSring);
            SqlCommand cmd = new SqlCommand("SelectLondonMoves", conn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@modifiedId", modifiedId);

            try
            {
                SqlDataAdapter adp = new SqlDataAdapter(cmd);
                adp.Fill(ds);
            }
            catch (Exception ex)
            {
                InsertErrorMessage(ex.ToString(), null, null, "GetLondonMoves");
                throw new Exception("Execption getting London Moves. " + ex.Message);
            }

            return ds;
        }
        internal static DataSet GetNbackNorms(int ageGroup)
        {
            DataSet ds = new DataSet();
            SqlConnection conn = new SqlConnection(connectionSring);
            SqlCommand cmd = new SqlCommand("SelectNbackNorms", conn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@ageGroup", ageGroup);

            try
            {
                SqlDataAdapter adp = new SqlDataAdapter(cmd);
                adp.Fill(ds);
            }
            catch (Exception ex)
            {
                InsertErrorMessage(ex.ToString(), null, null, "GetNbackNorms");
                throw new Exception("Execption getting All Provider Participants. " + ex.Message);
            }

            return ds;
        }

        internal static DataTable GetUserName(string userId)
        {
            DataTable ds = new DataTable();
            SqlConnection conn = new SqlConnection(connectionSring);
            SqlCommand cmd = new SqlCommand("GetUserName", conn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@userId", userId);

            try
            {
                SqlDataAdapter adp = new SqlDataAdapter(cmd);
                adp.Fill(ds);
            }
            catch (Exception ex)
            {
                InsertErrorMessage(ex.ToString(), null, null, "GetUserName");
                throw new Exception("Execption getting GetUserName. " + ex.Message);
            }

            return ds;
        }

        internal static DataTable GetStroopResults(int tId)
        {
            DataTable ds = new DataTable();
            SqlConnection conn = new SqlConnection(connectionSring);
            SqlCommand cmd = new SqlCommand("SelectStroopResults", conn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@tId", tId);

            try
            {
                SqlDataAdapter adp = new SqlDataAdapter(cmd);
                adp.Fill(ds);
            }
            catch (Exception ex)
            {
                InsertErrorMessage(ex.ToString(), null, null, "GetStroopResults");
                throw new Exception("Execption getting GetStroopResults. " + ex.Message);
            }

            return ds;
        }

        internal static void UpdateLondonTestModify(
            string testId,
            string testName,
            string instructions,
            string overMoves,
            string overTime,
            string txtButton,
            string txtFeedBack,
            string instructionsFinish,
            bool txtToSpeech,
            bool displayResultPage,
            int prctRounds,
            int testRounds,
            int calcResFrom,
            int countDownFrom,
            int timeOut,
            int maxMoves,
            bool showFeedback,
            int providerId,
            string language,
            string workTag,
            string goalTag,
            string countDownText
            )
        {
            SqlConnection conn = new SqlConnection(connectionSring);
            SqlCommand cmd = new SqlCommand("UpdatetLondonModified", conn);
            cmd.CommandType = CommandType.StoredProcedure;

            cmd.Parameters.AddWithValue("@testId", testId);
            cmd.Parameters.AddWithValue("@testName", testName);
            cmd.Parameters.AddWithValue("@testInstructions", instructions);
            cmd.Parameters.AddWithValue("@txtToSpeech", txtToSpeech);

            cmd.Parameters.AddWithValue("@overMoves", overMoves);
            cmd.Parameters.AddWithValue("@txtOverTime", overTime);
            cmd.Parameters.AddWithValue("@txtButton", txtButton);
            cmd.Parameters.AddWithValue("@txtFeedBack", txtFeedBack);
            cmd.Parameters.AddWithValue("@instructionsFinish", instructionsFinish);

            cmd.Parameters.AddWithValue("@displayResult", displayResultPage);
            cmd.Parameters.AddWithValue("@prctRounds", prctRounds);
            cmd.Parameters.AddWithValue("@testRounds", testRounds);
            cmd.Parameters.AddWithValue("@calcResFrom", calcResFrom);
            cmd.Parameters.AddWithValue("@countDownFrom", countDownFrom);
            cmd.Parameters.AddWithValue("@timeOut", timeOut);
            cmd.Parameters.AddWithValue("@maxMoves", maxMoves);
            cmd.Parameters.AddWithValue("@showFeedBack", showFeedback);
            cmd.Parameters.AddWithValue("@language", language);
            cmd.Parameters.AddWithValue("@workTag", workTag);
            cmd.Parameters.AddWithValue("@goalTag", goalTag);
            cmd.Parameters.AddWithValue("@countDownText", countDownText);



            try
            {
                conn.Open();
                cmd.ExecuteNonQuery();
            }
            catch (Exception ex)
            {
                InsertErrorMessage(ex.ToString(), null, null, "UpdatetLondonModified");
                throw new Exception("Execption saving UpdatetLondonModified " + ex.Message);
            }
            finally
            {
                conn.Close();
            }

        }

        internal static DataSet GetNbackUserResults(string userId, int tId)
        {
            DataSet ds = new DataSet();
            SqlConnection conn = new SqlConnection(connectionSring);
            SqlCommand cmd = new SqlCommand("SelectNbackUserResults", conn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@tId", tId);
            cmd.Parameters.AddWithValue("@userId", userId);

            try
            {
                SqlDataAdapter adp = new SqlDataAdapter(cmd);
                adp.Fill(ds);
            }
            catch (Exception ex)
            {
                InsertErrorMessage(ex.ToString(), null, null, "GetNbackUserResults");
                throw new Exception("Execption getting nBabk results. " + ex.Message);
            }

            return ds;
        }

        internal static void SaveUserNbackResults(int hits, int miss,
            int corRej, int falseAlarm, int omitTarget, int omitNoTarget,
            decimal percentScore, int round, string userId, int tId)
        {
            SqlConnection conn = new SqlConnection(connectionSring);
            SqlCommand cmd = new SqlCommand("InsertNbackUserResults ", conn);
            cmd.CommandType = CommandType.StoredProcedure;

            cmd.Parameters.AddWithValue("@userId", userId);
            cmd.Parameters.AddWithValue("@tId", tId);
            cmd.Parameters.AddWithValue("@round", round);
            cmd.Parameters.AddWithValue("@hit", hits);
            cmd.Parameters.AddWithValue("@miss", miss);
            cmd.Parameters.AddWithValue("@correctReject", corRej);
            cmd.Parameters.AddWithValue("@falseAlarm", falseAlarm);
            cmd.Parameters.AddWithValue("@omitTarget", omitTarget);
            cmd.Parameters.AddWithValue("@omitNoTarget", omitNoTarget);
            cmd.Parameters.AddWithValue("@percentScore", percentScore);

            try
            {
                conn.Open();
                cmd.ExecuteNonQuery();
            }
            catch (Exception ex)
            {
                InsertErrorMessage(ex.ToString(), null, null, "SaveUserNbackResults");
                throw new Exception("Execption saving Syllog Table " + ex.Message);
            }
            finally
            {
                conn.Close();
            }
        }

        internal static DataTable GetLondonNorms(int ageGroup)
        {
            DataTable ds = new DataTable();
            SqlConnection conn = new SqlConnection(connectionSring);
            SqlCommand cmd = new SqlCommand("GetLondonNorms", conn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@ageGroup", ageGroup);


            try
            {
                SqlDataAdapter adp = new SqlDataAdapter(cmd);
                adp.Fill(ds);
            }
            catch (Exception ex)
            {
                InsertErrorMessage(ex.ToString(), null, null, "GetLondonNorms");
                throw new Exception("Execption getting All Provider Participants. " + ex.Message);
            }

            return ds;
        }

        internal static DataTable GetLondonNorms(int ageGroup, int testId)
        {
            DataTable ds = new DataTable();
            SqlConnection conn = new SqlConnection(connectionSring);
            SqlCommand cmd = new SqlCommand("GetLondonNorms", conn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@ageGroup", ageGroup);
            cmd.Parameters.AddWithValue("@testId", testId);

            try
            {
                SqlDataAdapter adp = new SqlDataAdapter(cmd);
                adp.Fill(ds);
            }
            catch (Exception ex)
            {
                InsertErrorMessage(ex.ToString(), null, null, "GetLondonNorms");
                throw new Exception("Execption getting All Provider Participants. " + ex.Message);
            }

            return ds;
        }

        internal static string GetUserProviderCode(string userId)
        {
            DataTable dt = new DataTable();
            SqlConnection conn = new SqlConnection(connectionSring);
            SqlCommand cmd = new SqlCommand("GetUserProviderCode", conn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@userId", userId);

            try
            {
                SqlDataAdapter adp = new SqlDataAdapter(cmd);
                adp.Fill(dt);
            }
            catch (Exception ex)
            {
                InsertErrorMessage(ex.ToString(), null, null, "GetUserProviderCode");
                throw new Exception("Execption getting All Provider Participants. " + ex.Message);
            };
            return (dt.Rows.Count > 0) ? dt.Rows[0]["code"].ToString() : "";

        }

        internal static DataTable GetAllProviderTests(int? providerId)
        {
            DataSet ds = new DataSet();
            SqlConnection conn = new SqlConnection(connectionSring);
            SqlCommand cmd = new SqlCommand("GetAllProviderTests", conn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@providerId", providerId);

            try
            {
                SqlDataAdapter adp = new SqlDataAdapter(cmd);
                adp.Fill(ds);
            }
            catch (Exception ex)
            {
                InsertErrorMessage(ex.ToString(), null, null, "GetAllProviderTests");
                throw new Exception("Execption getting All Provider Participants. " + ex.Message);
            }

            return ds.Tables[0];
        }

        internal static DataTable GetModfiedTest(string providerTestId, int providerId)
        {
            DataTable ds = new DataTable();
            SqlConnection conn = new SqlConnection(connectionSring);
            SqlCommand cmd = new SqlCommand("GetModifiedTest", conn);
            cmd.CommandType = CommandType.StoredProcedure;

            cmd.Parameters.AddWithValue("@providerTestId", providerTestId);
            cmd.Parameters.AddWithValue("@providerId", providerId);

            try
            {
                SqlDataAdapter adp = new SqlDataAdapter(cmd);
                adp.Fill(ds);
            }
            catch (Exception ex)
            {
                InsertErrorMessage(ex.ToString(), null, null, "GetAllProviderTests");
                throw new Exception("Execption getting All Provider Participants. " + ex.Message);
            }

            return ds;
        }

        internal static void DeleteModifiedTest(string modTestId)
        {
            SqlConnection conn = new SqlConnection(connectionSring);
            SqlCommand cmd = new SqlCommand("DeleteModifiedTest", conn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@modTestId", modTestId);


            try
            {
                conn.Open();
                cmd.ExecuteNonQuery();
            }
            catch (Exception ex)
            {
                InsertErrorMessage(ex.ToString(), null, null, "DeleteModTest");
                throw new Exception("Execption saving Syllog Table " + ex.Message);
            }
            finally
            {
                conn.Close();
            }
        }

        internal static void InsertSyllogismsTable(string html, int tId)
        {
            SqlConnection conn = new SqlConnection(connectionSring);
            SqlCommand cmd = new SqlCommand("InsertSyllogismsTable", conn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@tId", tId);
            cmd.Parameters.AddWithValue("@htmlString", html);

            try
            {
                conn.Open();
                cmd.ExecuteNonQuery();
            }
            catch (Exception ex)
            {
                InsertErrorMessage(ex.ToString(), null, null, "InsertSyllogismsTable");
                throw new Exception("Execption saving Syllog Table " + ex.Message);
            }
            finally
            {
                conn.Close();
            }
        }

        internal static void InsertSyllogismsTotal(int tId, int totalCorrect, int totalIncorrect, decimal certAvarage, decimal certRatingCorrect)
        {
            SqlConnection conn = new SqlConnection(connectionSring);
            SqlCommand cmd = new SqlCommand("InsertSyllogismsUserResults ", conn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@tId", tId);
            cmd.Parameters.AddWithValue("@totalCorrect", totalCorrect);
            cmd.Parameters.AddWithValue("@totalIncorrect", totalIncorrect);
            cmd.Parameters.AddWithValue("@certAverage", certAvarage);
            cmd.Parameters.AddWithValue("@certRatingCorrect", certRatingCorrect);

            try
            {
                conn.Open();
                cmd.ExecuteNonQuery();
            }
            catch (Exception ex)
            {
                InsertErrorMessage(ex.ToString(), null, null, "InsertSyllogismsTotal");
                throw new Exception("Execption saving SyllogismsUserResults " + ex.Message);
            }
            finally
            {
                conn.Close();
            }
        }

        internal static void AddUserToProvider(string userId, string code)
        {
            SqlConnection conn = new SqlConnection(connectionSring);
            SqlCommand cmd = new SqlCommand("InsertUserProviderId", conn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@userId", userId);
            cmd.Parameters.AddWithValue("@code", code);

            try
            {
                conn.Open();
                cmd.ExecuteNonQuery();
            }
            catch (Exception ex)
            {
                InsertErrorMessage(ex.ToString(), null, null, "AddUserToProvider");
                throw new Exception("Execption saving Provider " + ex.Message);
            }
            finally
            {
                conn.Close();
            }
        }

        internal static void InsertStroopTestTable(string html, int tId)
        {
            SqlConnection conn = new SqlConnection(connectionSring);
            SqlCommand cmd = new SqlCommand("InsertStroopHtmlString", conn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@tId", tId);
            cmd.Parameters.AddWithValue("@html", html);

            try
            {
                conn.Open();
                cmd.ExecuteNonQuery();
            }
            catch (Exception ex)
            {
                InsertErrorMessage(ex.ToString(), null, null, "InsertStroopTestTable");
                throw new Exception("Execption Inserting Stroop Table " + ex.Message);
            }
            finally
            {
                conn.Close();
            }
        }

        internal static DataTable GetModifyTestList(int providerId)
        {
            DataTable ds = new DataTable();
            SqlConnection conn = new SqlConnection(connectionSring);
            SqlCommand cmd = new SqlCommand("SelectProviderTestModfied", conn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@providerId", providerId);

            try
            {
                SqlDataAdapter adp = new SqlDataAdapter(cmd);
                adp.Fill(ds);
            }
            catch (Exception ex)
            {
                InsertErrorMessage(ex.ToString(), null, null, "SelectProviderTestModfied");
                throw new Exception("Execption getting All Provider Participants. " + ex.Message);
            }

            return ds;
        }

        internal static DataTable GetMemoryCardsTestModify(int providerId)
        {
            DataTable dt = new DataTable();
            SqlConnection conn = new SqlConnection(connectionSring);
            SqlCommand cmd = new SqlCommand("SelectMemoryCardsTestModify", conn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@providerId", providerId);

            try
            {
                SqlDataAdapter adp = new SqlDataAdapter(cmd);
                adp.Fill(dt);
            }
            catch (Exception ex)
            {
                InsertErrorMessage(ex.ToString(), null, null, "SelectMemoryCardsTestModify");
                throw new Exception("Execption getting All Provider Participants. " + ex.Message);
            }

            return dt;
        }

        internal static void InsertCardSortTable(string html, int tId)
        {
            SqlConnection conn = new SqlConnection(connectionSring);
            SqlCommand cmd = new SqlCommand("InsertCardSortTable", conn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@tId", tId);
            cmd.Parameters.AddWithValue("@html", html);

            try
            {
                conn.Open();
                cmd.ExecuteNonQuery();
            }
            catch (Exception ex)
            {
                InsertErrorMessage(ex.ToString(), null, null, "InsertCardSortTable");
                throw new Exception("Execption saving Provider " + ex.Message);
            }
            finally
            {
                conn.Close();
            }
        }



        internal static DataTable GetAllProviderParticipants(int? providerId)
        {
            DataTable ds = new DataTable();
            SqlConnection conn = new SqlConnection(connectionSring);
            SqlCommand cmd = new SqlCommand("GetAllProviderParticipants", conn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@providerId", providerId);

            try
            {
                SqlDataAdapter adp = new SqlDataAdapter(cmd);
                adp.Fill(ds);
            }
            catch (Exception ex)
            {
                InsertErrorMessage(ex.ToString(), null, null, "GetAllProviderParticipants");
                throw new Exception("Execption getting All Provider Participants. " + ex.Message);
            }

            return ds;
        }

        internal static DataTable GetSearchProviderParticipants(int? providerId, string search)
        {
            DataTable ds = new DataTable();
            SqlConnection conn = new SqlConnection(connectionSring);
            SqlCommand cmd = new SqlCommand("GetAllProviderParticipants", conn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@providerId", providerId);

            try
            {
                SqlDataAdapter adp = new SqlDataAdapter(cmd);
                adp.Fill(ds);
            }
            catch (Exception ex)
            {
                InsertErrorMessage(ex.ToString(), null, null, "GetAllProviderParticipants");
                throw new Exception("Execption getting All Provider Participants. " + ex.Message);
            }

            return ds;
        }

        internal static DataTable GetProvderUserCode(string providerId)
        {
            DataTable ds = new DataTable();
            SqlConnection conn = new SqlConnection(connectionSring);
            SqlCommand cmd = new SqlCommand("GetProviderCode", conn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@providerId", providerId);

            try
            {
                SqlDataAdapter adp = new SqlDataAdapter(cmd);
                adp.Fill(ds);
            }
            catch (Exception ex)
            {
                InsertErrorMessage(ex.ToString(), null, null, "GetProvderUserCode");
                throw new Exception("Execption getting Getting Provider Code. " + ex.Message);
            }

            return ds;
        }

        internal static int InsertLondonTestModify(
            string testName,
            string instructions,
            string overMoves,
            string overTime,
            string txtButton,
            string txtFeedBack,
            string instructionsFinish,
            bool txtToSpeech,
            bool displayResultPage,
            int prctRounds,
            int testRounds,
            int calcResFrom,
            int countDownFrom,
            int timeOut,
            int maxMoves,
            bool showFeedback,
            int providerId,
            string language,
            string workTag,
            string goalTag,
            string countDownText

            )
        {

            object id = null;
            SqlConnection conn = new SqlConnection(connectionSring);
            SqlCommand cmd = new SqlCommand("InsertLondonModified", conn);
            cmd.CommandType = CommandType.StoredProcedure;

            cmd.Parameters.AddWithValue("@testName", testName);
            cmd.Parameters.AddWithValue("@testInstructions", instructions);
            cmd.Parameters.AddWithValue("@txtToSpeech", txtToSpeech);

            cmd.Parameters.AddWithValue("@txtOverMoves", overMoves);
            cmd.Parameters.AddWithValue("@txtOverTime", overTime);
            cmd.Parameters.AddWithValue("@txtButton", txtButton);
            cmd.Parameters.AddWithValue("@txtFeedBack", txtFeedBack);
            cmd.Parameters.AddWithValue("@instructionsFinish", instructionsFinish);
            cmd.Parameters.AddWithValue("@displayResult", displayResultPage);

            cmd.Parameters.AddWithValue("@prctRounds", prctRounds);
            cmd.Parameters.AddWithValue("@testRounds", testRounds);
            cmd.Parameters.AddWithValue("@calcResFrom", calcResFrom);
            cmd.Parameters.AddWithValue("@countDownFrom", countDownFrom);
            cmd.Parameters.AddWithValue("@timeOut", timeOut);
            cmd.Parameters.AddWithValue("@maxMoves", maxMoves);
            cmd.Parameters.AddWithValue("@showFeedBack", showFeedback);
            cmd.Parameters.AddWithValue("@providerId", providerId);
            cmd.Parameters.AddWithValue("@language", language);
            cmd.Parameters.AddWithValue("@workTag", workTag);
            cmd.Parameters.AddWithValue("@goalTag", goalTag);
            cmd.Parameters.AddWithValue("@countDownText", countDownText);


            try
            {
                conn.Open();
                id = cmd.ExecuteScalar();
            }
            catch (Exception ex)
            {
                id = null; //throw new Exception("Execption checking ProviderIdAccount. " + ex.Message);
                InsertErrorMessage(ex.ToString(), null, null, "GetUserViewResults");
            }
            finally
            {
                conn.Close();
            }

            return id != null ? Int32.Parse(id.ToString()) : 0;

        }

        internal static int GetUserViewResults(string userId)
        {

            object id = null;
            SqlConnection conn = new SqlConnection(connectionSring);
            SqlCommand cmd = new SqlCommand("SelectUserViewResults", conn);
            cmd.CommandType = CommandType.StoredProcedure;

            cmd.Parameters.AddWithValue("userId", userId);

            try
            {
                conn.Open();
                id = cmd.ExecuteScalar();
            }
            catch (Exception ex)
            {
                id = null; //throw new Exception("Execption checking ProviderIdAccount. " + ex.Message);
                InsertErrorMessage(ex.ToString(), null, null, "GetUserViewResults");
            }
            finally
            {
                conn.Close();
            }

            return id != null ? Int32.Parse(id.ToString()) : 0;

        }

        internal static void InsertLondonMoves(
            string testName,
            int round,
            string roundValues,
            string roundFinish,
            int numMoves,
            int? modifiedId
            )
        {

            SqlConnection conn = new SqlConnection(connectionSring);
            SqlCommand cmd = new SqlCommand("InsertLondonMoves", conn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@testName", testName);
            cmd.Parameters.AddWithValue("@round", round);
            cmd.Parameters.AddWithValue("@roundValues", roundValues);
            cmd.Parameters.AddWithValue("@roundFinish", roundFinish);
            cmd.Parameters.AddWithValue("@numMoves", numMoves);
            cmd.Parameters.AddWithValue("@modifiedId", modifiedId);

            try
            {
                conn.Open();
                cmd.ExecuteNonQuery();
            }
            catch (Exception ex)
            {
                InsertErrorMessage(ex.ToString(), null, null, "InsertLondonMoves");
                //throw new Exception("Execption Updating Allow User View Results. " + ex.Message);
            }
            finally
            {
                conn.Close();
            }

        }

        internal static void SetAllowUserViewResults(string userId, bool value)
        {

            SqlConnection conn = new SqlConnection(connectionSring);
            SqlCommand cmd = new SqlCommand("SetUserViewResults", conn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@userID", userId);
            cmd.Parameters.AddWithValue("@value", value);

            try
            {
                conn.Open();
                cmd.ExecuteNonQuery();
            }
            catch (Exception ex)
            {
                InsertErrorMessage(ex.ToString(), null, null, "SetAllowUserViewResults");
                throw new Exception("Execption Updating Allow User View Results. " + ex.Message);
            }
            finally
            {
                conn.Close();
            }

        }

        internal static void DeactivateParticipant(string userId, string providerId)
        {

            SqlConnection conn = new SqlConnection(connectionSring);
            SqlCommand cmd = new SqlCommand("DeactivateParticipant", conn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@userID", userId);
            cmd.Parameters.AddWithValue("@providerId", providerId);

            try
            {
                conn.Open();
                cmd.ExecuteNonQuery();
            }
            catch (Exception ex)
            {
                InsertErrorMessage(ex.ToString(), null, null, "DeactivateParticipant");
                throw new Exception("Execption Deactivating Participant. " + ex.Message);
            }
            finally
            {
                conn.Close();
            }

        }

        internal static int GetProviderId(string userId)
        {

            object id = null;
            SqlConnection conn = new SqlConnection(connectionSring);
            SqlCommand cmd = new SqlCommand("GerProviderId", conn);
            cmd.CommandType = CommandType.StoredProcedure;

            cmd.Parameters.AddWithValue("userId", userId);

            try
            {
                conn.Open();
                id = cmd.ExecuteScalar();
            }
            catch (Exception ex)
            {
                id = null; //throw new Exception("Execption checking ProviderIdAccount. " + ex.Message);
                InsertErrorMessage(ex.ToString(), null, null, "GetProviderId");
            }
            finally
            {
                conn.Close();
            }

            return id != null ? Int32.Parse(id.ToString()) : 0;
        }

        internal static void UpdateProviderTableSetCode(string userId, string providerCode)
        {

            SqlConnection conn = new SqlConnection(connectionSring);
            SqlCommand cmd = new SqlCommand("UpdateProviderCode", conn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@userId", userId);
            cmd.Parameters.AddWithValue("@providerCode", providerCode);

            try
            {
                conn.Open();
                cmd.ExecuteNonQuery();
            }
            catch (Exception ex)
            {
                InsertErrorMessage(ex.ToString(), null, null, "UpdateProviderTableSetCode");
                throw new Exception("Execption saving Provider Code " + ex.Message);
            }
            finally
            {
                conn.Close();
            }
        }

        internal static void UpdateProviderTable(string userId)
        {

            SqlConnection conn = new SqlConnection(connectionSring);
            SqlCommand cmd = new SqlCommand("CreateProvider", conn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@userId", userId);

            try
            {
                conn.Open();
                cmd.ExecuteNonQuery();
            }
            catch (Exception ex)
            {
                InsertErrorMessage(ex.ToString(), null, null, "UpdateProviderTable");
                throw new Exception("Execption saving Provider " + ex.Message);
            }
            finally
            {
                conn.Close();
            }
        }

        internal static void RemoveTestFromUserList(string userId, string tId)
        {

            SqlConnection conn = new SqlConnection(connectionSring);
            SqlCommand cmd = new SqlCommand("RemoveTestFromUserList", conn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@userId", userId);
            cmd.Parameters.AddWithValue("@tId", tId);

            try
            {
                conn.Open();
                cmd.ExecuteNonQuery();
            }
            catch (Exception ex)
            {
                InsertErrorMessage(ex.ToString(), null, null, "RemoveTestFromUserList");
                throw new Exception("Execption Removing test from the list. " + ex.Message);
            }
            finally
            {
                conn.Close();
            }
;
        }
        //InsertProviderToUser
        internal static void InsertProviderToTheUser(string providerUserKey, int providerId, string userName)
        {

            SqlConnection conn = new SqlConnection(connectionSring);
            SqlCommand cmd = new SqlCommand("InsertProviderToUser", conn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@providerId", providerId);
            cmd.Parameters.AddWithValue("@userID", providerUserKey);
            cmd.Parameters.AddWithValue("@userName", userName);

            try
            {
                conn.Open();
                cmd.ExecuteNonQuery();
            }
            catch (Exception ex)
            {
                InsertErrorMessage(ex.ToString(), null, null, "InsertProviderToTheUser");
                throw new Exception("Execption saving User Provider. " + ex.Message);
            }
            finally
            {
                conn.Close();
            }
        }

        internal static void InsertCardSortUserMovesMap(int tId, string text)
        {

            SqlConnection conn = new SqlConnection(connectionSring);
            SqlCommand cmd = new SqlCommand("InsertCardSortUserMovesMap", conn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@text", text);
            cmd.Parameters.AddWithValue("@tId", tId);

            try
            {
                conn.Open();
                cmd.ExecuteNonQuery();
            }
            catch (Exception ex)
            {
                InsertErrorMessage(ex.ToString(), null, null, "InsertCardSortUserMovesMap");
                throw new Exception("Execption saving CST moves. " + ex.Message);
            }
            finally
            {
                conn.Close();
            }

        }

        internal static void InsertTestToParticipant(int provTestId, string userId, int modifiedId)
        {
            SqlConnection conn = new SqlConnection(connectionSring);
            SqlCommand cmd = new SqlCommand("InsertProviderUserTest", conn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@provTestId", provTestId);
            cmd.Parameters.AddWithValue("@userId", userId);
            if (modifiedId == 0)
                cmd.Parameters.AddWithValue("@modifiedId", DBNull.Value);
            else
                cmd.Parameters.AddWithValue("@modifiedId", modifiedId);
            try
            {
                conn.Open();
                cmd.ExecuteNonQuery();
            }
            catch (Exception ex)
            {
                InsertErrorMessage(ex.ToString(), null, null, "InsertTestToParticipant");
                throw new Exception("Execption in Insert Provider Test: " + ex.Message);
            }
            finally
            {
                conn.Close();
            }
        }

        internal static void InsertCardSortUserResult(

            string userId,
            int tId,
            int respCount,
            decimal resTime,
            int correctCnt,
            int errorCnt,
            decimal errorTime,
            int persevResp,
            decimal persevTime,
            int persevRespError,
            decimal persevRespErrTime,
            int uniqueErr,
            decimal uniqErrTime,
            int failureSetCnt,
            string category,
            string completedSet
            )
        {

            SqlConnection conn = new SqlConnection(connectionSring);
            SqlCommand cmd = new SqlCommand("InsertCardSortUserResults", conn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@userId", userId);
            cmd.Parameters.AddWithValue("@tId", tId);
            cmd.Parameters.AddWithValue("@respCount", respCount);
            cmd.Parameters.AddWithValue("@respTime", resTime);
            cmd.Parameters.AddWithValue("@correctCnt", correctCnt);
            cmd.Parameters.AddWithValue("@errorCnt", errorCnt);
            if (errorTime > 0) cmd.Parameters.AddWithValue("@errorTime", errorTime);
            else cmd.Parameters.AddWithValue("@errorTime", DBNull.Value);
            cmd.Parameters.AddWithValue("@persevResp", persevResp);
            if (persevTime > 0) cmd.Parameters.AddWithValue("@persevTime", persevTime);
            else cmd.Parameters.AddWithValue("@persevTime", DBNull.Value);
            cmd.Parameters.AddWithValue("@persevRespError", persevRespError);
            if (persevRespErrTime > 0) cmd.Parameters.AddWithValue("@persevRespErrTime", persevRespErrTime);
            else cmd.Parameters.AddWithValue("@persevRespErrTime", DBNull.Value);
            cmd.Parameters.AddWithValue("@uniqErr", uniqueErr);
            if (uniqErrTime > 0) cmd.Parameters.AddWithValue("@uniqErrTime", uniqErrTime);
            else cmd.Parameters.AddWithValue("@uniqErrTime", DBNull.Value);
            cmd.Parameters.AddWithValue("@failureSetCnt", failureSetCnt);
            cmd.Parameters.AddWithValue("@category", category);
            cmd.Parameters.AddWithValue("@catComplete", completedSet);
            try
            {
                conn.Open();
                cmd.ExecuteNonQuery();
            }
            catch (Exception ex)
            {
                InsertErrorMessage(ex.ToString(), null, null, "InsertCardSortUserResult");
                throw new Exception("Execption saving CST results. " + ex.Message);
            }
            finally
            {
                conn.Close();
            }

        }

        internal static DataSet GetSyllogysmTestNorms(int ageGroup)
        {
            DataSet ds = new DataSet();
            SqlConnection conn = new SqlConnection(connectionSring);
            SqlCommand cmd = new SqlCommand("SelectSyllogNorms", conn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@ageGroup", ageGroup);
            try
            {
                SqlDataAdapter adp = new SqlDataAdapter(cmd);
                adp.Fill(ds);
            }
            catch (Exception ex)
            {
                InsertErrorMessage(ex.ToString(), null, null, "GetSyllogysmTestNorms");
                throw new Exception("Execption getting Syllogisms Normal. " + ex.Message);
            }

            return ds;
        }

        internal static DataSet GetCardSortNorms(int ageGroup)
        {
            DataSet ds = new DataSet();
            SqlConnection conn = new SqlConnection(connectionSring);
            SqlCommand cmd = new SqlCommand("GetCardSortNorms", conn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@ageGroup", ageGroup);
            try
            {
                SqlDataAdapter adp = new SqlDataAdapter(cmd);
                adp.Fill(ds);
            }
            catch (Exception ex)
            {
                InsertErrorMessage(ex.ToString(), null, null, "GetCardSortNorms");
                throw new Exception("Execption getting London Total Results. " + ex.Message);
            }

            return ds;
        }


        internal static DataSet GetLondonUserResultsTotal(string userId, int tId, int ageGroup)
        {
            DataSet ds = new DataSet();
            SqlConnection conn = new SqlConnection(connectionSring);
            SqlCommand cmd = new SqlCommand("GetLondonUserResultsTotal", conn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@ageGroup", ageGroup);
            cmd.Parameters.AddWithValue("@tId", tId);
            cmd.Parameters.AddWithValue("@userId", userId);
            try
            {
                SqlDataAdapter adp = new SqlDataAdapter(cmd);
                adp.Fill(ds);
            }
            catch (Exception ex)
            {
                InsertErrorMessage(ex.ToString(), null, null, "GetLondonUserResultsTotal");
                throw new Exception("Execption getting London Total Results. " + ex.Message);
            }

            return ds;
        }

        internal static DataSet GetTestNormsTrails(int ageGroup)
        {
            DataSet ds = new DataSet();
            SqlConnection conn = new SqlConnection(connectionSring);
            SqlCommand cmd = new SqlCommand("GetUserNormsTrails", conn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@ageGroup", ageGroup);

            try
            {
                SqlDataAdapter adp = new SqlDataAdapter(cmd);
                adp.Fill(ds);
            }
            catch (Exception ex)
            {
                InsertErrorMessage(ex.ToString(), null, null, "GetTestNormsTrails");
                throw new Exception("Execption getting Trails Norm Results. " + ex.Message);
            }

            return ds;
        }

        internal static int GetUserAge(string userId)
        {
            object age;
            SqlConnection conn = new SqlConnection(connectionSring);
            SqlCommand cmd = new SqlCommand("GetUserAge", conn);
            cmd.CommandType = CommandType.StoredProcedure;

            cmd.Parameters.AddWithValue("userId", userId);

            try
            {
                conn.Open();
                age = cmd.ExecuteScalar();
            }
            catch (Exception ex)
            {
                InsertErrorMessage(ex.ToString(), null, null, "GetUserAge");
                throw new Exception("Execption checking Reg account. " + ex.Message);
            }
            finally
            {
                conn.Close();
            }


            return Int32.Parse(age.ToString());
        }

        public static void UpdateRegCheck(string userId)
        {
            SqlConnection conn = new SqlConnection(connectionSring);
            SqlCommand cmd = new SqlCommand("UpdateRegCheck", conn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("userId", userId);

            try
            {
                conn.Open();
                cmd.ExecuteNonQuery();
            }
            catch (Exception ex)
            {
                InsertErrorMessage(ex.ToString(), null, null, "UpdateRegCheck");
                throw new Exception("Execption saving account. " + ex.Message);
            }
            finally
            {
                conn.Close();
            }
        }

        public static DataTable GetParticipantName(string userId)
        {
            DataTable dt = new DataTable();
            SqlConnection conn = new SqlConnection(connectionSring);
            SqlCommand cmd = new SqlCommand("GetParticipantName", conn);
            cmd.CommandType = CommandType.StoredProcedure;

            cmd.Parameters.AddWithValue("@userId", userId);

            try
            {
                SqlDataAdapter adp = new SqlDataAdapter(cmd);
                adp.Fill(dt);
            }
            catch (Exception ex)
            {
                InsertErrorMessage(ex.ToString(), null, null, "GetParticipantName");
                throw new Exception("Execption getting GetParticipantName. " + ex.Message);
            }

            return dt;
        }

        public static DataSet GetSyllogismsUserTable(int tId)
        {
            DataSet ds = new DataSet();
            SqlConnection conn = new SqlConnection(connectionSring);
            SqlCommand cmd = new SqlCommand("SelectSyllogismsUserResultTable", conn);
            cmd.CommandType = CommandType.StoredProcedure;

            cmd.Parameters.AddWithValue("@tId", tId);

            try
            {
                SqlDataAdapter adp = new SqlDataAdapter(cmd);
                adp.Fill(ds);
            }
            catch (Exception ex)
            {
                InsertErrorMessage(ex.ToString(), null, null, "GetSyllogismsUserTable");
                throw new Exception("Execption getting Syllog Results. " + ex.Message);
            }

            return ds;
        }

        public static DataSet GetSyllogismsUserResults(int tId)
        {
            DataSet ds = new DataSet();
            SqlConnection conn = new SqlConnection(connectionSring);
            SqlCommand cmd = new SqlCommand("SelectSyllogismsUserResults", conn);
            cmd.CommandType = CommandType.StoredProcedure;

            cmd.Parameters.AddWithValue("@tId", tId);

            try
            {
                SqlDataAdapter adp = new SqlDataAdapter(cmd);
                adp.Fill(ds);
            }
            catch (Exception ex)
            {
                InsertErrorMessage(ex.ToString(), null, null, "GetSyllogismsUserResults");
                throw new Exception("Execption getting Syllog Results. " + ex.Message);
            }

            return ds;
        }

        public static DataSet GetTestResultsCardSort(string userId, int tId, bool forExport = false)
        {
            DataSet ds = new DataSet();
            SqlConnection conn = new SqlConnection(connectionSring);
            SqlCommand cmd = new SqlCommand("GetUserCardSortTestResults", conn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@userId", userId);
            cmd.Parameters.AddWithValue("@tId", tId);
            if (forExport)
                cmd.Parameters.AddWithValue("@forExport", true);


            try
            {
                SqlDataAdapter adp = new SqlDataAdapter(cmd);
                adp.Fill(ds);
            }
            catch (Exception ex)
            {
                InsertErrorMessage(ex.ToString(), null, null, "GetTestResultsCardSort");
                throw new Exception("Execption getting CardSort Results. " + ex.Message);
            }

            return ds;
        }

        public static DataSet GetTestResultsLondon(string userId, int tId)
        {
            DataSet ds = new DataSet();
            SqlConnection conn = new SqlConnection(connectionSring);
            SqlCommand cmd = new SqlCommand("GetUserLondonTestResults", conn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@userId", userId);
            cmd.Parameters.AddWithValue("@tId", tId);

            try
            {
                SqlDataAdapter adp = new SqlDataAdapter(cmd);
                adp.Fill(ds);
            }
            catch (Exception ex)
            {
                InsertErrorMessage(ex.ToString(), null, null, "GetTestResultsLondon");
                throw new Exception("Execption getting London Results. " + ex.Message);
            }

            return ds;
        }

        public static DataSet GetTestResultsTrails(string userId, int tId)
        {
            DataSet ds = new DataSet();
            SqlConnection conn = new SqlConnection(connectionSring);
            SqlCommand cmd = new SqlCommand("GetUserTestResultsTrails", conn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@userId", userId);
            cmd.Parameters.AddWithValue("@tId", tId);

            try
            {
                SqlDataAdapter adp = new SqlDataAdapter(cmd);
                adp.Fill(ds);
            }
            catch (Exception ex)
            {
                InsertErrorMessage(ex.ToString(), null, null, "GetTestResultsTrails");
                throw new Exception("Execption getting Trails Results " + ex.Message);
            }

            return ds;
        }

        public static DataTable GetTestResultsNBack(string userId, int tId)
        {
            DataTable ds = new DataTable();
            SqlConnection conn = new SqlConnection(connectionSring);
            SqlCommand cmd = new SqlCommand("GetUserTestResultsNback", conn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@userId", userId);
            cmd.Parameters.AddWithValue("@tId", tId);

            try
            {
                SqlDataAdapter adp = new SqlDataAdapter(cmd);
                adp.Fill(ds);
            }
            catch (Exception ex)
            {
                InsertErrorMessage(ex.ToString(), null, null, "GetTestResultsNBack");
                throw new Exception("Execption getting Nback results. " + ex.Message);
            }

            return ds;
        }

        public static DataTable GetTestResultsNback(string userId, int tId)
        {
            DataTable ds = new DataTable();
            SqlConnection conn = new SqlConnection(connectionSring);
            SqlCommand cmd = new SqlCommand("GetUserTestResultsNback", conn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@userId", userId);
            cmd.Parameters.AddWithValue("@tId", tId);

            try
            {
                SqlDataAdapter adp = new SqlDataAdapter(cmd);
                adp.Fill(ds);
            }
            catch (Exception ex)
            {
                InsertErrorMessage(ex.ToString(), null, null, "GetTestResultsNback");
                throw new Exception("Execption getting Card Sort results. " + ex.Message);
            }

            return ds;
        }


        public static bool GetRegKey(string userId)
        {
            object isReg;
            SqlConnection conn = new SqlConnection(connectionSring);
            SqlCommand cmd = new SqlCommand("GetRegCheck", conn);
            cmd.CommandType = CommandType.StoredProcedure;

            cmd.Parameters.AddWithValue("userId", userId);

            try
            {
                conn.Open();
                isReg = cmd.ExecuteScalar();
            }
            catch (Exception ex)
            {
                InsertErrorMessage(ex.ToString(), null, null, "GetRegKey");
                throw new Exception("Execption checking Reg account. " + ex.Message);
            }
            finally
            {
                conn.Close();
            }
            return (isReg == DBNull.Value) ? false : Convert.ToBoolean(isReg);
        }


        public static int SaveRegistration(
                     string firstName,
                     string lastName,
                     string education,
                     string medications,
                     string gender,
                     string hand,
                     string brainActivity,
                     string ethnisity,
                     string language,
                     string headInjury,
                     string selfEsteem,
                     string exercise,
                     string userName,
                     string health,
                     DateTime birthDate,
                     bool isOnmeds,
                     bool isInj,
                     bool isFilled,
                     string userId,
                     string income,
                     bool disclamerField,
                     int providerId
                    )
        {
            int id;
            SqlConnection conn = new SqlConnection(connectionSring);
            SqlCommand cmd = new SqlCommand("UpdateRegistrationProfile", conn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@firstName", firstName);
            cmd.Parameters.AddWithValue("@lastName", lastName);
            cmd.Parameters.AddWithValue("@birthDate", birthDate);
            cmd.Parameters.AddWithValue("@education", education);
            cmd.Parameters.AddWithValue("@medications", isOnmeds == true ? "1" : "0");
            cmd.Parameters.AddWithValue("@medName", medications);
            cmd.Parameters.AddWithValue("@gender", gender);
            cmd.Parameters.AddWithValue("@hand", hand);
            cmd.Parameters.AddWithValue("@brainActivity", brainActivity);
            cmd.Parameters.AddWithValue("@ethnisity", ethnisity);
            cmd.Parameters.AddWithValue("@language", language);
            cmd.Parameters.AddWithValue("@headInjury", isInj == true ? "1" : "0");
            cmd.Parameters.AddWithValue("@headInjAmount", headInjury);
            cmd.Parameters.AddWithValue("@selfEsteem", selfEsteem);
            cmd.Parameters.AddWithValue("@exercise", exercise);
            cmd.Parameters.AddWithValue("@selfHealth", health);
            cmd.Parameters.AddWithValue("@userName", userName);
            cmd.Parameters.AddWithValue("@profileFilled", isFilled == true ? "1" : "0");
            cmd.Parameters.AddWithValue("@userId", userId);
            cmd.Parameters.AddWithValue("@income", income);
            cmd.Parameters.AddWithValue("@disclamerField", disclamerField);
            if (providerId > 0) cmd.Parameters.AddWithValue("@providerId", providerId);
            else cmd.Parameters.AddWithValue("@providerId", DBNull.Value);

            try
            {
                conn.Open();
                id = (int)cmd.ExecuteScalar();
            }
            catch (Exception ex)
            {
                InsertErrorMessage(ex.ToString(), null, null, "SaveRegistration");
                throw new Exception("Execption saving account. " + ex.Message);
            }
            finally
            {
                conn.Close();
            }

            return id;
        }



        //public static bool ProfileIsFilled(string p)
        //{
        //    return false;
        //}

        public static DataTable GetRegistarionDataByUser(string userId)
        {
            DataTable ds = new DataTable();
            SqlConnection conn = new SqlConnection(connectionSring);
            SqlCommand cmd = new SqlCommand("GetRegistarionDataByUser", conn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("userId", userId);

            try
            {
                SqlDataAdapter adp = new SqlDataAdapter(cmd);
                adp.Fill(ds);
            }
            catch (Exception ex)
            {
                InsertErrorMessage(ex.ToString(), null, null, "GetRegistarionDataByUser");
                throw new Exception("Execption getting account. " + ex.Message);
            }

            return ds;
        }

        public static DataTable GetUserProviderId(string userId)
        {
            DataTable ds = new DataTable();
            SqlConnection conn = new SqlConnection(connectionSring);
            SqlCommand cmd = new SqlCommand("GetUserProviderId", conn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("userId", userId);

            try
            {
                SqlDataAdapter adp = new SqlDataAdapter(cmd);
                adp.Fill(ds);
            }
            catch (Exception ex)
            {
                InsertErrorMessage(ex.ToString(), null, null, "GetUserProviderId");
                throw new Exception("Execption getting account. " + ex.Message);
            }

            return ds;
        }

        public static DataTable GetTrailsTestResults(int ageGroup)
        {
            DataTable ds = new DataTable();
            SqlConnection conn = new SqlConnection(connectionSring);
            SqlCommand cmd = new SqlCommand("GetRegistarionDataByUser", conn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("ageGroup", ageGroup);

            try
            {
                SqlDataAdapter adp = new SqlDataAdapter(cmd);
                adp.Fill(ds);
            }
            catch (Exception ex)
            {
                InsertErrorMessage(ex.ToString(), null, null, "GetTrailsTestResults");
                throw new Exception("Execption getting account. " + ex.Message);
            }

            return ds;
        }

        public static DataTable GetAllUserTestsP(string userId)
        {
            DataTable ds = new DataTable();
            SqlConnection conn = new SqlConnection(connectionSring);
            SqlCommand cmd = new SqlCommand("SelectAllUserTests", conn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("userId", userId);

            try
            {
                SqlDataAdapter adp = new SqlDataAdapter(cmd);
                adp.Fill(ds);
            }
            catch (Exception ex)
            {
                InsertErrorMessage(ex.ToString(), null, null, "GetAllUserTestsP");
                throw new Exception("Execption getting account. " + ex.Message);
            }

            return ds;
        }

        public static DataTable GetAllUserTests(string userId)
        {
            DataTable ds = new DataTable();
            SqlConnection conn = new SqlConnection(connectionSring);
            SqlCommand cmd = new SqlCommand("SelectPaidUserTests", conn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("userId", userId);

            try
            {
                SqlDataAdapter adp = new SqlDataAdapter(cmd);
                adp.Fill(ds);
            }
            catch (Exception ex)
            {
                InsertErrorMessage(ex.ToString(), null, null, "GetAllUserTests");
                throw new Exception("Execption getting account. " + ex.Message);
            }

            return ds;
        }

        public static DataTable GetAllUserFinishedTests(string userId)
        {
            DataTable ds = new DataTable();
            SqlConnection conn = new SqlConnection(connectionSring);
            SqlCommand cmd = new SqlCommand("SelectFinishedUserTests", conn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("userId", userId);

            try
            {
                SqlDataAdapter adp = new SqlDataAdapter(cmd);
                adp.Fill(ds);
            }
            catch (Exception ex)
            {
                InsertErrorMessage(ex.ToString(), null, null, "GetAllUserFinishedTests");
                throw new Exception("Execption getting account. " + ex.Message);
            }

            return ds;
        }

        public static void UpdateTrailsResultsA(string userId, decimal timeTrailA)
        {
            DataTable ds = new DataTable();
            SqlConnection conn = new SqlConnection(connectionSring);
            SqlCommand cmd = new SqlCommand("InsertResultTrailsA", conn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("userId", userId);
            cmd.Parameters.AddWithValue("timeTrailA", timeTrailA);
            try
            {
                conn.Open();
                cmd.ExecuteNonQuery();
            }
            catch (Exception ex)
            {
                InsertErrorMessage(ex.ToString(), null, null, "UpdateTrailsResultsA");
                throw new Exception("Execption saving account. " + ex.Message);
            }
            finally
            {
                conn.Close();
            }
        }

        public static void UpdateLondonUserResults(string userId, int tId, string testId,
            int game, decimal initThinkTime, decimal totalTime, int numMoves,
            int numWrongMoves, bool overTime, bool overMoves, int minMoves)
        {
            DataTable ds = new DataTable();
            using (SqlConnection conn = new SqlConnection(connectionSring))
            {
                using (SqlCommand cmd = new SqlCommand("UpdateLondonUserResults", conn))
                {
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@userId", userId);
                    cmd.Parameters.AddWithValue("@testId", testId);
                    cmd.Parameters.AddWithValue("@tid", tId);
                    cmd.Parameters.AddWithValue("@game", game);
                    cmd.Parameters.AddWithValue("@initThinkTime", initThinkTime);
                    cmd.Parameters.AddWithValue("@totalTime", totalTime);
                    cmd.Parameters.AddWithValue("@numberMoves", numMoves);
                    cmd.Parameters.AddWithValue("@numberWrongMoves", numWrongMoves);
                    cmd.Parameters.AddWithValue("@overTime", overTime);
                    cmd.Parameters.AddWithValue("@overMove", overMoves);
                    cmd.Parameters.AddWithValue("@minMoves", minMoves);

                    try
                    {
                        conn.Open();
                        cmd.ExecuteNonQuery();
                    }
                    catch (Exception ex)
                    {
                        InsertErrorMessage(ex.ToString(), null, null, "UpdateLondonUserResults");
                    }
                }

            }
        }


        //public static DataTable UpdateTrailsResultsA(string userId, double timeTrailA)
        //{
        //    DataTable ds = new DataTable();
        //    SqlConnection conn = new SqlConnection(connectionSring);
        //    SqlCommand cmd = new SqlCommand("GetRegistarionDataByUser", conn);
        //    cmd.CommandType = CommandType.StoredProcedure;
        //    cmd.Parameters.AddWithValue("userId", userId);
        //    cmd.Parameters.AddWithValue("timeTrailA", timeTrailA);

        //    try
        //    {
        //        SqlDataAdapter adp = new SqlDataAdapter(cmd);
        //        adp.Fill(ds);
        //    }
        //    catch (Exception ex)
        //    {
        //        throw new Exception("Execption trailA " + ex.Message);
        //    }

        //    return ds;
        //}

        public static void UpdateTrailsResultsB(string userId, double timeTrailB)
        {
            DataTable ds = new DataTable();
            SqlConnection conn = new SqlConnection(connectionSring);
            SqlCommand cmd = new SqlCommand("InsertResultTrailsA", conn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("userId", userId);
            cmd.Parameters.AddWithValue("timeTrailB", timeTrailB);

            try
            {
                conn.Open();
                cmd.ExecuteNonQuery();
            }
            catch (Exception ex)
            {
                InsertErrorMessage(ex.ToString(), null, null, "UpdateTrailsResultsB");
                throw new Exception("Execption saving account. " + ex.Message);
            }
            finally
            {
                conn.Close();
            }
        }

        public static void UpdateTrailsResults(string userId, decimal decimalValA, decimal decimalValB, int tId)
        {

            SqlConnection conn = new SqlConnection(connectionSring);
            SqlCommand cmd = new SqlCommand("UpdateTrailsResultsUser", conn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("userId", userId);
            cmd.Parameters.AddWithValue("tId", tId);
            cmd.Parameters.AddWithValue("timeTrailA", decimalValA);
            cmd.Parameters.AddWithValue("timeTrailB", decimalValB);

            try
            {
                conn.Open();
                cmd.ExecuteNonQuery();
            }
            catch (Exception ex)
            {
                InsertErrorMessage(ex.ToString(), null, null, "UpdateTrailsResults");
                throw new Exception("Execption saving account. " + ex.Message);
            }
            finally
            {
                conn.Close();
            }

        }

        //public static bool HasPaidTest(string userId, string testId)
        //{
        //    int hasPaidTest;
        //    SqlConnection conn = new SqlConnection(connectionSring);
        //    SqlCommand cmd = new SqlCommand("isTestPaid", conn);
        //    cmd.CommandType = CommandType.StoredProcedure;

        //    cmd.Parameters.AddWithValue("userId", userId);
        //    cmd.Parameters.AddWithValue("testId", testId);

        //    try
        //    {
        //        conn.Open();
        //        hasPaidTest = (int)cmd.ExecuteScalar();
        //    }
        //    catch (Exception ex)
        //    {
        //        throw new Exception("Execption in hasPaidTest. " + ex.Message);
        //    }
        //    finally
        //    {
        //        conn.Close();
        //    }


        //    return  (hasPaidTest== null || hasPaidTest == 0) ? false : true;
        //}

        public static int HasPaidTest(string userId, string testId)
        {
            int id;
            DataTable ds = new DataTable();
            SqlConnection conn = new SqlConnection(connectionSring);
            SqlCommand cmd = new SqlCommand("isTestPaid", conn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("userId", userId);
            cmd.Parameters.AddWithValue("testId", testId);
            try
            {
                conn.Open();
                id = (int)cmd.ExecuteScalar();
            }
            catch (Exception ex)
            {
                InsertErrorMessage(ex.ToString(), null, null, "HasPaidTest");
                throw new Exception("Execption Getting Saved Results. " + ex.Message);
            }
            finally
            {
                conn.Close();
            }

            return id;
        }

        public static void InsertTestPaid(string _userId, string _testId, string modTestId = null)
        {

            SqlConnection conn = new SqlConnection(connectionSring);
            SqlCommand cmd = new SqlCommand("InsertTestPaid", conn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("userId", _userId);
            cmd.Parameters.AddWithValue("testId", _testId);
            if (modTestId != null)
                cmd.Parameters.AddWithValue("@modTestId ", modTestId);
            else
                cmd.Parameters.AddWithValue("@modTestId ", DBNull.Value);

            try
            {
                conn.Open();
                cmd.ExecuteNonQuery();
            }
            catch (Exception ex)
            {
                InsertErrorMessage(ex.ToString(), null, null, "InsertTestPaid");
                throw new Exception("Execption in isTestPaid: " + ex.Message);
            }
            finally
            {
                conn.Close();
            }

        }

        public static void InsertStroopResult(
            string userId,
            int testId,
            string round,
            int correctRespCount,
            int incorrectRespCount,
            decimal avgRespTime
            )
        {

            SqlConnection conn = new SqlConnection(connectionSring);
            SqlCommand cmd = new SqlCommand("InserStroopResult", conn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@userId", userId);
            cmd.Parameters.AddWithValue("@testId", testId);
            cmd.Parameters.AddWithValue("@round", round);
            cmd.Parameters.AddWithValue("@correctRespCount", correctRespCount);
            cmd.Parameters.AddWithValue("@incorrectRespCount", incorrectRespCount);
            cmd.Parameters.AddWithValue("@avgRespTime", avgRespTime);

            try
            {
                conn.Open();
                cmd.ExecuteNonQuery();
            }
            catch (Exception ex)
            {
                InsertErrorMessage(ex.ToString(), null, null, "InserStroopResult");
                throw new Exception("Execption in InserStroopResult: " + ex.Message);
            }
            finally
            {
                conn.Close();
            }

        }

        public static DataSet Get3dPartyTest(bool finished, Guid userId, int tId)
        {
            DataSet ds = new DataSet();
            SqlConnection conn = new SqlConnection(connectionSring);
            SqlCommand cmd = new SqlCommand("Get3dPartyTest", conn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@finished", finished);
            cmd.Parameters.AddWithValue("@userId", userId);
            cmd.Parameters.AddWithValue("@tId", tId);

            try
            {
                SqlDataAdapter adp = new SqlDataAdapter(cmd);
                adp.Fill(ds);
            }
            catch (Exception ex)
            {
                InsertErrorMessage(ex.ToString(), null, null, "Get3dPartyTest");
                throw new Exception("Execption getting 3rd Party Test. " + ex.Message);
            }

            return ds;
        }

        public static DataSet Get3dPartyTestByTestId(int tId)
        {
            DataSet ds = new DataSet();
            SqlConnection conn = new SqlConnection(connectionSring);
            SqlCommand cmd = new SqlCommand("Get3dPartyTestByTestId", conn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@tId", tId);

            try
            {
                SqlDataAdapter adp = new SqlDataAdapter(cmd);
                adp.Fill(ds);
            }
            catch (Exception ex)
            {
                InsertErrorMessage(ex.ToString(), null, null, "Get3dPartyTest");
                throw new Exception("Execption getting 3rd Party Test. " + ex.Message);
            }

            return ds;
        }

        public static void Insert3dPartyTest(
            Guid userId,
            int sequence,
            bool finished,
            string relationship,
            int tId
            )
        {

            SqlConnection conn = new SqlConnection(connectionSring);
            SqlCommand cmd = new SqlCommand("Insert3dPartyTest", conn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@userId", userId);
            cmd.Parameters.AddWithValue("@sequence", sequence);
            cmd.Parameters.AddWithValue("@finished", finished);
            cmd.Parameters.AddWithValue("@relationship", relationship);
            cmd.Parameters.AddWithValue("@tId", tId);

            try
            {
                conn.Open();
                cmd.ExecuteNonQuery();
            }
            catch (Exception ex)
            {
                InsertErrorMessage(ex.ToString(), null, null, "Insert3dPartyTestResult");
                throw new Exception("Execption in Insert3dPartyTestResult: " + ex.Message);
            }
            finally
            {
                conn.Close();
            }

        }

        public static void Update3dPartyTest(
            int transactionId,
            int sequence,
            bool finished,
            string paramString,
            Guid userId,
            int tId
            )
        {

            SqlConnection conn = new SqlConnection(connectionSring);
            SqlCommand cmd = new SqlCommand("Update3dPartyTest", conn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@transactionId", transactionId);
            cmd.Parameters.AddWithValue("@sequence", sequence);
            cmd.Parameters.AddWithValue("@finished", finished);
            cmd.Parameters.AddWithValue("@paramString", paramString);
            cmd.Parameters.AddWithValue("@userId", userId);
            cmd.Parameters.AddWithValue("@tId", tId);

            try
            {
                conn.Open();
                cmd.ExecuteNonQuery();
            }
            catch (Exception ex)
            {
                InsertErrorMessage(ex.ToString(), null, null, "Update3dPartyTestResult");
                throw new Exception("Execption in Update3dPartyTestResult: " + ex.Message);
            }
            finally
            {
                conn.Close();
            }

        }

        public static void UpdateTestStart(int userTestId)
        {
            SqlConnection conn = new SqlConnection(connectionSring);
            SqlCommand cmd = new SqlCommand("InsertTestStarted", conn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("tId", userTestId);
            try
            {
                conn.Open();
                cmd.ExecuteNonQuery();
            }
            catch (Exception ex)
            {
                InsertErrorMessage(ex.ToString(), null, null, "UpdateTestStart");
                throw new Exception("Execption in isTestPaid: " + ex.Message);
            }
            finally
            {
                conn.Close();
            }

        }

        internal static void UpdateTestFinished(string _userId, int userTestId)
        {
            SqlConnection conn = new SqlConnection(connectionSring);
            SqlCommand cmd = new SqlCommand("InsertTestFinished", conn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("tId", userTestId);
            cmd.Parameters.AddWithValue("userId", _userId);
            try
            {
                conn.Open();
                cmd.ExecuteNonQuery();
            }
            catch (Exception ex)
            {
                InsertErrorMessage(ex.ToString(), null, null, "pdateTestFinished");
                throw new Exception("Execption in isTestPaid: " + ex.Message);

            }
            finally
            {
                conn.Close();
            }
        }

        internal static void InsertErrorMessage(string exeptionMessage, string userId = null,
            string pageName = null, string procName = null)
        {
            SqlConnection conn = new SqlConnection(connectionSring);
            SqlCommand cmd = new SqlCommand("InsertErrorMessage", conn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@exeptionMessage", exeptionMessage);

            if (!String.IsNullOrEmpty(userId))
                cmd.Parameters.AddWithValue("@userId", userId);
            else
                cmd.Parameters.AddWithValue("@userId", DBNull.Value);

            if (pageName != null)
                cmd.Parameters.AddWithValue("@pageName", pageName);
            else
                cmd.Parameters.AddWithValue("@pageName", DBNull.Value);
            if (procName != null)
                cmd.Parameters.AddWithValue("@procName", procName);
            else
                cmd.Parameters.AddWithValue("@procName", DBNull.Value);

            try
            {
                conn.Open();
                cmd.ExecuteNonQuery();
            }
            catch (Exception ex)
            {

                throw new Exception("Execption Inserting exeption..." + ex.Message);
            }
            finally
            {
                conn.Close();
            }
        }

        //TODO: make DAL more abstract as well.
        //TODO2:Add using statement not only to close, but to ispose connection, super dangerous code upper.
        //methods could be declared as public, no need of internal identifiers.
        /// <summary>
        /// Gets all values from stored procedures
        /// </summary>
        /// <param name="procedureName">used in stucture as "Get+procedureName" to use stored procedure</param>
        /// <returns></returns>
        public DataTable GetValues(string procedureName)
        {
            using (SqlConnection sqc = new SqlConnection(connectionSring))
            {
                using (SqlCommand cmd = new SqlCommand("Get" + procedureName, sqc))
                {
                    DataTable dt = new DataTable();
                    cmd.CommandType = CommandType.StoredProcedure;
                    try
                    {
                        SqlDataAdapter adp = new SqlDataAdapter(cmd);
                        adp.Fill(dt);
                    }
                    catch (Exception ex)
                    {
                        InsertErrorMessage(ex.ToString(), null, null, "Get" + procedureName);
                        throw new Exception("Execption getting result from Get " + procedureName + ".\n" + ex.Message);
                    }
                    return dt;

                }
            }


        }

        //todo make more abstract through reflections
        public static void InsertMemoryCardsResult(MemoryCardsResults result)
        {
            using (SqlConnection sqc = new SqlConnection(connectionSring))
            {
                using (SqlCommand cmd = new SqlCommand("InsertMemoryCardsResult", sqc))
                {
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@name", result.Name);
                    cmd.Parameters.AddWithValue("@totalMoves", result.TotalMoves);
                    cmd.Parameters.AddWithValue("@incorrectMatching", result.IncorrectMatching);
                    cmd.Parameters.AddWithValue("@score", result.Score);
                    cmd.Parameters.AddWithValue("@firstCardAvgRespTime", result.FirstCardAvgRespTime);
                    cmd.Parameters.AddWithValue("@secondCardAvgRespTime", result.SecondCardAvgRespTime);
                    cmd.Parameters.AddWithValue("@testTime", result.TotalMoves);

                    try
                    {
                        sqc.Open();
                        cmd.ExecuteNonQuery();
                    }
                    catch (Exception ex)
                    {

                        throw new Exception("Execption Inserting exeption..." + ex.Message);
                    }
                }

            }
        }


        public static void UpdateMemoryCardsTrial(string testName, int testId, MemoryCardsConfigSaveResult result)
        {
            using (SqlConnection sqc = new SqlConnection(connectionSring))
            {
                using (SqlCommand cmd = new SqlCommand("UpdateMemoryCardsTrial", sqc))
                {
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@TestId", testId);
                    cmd.Parameters.AddWithValue("@TestName", testName);
                    cmd.Parameters.AddWithValue("@TrialName", result.TrialName);
                    cmd.Parameters.AddWithValue("@TrialId", result.TrialNameId);
                    cmd.Parameters.AddWithValue("@TrialText", result.TestText);
                    cmd.Parameters.AddWithValue("@Matrix", result.Matrix);
                    cmd.Parameters.AddWithValue("@Scheme", result.Scheme);
                    cmd.Parameters.AddWithValue("@OverTime", result.Time);
                    cmd.Parameters.AddWithValue("@ImagesName", result.Image);

                    try
                    {
                        sqc.Open();
                        cmd.ExecuteNonQuery();
                    }
                    catch (Exception ex)
                    {

                        throw new Exception("Execption Inserting exeption..." + ex.Message);
                    }
                }

            }
        }


        public static void CreateMemoryCards(string testName, int testId)
        {
            using (SqlConnection sqc = new SqlConnection(connectionSring))
            {
                using (SqlCommand cmd = new SqlCommand("InsertMemoryCards", sqc))
                {
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@Id", testId);
                    cmd.Parameters.AddWithValue("@Name", testName);

                    try
                    {
                        sqc.Open();
                        cmd.ExecuteNonQuery();
                    }
                    catch (Exception ex)
                    {

                        throw new Exception("Execption Inserting exeption..." + ex.Message);
                    }
                }

            }
        }

        public static void InsertMemoryCardsTrial(int testId, MemoryCardsConfigSaveResult result)
        {
            using (SqlConnection sqc = new SqlConnection(connectionSring))
            {
                using (SqlCommand cmd = new SqlCommand("InsertMemoryCardsTrial", sqc))
                {
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@TestId", testId);
                    cmd.Parameters.AddWithValue("@TrialName", result.TrialName);
                    cmd.Parameters.AddWithValue("@TrialText", result.TestText);
                    cmd.Parameters.AddWithValue("@Matrix", result.Matrix);
                    cmd.Parameters.AddWithValue("@Scheme", result.Scheme);
                    cmd.Parameters.AddWithValue("@OverTime", Int32.Parse(result.Time));
                    cmd.Parameters.AddWithValue("@ImagesName", result.Image);

                    try
                    {
                        sqc.Open();
                        cmd.ExecuteNonQuery();
                    }
                    catch (Exception ex)
                    {

                        throw new Exception("Execption Inserting exeption..." + ex.Message);
                    }
                }
            }
        }

        public static DataSet GetTestByTestId(int testId)
        {
            DataSet ds = new DataSet();
            SqlConnection conn = new SqlConnection(connectionSring);
            SqlCommand cmd = new SqlCommand("GetTestByTestId", conn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@TestId", testId);

            try
            {
                SqlDataAdapter adp = new SqlDataAdapter(cmd);
                adp.Fill(ds);
            }
            catch (Exception ex)
            {
                throw new Exception("Execption getting London Moves. " + ex.Message);
            }

            return ds;
        }

        public static DataSet GetTestResultsLondon(int testId, DateTime? from, DateTime? to)
        {
            DataSet ds = new DataSet();
            SqlConnection conn = new SqlConnection(connectionSring);
            SqlCommand cmd = new SqlCommand("GetUsersLondonTestResults", conn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@from", from);
            cmd.Parameters.AddWithValue("@to", to);

            try
            {
                SqlDataAdapter adp = new SqlDataAdapter(cmd);
                adp.Fill(ds);
            }
            catch (Exception ex)
            {
                throw new Exception("Execption getting test results. " + ex.Message);
            }

            return ds;
        }

        public static DataSet GetTestResultsTrails(int testId, DateTime? from, DateTime? to)
        {
            DataSet ds = new DataSet();
            SqlConnection conn = new SqlConnection(connectionSring);
            SqlCommand cmd = new SqlCommand("GetUsersTrailsTestResults", conn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@from", from);
            cmd.Parameters.AddWithValue("@to", to);

            try
            {
                SqlDataAdapter adp = new SqlDataAdapter(cmd);
                adp.Fill(ds);
            }
            catch (Exception ex)
            {
                throw new Exception("Execption getting test results. " + ex.Message);
            }

            return ds;
        }

        public static DataSet GetTestResultsSyllogisms(int testId, DateTime? from, DateTime? to)
        {
            DataSet ds = new DataSet();
            SqlConnection conn = new SqlConnection(connectionSring);
            SqlCommand cmd = new SqlCommand("GetUsersSyllogismsTestResults", conn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@from", from);
            cmd.Parameters.AddWithValue("@to", to);

            try
            {
                SqlDataAdapter adp = new SqlDataAdapter(cmd);
                adp.Fill(ds);
            }
            catch (Exception ex)
            {
                throw new Exception("Execption getting test results. " + ex.Message);
            }

            return ds;
        }

        internal static DataSet GetTestResultsCardSort(int testId, DateTime? from, DateTime? to)
        {
            DataSet ds = new DataSet();
            SqlConnection conn = new SqlConnection(connectionSring);
            SqlCommand cmd = new SqlCommand("GetUsersCardSortTestResults", conn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@from", from);
            cmd.Parameters.AddWithValue("@to", to);

            try
            {
                SqlDataAdapter adp = new SqlDataAdapter(cmd);
                adp.Fill(ds);
            }
            catch (Exception ex)
            {
                throw new Exception("Execption getting test results. " + ex.Message);
            }

            return ds;
        }

        internal static DataSet GetTestResultsNback(int testId, DateTime? from, DateTime? to)
        {
            DataSet ds = new DataSet();
            SqlConnection conn = new SqlConnection(connectionSring);
            SqlCommand cmd = new SqlCommand("GetUsersNbackTestResults", conn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@from", from);
            cmd.Parameters.AddWithValue("@to", to);

            try
            {
                SqlDataAdapter adp = new SqlDataAdapter(cmd);
                adp.Fill(ds);
            }
            catch (Exception ex)
            {
                throw new Exception("Execption getting test results. " + ex.Message);
            }

            return ds;
        }

        public static DataSet GetAvailableTestByProviderId(int providerId)
        {
            DataSet ds = new DataSet();
            SqlConnection conn = new SqlConnection(connectionSring);
            SqlCommand cmd = new SqlCommand("GetAvailableTestByProviderId", conn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@providerId", providerId);

            try
            {
                SqlDataAdapter adp = new SqlDataAdapter(cmd);
                adp.Fill(ds);
            }
            catch (Exception ex)
            {
                throw new Exception("Execption getting tests by providerId. " + ex.Message);
            }

            return ds;
        }

        public static DataSet GetTestResultsLondonByModifyId(int testId, int modifyId, DateTime? @from, DateTime? to)
        {
            DataSet ds = new DataSet();
            SqlConnection conn = new SqlConnection(connectionSring);
            SqlCommand cmd = new SqlCommand("GetUsersLondonTestResultsByModifyId", conn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@modifyId", modifyId);
            cmd.Parameters.AddWithValue("@from", from);
            cmd.Parameters.AddWithValue("@to", to);

            try
            {
                SqlDataAdapter adp = new SqlDataAdapter(cmd);
                adp.Fill(ds);
            }
            catch (Exception ex)
            {
                throw new Exception("Execption getting test results. " + ex.Message);
            }

            return ds;
        }
    }
}