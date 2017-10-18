using System;
using System.Collections.Generic;
using System.Data;
using System.IO;
using System.Linq;
using System.Text;
using System.Web;
using TestSite.DAL;




namespace TestSite.HelpClasses
{
    public static class ExportData
    {
        public static void ExportSingle(string userId, int tId, string userName, string testType)
        {
            DataSet ds = GetExportData(userId, tId, testType);

            string myfile = ExportOneLineCSV(ds, testType);
            string name = GetPartName(userId);

            try
            {
                string fileName = name + "_" + DateTime.Now.ToShortDateString() + "_" + tId + ".csv";
                string filePath = Environment.GetFolderPath(Environment.SpecialFolder.MyDocuments);
                //File.WriteAllText(filePath + "\\" + fileName, myfile);
                string attachment = "attachment; filename=" + fileName;
                HttpContext.Current.Response.Clear();
                HttpContext.Current.Response.ClearHeaders();
                HttpContext.Current.Response.ClearContent();
                HttpContext.Current.Response.AddHeader("content-disposition", attachment);
                HttpContext.Current.Response.ContentType = "text/csv";
                HttpContext.Current.Response.AddHeader("Pragma", "public");
                HttpContext.Current.Response.Write(myfile);
                HttpContext.Current.Response.Flush();
                HttpContext.Current.Response.End();


                //HttpContext.Current.Response.Clear();
                //HttpResponse.AppendHeader("Content -Disposition", "attachment; filename=" + fileName);
                //Response.AppendHeader("content-disposition", "attachment; filename=" + fileName);
                //Response.ContentType = "application/CSV";
                //Response.WriteFile("");
                //Response.Flush();
                //Response.End();
            }
            catch (Exception ex)
            {

            }
        }

        public static void ExportAllInSingleLines(int testId, int providerId, DateTime? from, DateTime? to)
        {
            try
            {
                DataSet test = DataMethods.GetTestByTestId(testId);
                string testName = test.Tables[0].Rows[0]["testName"].ToString();
                DataSet ds = GetExportData(testId, from, to);
                if (ds == null) return;
                string myfile = ExportOneLineCSVMany(ds);
                string fileName = testName + "_" + DateTime.Now.ToShortDateString() + "_" + testId + ".csv";
                string filePath = Environment.GetFolderPath(Environment.SpecialFolder.MyDocuments);
                //File.WriteAllText(filePath + "\\" + fileName, myfile);
                string attachment = "attachment; filename=" + fileName;
                HttpContext.Current.Response.Clear();
                HttpContext.Current.Response.ClearHeaders();
                HttpContext.Current.Response.ClearContent();
                HttpContext.Current.Response.AddHeader("content-disposition", attachment);
                //HttpContext.Current.Response.ContentType = "text/csv";
                HttpContext.Current.Response.ContentType = "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet";
                HttpContext.Current.Response.AddHeader("Pragma", "public");
                HttpContext.Current.Response.Write(myfile);
                HttpContext.Current.Response.Flush();
                HttpContext.Current.Response.SuppressContent = true;
                HttpContext.Current.Response.End();
            }
            catch (Exception ex)
            {
                throw;
            }

        }

        private static DataSet GetExportData(string userId, int tId, string testType)
        {
            DataTable name = DataMethods.GetUserName(userId);
            DataSet ds = null;
            if (testType == Enums.TestId.TowerOfLondon) //pass
            {
                ds = DataMethods.GetTestResultsLondon(userId, tId);
            }
            else if (testType == Enums.TestId.Nback) //pass
            {

                ds = DataMethods.GetNbackUserResults(userId, tId);
            }
            else if (testType == Enums.TestId.Syllogisms)
            {
                ds = DataMethods.GetSyllogismsUserResults(tId);
            }
            else if (testType == Enums.TestId.WisconsinCardSort)//pass
            {
                ds = DataMethods.GetTestResultsCardSort(userId, tId, true);
            }
            else if (testType == Enums.TestId.Trails)
            {
                ds = DataMethods.GetTestResultsTrails(userId, tId);
            }
            ds.Tables.Add(name);


            return ds;

        }

        private static DataSet GetExportData(int testId, DateTime? from, DateTime? to)
        {
            DataSet ds = null;
            if (testId.ToString() == Enums.TestId.TowerOfLondon) //pass
            {
                ds = DataMethods.GetTestResultsLondon(testId, from, to);
            }
            else if (testId.ToString() == Enums.TestId.Nback) //pass
            {
                ds = DataMethods.GetTestResultsNback(testId, from, to);
            }
            else if (testId.ToString() == Enums.TestId.Syllogisms)
            {
                ds = DataMethods.GetTestResultsSyllogisms(testId, from, to);
            }
            else if (testId.ToString() == Enums.TestId.WisconsinCardSort)//pass
            {
                ds = DataMethods.GetTestResultsCardSort(testId, from, to);
            }
            else if (testId.ToString() == Enums.TestId.Trails)
            {
                ds = DataMethods.GetTestResultsTrails(testId, from, to);
            }

            return ds;
        }

        private static DataSet GetExportDataByModifyId(int testId, int modifyId, DateTime? from, DateTime? to)
        {

            DataSet ds = null;
            if (testId.ToString() == Enums.TestId.TowerOfLondon) //pass
            {
                ds = DataMethods.GetTestResultsLondonByModifyId(testId, modifyId, from, to);
            }

            return ds;
        }

        private static string ExportOneLineCSVMany(DataSet ds)
        {
            StringBuilder body = new StringBuilder();
            StringBuilder head = new StringBuilder();
            int previoustId = 0;
            int longestRow = 0;
            int rowsCounter = 0;

            for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
            {
                if (Convert.ToInt32(ds.Tables[0].Rows[i]["tId"]) != previoustId)
                {
                    longestRow = longestRow < rowsCounter ? rowsCounter : longestRow;
                    rowsCounter = 0;
                    body.AppendLine();
                }
                else
                {
                    rowsCounter++;
                }
                for (int j = 0; j < ds.Tables[0].Columns.Count; j++)
                {
                    body.Append(ds.Tables[0].Rows[i][ds.Tables[0].Columns[j].ColumnName]);
                    body.Append(',');
                    previoustId = Convert.ToInt32(ds.Tables[0].Rows[i]["tId"]);
                }
            }

            for (int i = 0; i < longestRow + 1; i++)
            {
                for (int j = 0; j < ds.Tables[0].Columns.Count; j++)
                {
                    head.Append(ds.Tables[0].Columns[j].ColumnName);
                    head.Append(',');
                }
            }

            head.AppendLine();
            return head + body.ToString();
        }

        private static string ExportNormalCSVMany(DataSet ds)
        {
            StringBuilder sb = new StringBuilder();
            for (int j = 0; j < ds.Tables[0].Columns.Count; j++)
            {
                sb.Append(ds.Tables[0].Columns[j].ColumnName);
                sb.Append(',');
            }

            sb.AppendLine();

            for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
            {
                for (int j = 0; j < ds.Tables[0].Columns.Count; j++)
                {
                    sb.Append(ds.Tables[0].Rows[i][ds.Tables[0].Columns[j].ColumnName]);
                    sb.Append(',');
                }
                sb.AppendLine();
            }
            return sb.ToString();
        }

        private static string ExportOneLineCSV(DataSet ds, string testType)
        {

            StringBuilder sb = new StringBuilder();

            for (int i = 0; i < ds.Tables[1].Rows.Count; i++)
            {

                for (int j = 0; j < ds.Tables[1].Columns.Count; j++)
                {
                    sb.Append(ds.Tables[1].Columns[j].ColumnName);
                    sb.Append(',');
                }
            }

            for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
            {

                for (int j = 0; j < ds.Tables[0].Columns.Count; j++)
                {
                    sb.Append(ds.Tables[0].Columns[j].ColumnName);
                    sb.Append(',');
                }
            }
            sb.AppendLine();
            for (int i = 0; i < ds.Tables[1].Rows.Count; i++)
            {

                for (int j = 0; j < ds.Tables[1].Columns.Count; j++)
                {

                    sb.Append(ds.Tables[1].Rows[i][ds.Tables[1].Columns[j].ColumnName]);
                    sb.Append(',');
                }
            }

            for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
            {
                for (int j = 0; j < ds.Tables[0].Columns.Count; j++)
                {
                    sb.Append(ds.Tables[0].Rows[i][ds.Tables[0].Columns[j].ColumnName]);
                    sb.Append(',');
                }
            }
            //File.WriteAllText(@"C:\LondonResults\test.csv", sb.ToString());
            return sb.ToString();
        }

        public static void ExportAllNormalByModifyId(int testId, int testModifyId, int provider, DateTime? from, DateTime? to)
        {
            try
            {
                DataSet test = DataMethods.GetTestByTestId(testId);
                string testName = test.Tables[0].Rows[0]["testName"].ToString();
                DataSet ds = GetExportDataByModifyId(testId, testModifyId, from, to);
                if (ds == null) return;
                string myfile = ExportNormalCSVMany(ds);
                string fileName = testName + "_" + DateTime.Now.ToShortDateString() + "_" + testId + ".csv";
                string filePath = Environment.GetFolderPath(Environment.SpecialFolder.MyDocuments);
                //File.WriteAllText(filePath + "\\" + fileName, myfile);
                string attachment = "attachment; filename=" + fileName;
                HttpContext.Current.Response.Clear();
                HttpContext.Current.Response.ClearHeaders();
                HttpContext.Current.Response.ClearContent();
                HttpContext.Current.Response.AddHeader("content-disposition", attachment);
                //HttpContext.Current.Response.ContentType = "text/csv";
                HttpContext.Current.Response.ContentType = "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet";
                HttpContext.Current.Response.AddHeader("Pragma", "public");
                HttpContext.Current.Response.Write(myfile);
                HttpContext.Current.Response.Flush();
                HttpContext.Current.Response.SuppressContent = true;
                HttpContext.Current.Response.End();
            }
            catch (Exception)
            {

                throw;
            }
        }

        public static void ExportAllNormal(int testId, int providerId, DateTime? from, DateTime? to)
        {
            try
            {
                DataSet test = DataMethods.GetTestByTestId(testId);
                string testName = test.Tables[0].Rows[0]["testName"].ToString();
                DataSet ds = GetExportData(testId, from, to);
                if (ds == null) return;
                string myfile = ExportNormalCSVMany(ds);
                string fileName = testName + "_" + DateTime.Now.ToShortDateString() + "_" + testId + ".csv";
                string filePath = Environment.GetFolderPath(Environment.SpecialFolder.MyDocuments);
                //File.WriteAllText(filePath + "\\" + fileName, myfile);
                string attachment = "attachment; filename=" + fileName;
                HttpContext.Current.Response.Clear();
                HttpContext.Current.Response.ClearHeaders();
                HttpContext.Current.Response.ClearContent();
                HttpContext.Current.Response.AddHeader("content-disposition", attachment);
                //HttpContext.Current.Response.ContentType = "text/csv";
                HttpContext.Current.Response.ContentType = "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet";
                HttpContext.Current.Response.AddHeader("Pragma", "public");
                HttpContext.Current.Response.Write(myfile);
                HttpContext.Current.Response.Flush();
                HttpContext.Current.Response.SuppressContent = true;
                HttpContext.Current.Response.End();
            }
            catch (Exception ex)
            {
                throw;
            }
        }

        public static void ExportNormal(string userId, int tId, string userName, string testType)
        {
            DataSet ds = GetExportData(userId, tId, testType);// DataSet ds = DataMethods.GetTestResultsLondon(userId, tId);
            string name = GetPartName(userId);


            string myFile = ExportNormalCSV(ds.Tables[0]);
            try
            {
                string fileName = name + "_" + DateTime.Now.ToShortDateString() + "_normal.csv";
                string filePath = Environment.GetFolderPath(Environment.SpecialFolder.MyDocuments);
                //File.WriteAllText(filePath + "\\" + fileName, myFile);
                // @"C:\LondonResults\" + userName + "_" + DateTime.Now.ToShortDateString() + ".xlsx");
                string attachment = "attachment; filename=" + fileName;
                HttpContext.Current.Response.Clear();
                HttpContext.Current.Response.ClearHeaders();
                HttpContext.Current.Response.ClearContent();
                HttpContext.Current.Response.AddHeader("content-disposition", attachment);
                HttpContext.Current.Response.ContentType = "text/csv";
                HttpContext.Current.Response.AddHeader("Pragma", "public");
                HttpContext.Current.Response.Write(myFile);
                HttpContext.Current.Response.Flush();
                HttpContext.Current.Response.End();

            }
            catch (Exception ex)
            {

            }
        }

        private static string ExportNormalCSV(DataSet ds)
        {
            DataTable datatable = ds.Tables[0];
            DataTable total = ds.Tables[2];
            StringBuilder sb = new StringBuilder();

            for (int i = 0; i < datatable.Columns.Count; i++)
            {
                sb.Append(datatable.Columns[i]);
                if (i < datatable.Columns.Count - 1)
                    sb.Append(',');
            }
            sb.AppendLine();
            foreach (DataRow dr in datatable.Rows)
            {
                for (int i = 0; i < datatable.Columns.Count; i++)
                {
                    sb.Append(dr[i].ToString());

                    if (i < datatable.Columns.Count - 1)
                        sb.Append(',');
                }
                sb.AppendLine();
            }
            return sb.ToString();
            //File.WriteAllText(@"C:\LondonResults\test.csv", sb.ToString());
        }


        private static string GetPartName(string userId)
        {
            DataTable dt = DataMethods.GetUserName(userId);
            return string.Format("{0}_{1}", dt.Rows[0]["firstName"], dt.Rows[0]["lastName"]);
        }

    }
}