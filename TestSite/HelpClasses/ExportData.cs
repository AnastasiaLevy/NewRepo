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
        public static void ExportSingle(string userId, int tId, string userName, string testType )
        {
            DataSet ds = GetExportData(userId, tId, testType);

            string myfile = ExportOneLineCSV(ds);
            string name = GetPartName(userId);

            try
            {
                string fileName = name + "_" + DateTime.Now.ToShortDateString() + "_" + tId + ".csv";
                string filePath = Environment.GetFolderPath(Environment.SpecialFolder.MyDocuments);
                //File.WriteAllText(filePath + "\\" + fileName, myfile);
                string attachment = "attachment; filename="+ fileName;
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

        private static string ExportOneLineCSV(DataSet ds)
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

        public static void ExportNormal(string userId, int tId, string userName, string testType)
        {
            DataSet ds = GetExportData(userId, tId, testType);// DataSet ds = DataMethods.GetTestResultsLondon(userId, tId);
            string name = GetPartName(userId);


            string myFile = ExportNormalCSV(ds.Tables[0]);
            try
            {
                string fileName = name + "_" + DateTime.Now.ToShortDateString() +"_normal.csv";
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

        private static string ExportNormalCSV(DataTable datatable)
        {
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