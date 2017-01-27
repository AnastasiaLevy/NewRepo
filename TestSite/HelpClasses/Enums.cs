using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace TestSite.HelpClasses
{
    public class Enums
    {
        // public Enums();

        public class TestId
        {
            public const string Trails = "1";
            public const string TowerOfLondon = "2";
            public const string WisconsinCardSort = "3";
            public const string Nback = "4";
            // public TestId();
        }

        public static int GetAgeGroup(int age)
        {
            if (age >= 10 && age <= 14)
            {
                return 1;
            }
            else if (age >= 15 && age <= 19)
            {
                return 2;
            }
            else if (age >= 20 && age <= 29)
            {
                return 3;
            }
            else if (age >= 30 && age <= 39)
            {
                return 4;
            }
            else if (age >= 40 && age <= 49)
            {
                return 5;
            }
            else if (age >= 50 && age <= 59)
            {
                return 6;
            }
            else if (age >= 60 && age <= 69)
            {
                return 7;
            }
            else if (age >= 70 && age <= 79)
            {
                return 8;
            }
            else if (age >= 80 && age <= 89)
            {
                return 9;
            }
            else if (age >= 90 && age <= 100)
            {
                return 10;
            }
            else
                return 0;
        }

        public static string TestsMap(string str)
        {
            switch (str)
            {
                    //trails
                case "1":
                    return @"\TrailsPage.aspx";
                    //ToL
                case "2":
                    return @"\LondonPage.aspx";
                    //CardSort
                case "3":
                    return @"\WCSTPage.aspx";
                    //Nback
                case "4":
                    return @"Tests\NbackPage.aspx";
                    //Main
                default:
                    return @"\MainPage.aspx";
            }

        }

        public static string ReturnTrailsResultStrings(int factor)
        {
            string text = "";
            switch(factor)
            {
              
                case -3:
                    text = "Exellent";
                    break;
                case -2:
                    text = "Very Good";
                    break;
                case -1:
                    text = "Above Average";
                    break;
                case 0:
                    text = "Average";
                    break;
                case 1:
                    text = "Below Average";
                    break;
                case 2:
                    text = "Pretty Bad";
                    break;
                case 3:
                    text = "Bad";
                    break;
                case 10:
                    text = "Unable determing results. Please contact administrator.";
                    break;
            }
            return text;

        }

        public static string ReturnLondonResultStrings(int factor)
        {
            string text = "";
            switch (factor)
            {

                case -3:
                    text = "Exellent";
                    break;
                case -2:
                    text = "Very Good";
                    break;
                case -1:
                    text = "Above Average";
                    break;
                case 0:
                    text = "Average";
                    break;
                case 1:
                    text = "Below Average";
                    break;
                case 2:
                    text = "Pretty Bad";
                    break;
                case 3:
                    text = "Bad";
                    break;
                case 10:
                    text = "Unable determing results. Please contact administrator.";
                    break;
            }
            return text;

        }


    }
}