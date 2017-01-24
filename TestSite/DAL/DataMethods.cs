using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Configuration;
using System.Data.SqlClient;

namespace TestSite.DAL
{
    public class DataMethods
    {
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

        internal static object GetAllProviderParticipants(int? providerId)
        {
            DataSet ds = new DataSet();
            SqlConnection conn = new SqlConnection(connectionSring);
            SqlCommand cmd = new SqlCommand("GetAllProviderParticipants", conn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@providerId", providerId);
    ;
            try
            {
                SqlDataAdapter adp = new SqlDataAdapter(cmd);
                adp.Fill(ds);
            }
            catch (Exception ex)
            {
                throw new Exception("Execption getting All Provider Participants. " + ex.Message);
            }

            return ds;
        }

        internal static int? GetProviderId(string userId)
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
            }
            finally
            {
                conn.Close();
            }

            return id != null ? Int32.Parse(id.ToString()) :0;
        }

        internal static void UpdateProviderTable(string userId)
        {
            DataTable ds = new DataTable();
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
                throw new Exception("Execption saving Provider " + ex.Message);
            }
            finally
            {
                conn.Close();
            }
        }

        internal static void InsertCardSortUserMovesMap( int tId, string text)
        {
            DataTable ds = new DataTable();
            SqlConnection conn = new SqlConnection(connectionSring);
            SqlCommand cmd = new SqlCommand("InsertCardSortUserMovesMap", conn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@movesText", text);
            cmd.Parameters.AddWithValue("@tId", tId);

            try
            {
                conn.Open();
                cmd.ExecuteNonQuery();
            }
            catch (Exception ex)
            {
                throw new Exception("Execption saving CST moves. " + ex.Message);
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
            string category
            )
        {
            DataTable ds = new DataTable();
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
            try
            {
                conn.Open();
                cmd.ExecuteNonQuery();
            }
            catch (Exception ex)
            {
                throw new Exception("Execption saving CST results. " + ex.Message);
            }
            finally
            {
                conn.Close();
            }

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
                throw new Exception("Execption getting London Total Results. " + ex.Message);
            }

            return ds;
        }

        internal static DataTable GetTestNormsTrails(int ageGroup)
        {
            DataTable ds = new DataTable();
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
                throw new Exception("Execption saving account. " + ex.Message);
            }
            finally
            {
                conn.Close();
            }
        }

        public static DataTable GetTestResultsCardSort(string userId, int tId)
        {
            DataTable ds = new DataTable();
            SqlConnection conn = new SqlConnection(connectionSring);
            SqlCommand cmd = new SqlCommand("GetUserCardSortTestResults", conn);
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
                throw new Exception("Execption getting London Results. " + ex.Message);
            }

            return ds;
        }

        public static DataTable GetTestResultsLondon(string userId, int tId)
        {
            DataTable ds = new DataTable();
            SqlConnection conn = new SqlConnection(connectionSring);
            SqlCommand cmd = new SqlCommand("GetUserTestResults", conn);
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
                throw new Exception("Execption getting London Results. " + ex.Message);
            }

            return ds;
        }

        public static DataTable GetTestResultsTrails(string userId, int tId)
        {
            DataTable ds = new DataTable();
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
                throw new Exception("Execption checking Reg account. " + ex.Message);
            }
            finally
            {
                conn.Close();
            }
            return Convert.ToBoolean(isReg);
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
                     bool disclamerField
                    )
        {
            int id;
            SqlConnection conn = new SqlConnection(connectionSring);
            SqlCommand cmd = new SqlCommand("UpdateRegistrationProfile", conn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("firstName", firstName);
            cmd.Parameters.AddWithValue("lastName", lastName);
            cmd.Parameters.AddWithValue("birthDate", birthDate);
            cmd.Parameters.AddWithValue("education", education);
            cmd.Parameters.AddWithValue("medications", isOnmeds == true ? "1" : "0");
            cmd.Parameters.AddWithValue("medName", medications);
            cmd.Parameters.AddWithValue("gender", gender);
            cmd.Parameters.AddWithValue("hand", hand);
            cmd.Parameters.AddWithValue("brainActivity", brainActivity);
            cmd.Parameters.AddWithValue("ethnisity", ethnisity);
            cmd.Parameters.AddWithValue("language", language);
            cmd.Parameters.AddWithValue("headInjury", isInj == true ? "1" : "0");
            cmd.Parameters.AddWithValue("headInjAmount", headInjury);
            cmd.Parameters.AddWithValue("selfEsteem", selfEsteem);
            cmd.Parameters.AddWithValue("exercise", exercise);
            cmd.Parameters.AddWithValue("selfHealth", health);
            cmd.Parameters.AddWithValue("userName", userName);
            cmd.Parameters.AddWithValue("profileFilled", isFilled == true ? "1" : "0");
            cmd.Parameters.AddWithValue("userId", userId);
            cmd.Parameters.AddWithValue("income", income);
            cmd.Parameters.AddWithValue("disclamerField", disclamerField);

            try
            {
                conn.Open();
                id = (int)cmd.ExecuteScalar();
            }
            catch (Exception ex)
            {
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
                throw new Exception("Execption saving account. " + ex.Message);
            }
            finally
            {
                conn.Close();
            }
        }

        public static void UpdateLondonUserResults(string userId, int tId, string testId, int game, decimal initThinkTime, decimal totalTime, int numMoves, int numWrongMoves, bool overTime, bool overMoves)
        {
            DataTable ds = new DataTable();
            SqlConnection conn = new SqlConnection(connectionSring);
            SqlCommand cmd = new SqlCommand("UpdateLondonUserResults", conn);
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

            try
            {
                conn.Open();
                cmd.ExecuteNonQuery();
            }
            catch (Exception ex)
            {

            }
            finally
            {
                conn.Close();
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
                throw new Exception("Execption saving account. " + ex.Message);
            }
            finally
            {
                conn.Close();
            }
        }

        public static void UpdateTrailsResults(string userId, decimal decimalValA, decimal decimalValB, int tId)
        {
            DataTable ds = new DataTable();
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
                throw new Exception("Execption Getting Saved Results. " + ex.Message);
            }
            finally
            {
                conn.Close();
            }

            return id;
        }

        public static void InsertTestPaid(string _userId, string _testId)
        {

            SqlConnection conn = new SqlConnection(connectionSring);
            SqlCommand cmd = new SqlCommand("InsertTestPaid", conn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("userId", _userId);
            cmd.Parameters.AddWithValue("testId", _testId);

            try
            {
                conn.Open();
                cmd.ExecuteNonQuery();
            }
            catch (Exception ex)
            {
                throw new Exception("Execption in isTestPaid: " + ex.Message);
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
                throw new Exception("Execption in isTestPaid: " + ex.Message);
            }
            finally
            {
                conn.Close();
            }
        }
    }
}