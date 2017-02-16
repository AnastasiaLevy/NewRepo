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
            public const string Syllogisms = "5";
            public const string Stroop = "6";
            public const string Quest = "7";
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
                    return @"\TrailsWrapper.aspx";
                    //ToL
                case "2":
                    return @"\LondonWrapper.aspx";
                    //CardSort
                case "3":
                    return @"\WCSTWrapper.aspx";
                    //Nback
                case "4":
                    return @"Tests\NbackWrapper.aspx";
                //Main
                case "5":
                    return @"Tests\SyllogWrapper.aspx";
                //case "6":
                //    return @"Tests\StroopPage.aspx";
                default:
                    return @"\MainPage.aspx";
            }

        }

        public static string ReturnTrailsResultStrings(int factor)
        {
            string text = "";
            switch (factor)
            {

                case -3:
                    text = "Excellent performance! For individuals your age this score is in the top 2 to 3 percent. Scores like this can be interpreted to indicate rapid speed of processing. In general terms, this score is consistent with rapid information processing.";
                    break;
                case -2:
                    text = "Very Good performance. For individuals your age this score is in the top 10 to 15 percent. Scores like this can be interpreted to indicate rapid speed of processing. In general terms, this score is consistent with rapid processing of information.";
                    break;
                case -1:
                    text = "Good performance. This score is within the normal range.";
                    break;
                case 0:
                    text = "Good performance. This score is within the normal range.";
                    break;
                case 1:
                    text = "Good performance. This score is within the normal range.";
                    break;
                case 2:
                    text = "Your performance did not fall within the average or above average performance level your age. There are a large number of factors that may have contributed to your performance. This test is not diagnostic. There are a range of scores and some will be above and some will be below average. If you have any concerns about your performance you should consult with a licensed professional health provider.";
                    break;
                case 3:
                    text = "Your performance did not fall within the average or above average performance for someone your age. There are a large number of factors that may have contributed to your performance. This test is not diagnostic. There are a range of scores and some will be above and some will be below average. If you have any concerns about your performance you should consult with a licensed professional health provider.";
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
                    text = "Excellent performance! For individuals your age, your score places you in the top 2 to 3 percent. Scores like yours can be interpreted to indicate excellent problem solving ability. In general terms, you were able to look at the problem to be solved and develop an optimal set of moves to reach the goal position. These problems required you to look ahead, hold information in your conscious awareness, and inhibit inefficient moves.";
                    break;
                case -2:
                    text = "Very good performance! For individuals your age your score places you in the top 10 to 15 percent. Scores like yours can be interpreted to indicate excellent problem solving ability. In general terms, you were able to look at the problem to be solved and develop an optimal set of moves to reach the goal position. These problems required you to look ahead, hold information in your conscious awareness, and inhibit inefficient moves.";
                    break;
                case -1:
                    text = "Good performance. For individuals your age your score is within the normal range. In terms of excess moves, your performance was in the upper 50 percent ";
                    break;
                case 0:
                    text = "Good performance. For individuals your age your score is within the normal range.";
                    break;
                case 1:
                    text = "Average performance. For individuals your age your score is within the normal range.";
                    break;
                case 2:
                    text = "Your performance did not fall within the average range for someone your age. There are a large number of factors that may have contributed to your performance. This test is not diagnostic. There are a range of scores and some will be above and some will be below average. If you have any concerns about your performance you might consider consulting with a licensed professional health provider. Your results can be printed and provided to the professional you consult with.";
                    break;
                case 3:
                    text = "Your performance did not fall within the average range for someone your age. There are a large number of factors that may have contributed to your performance. This test is not diagnostic. There are a range of scores and some will be above and some will be below average. If you have any concerns about your performance you might consider consulting with a licensed professional health provider. Your results can be printed and provided to anyone you consult with.";
                    break;
                case 10:
                    text = "Unable determing results. Please contact administrator.";
                    break;
            }
            return text;

        }

        public static string ReturnCardSortCatNumber(int factor)
        {
            string text = "";
            switch (factor)
            {

                case -3:
                    text = "Excellent performance! For individuals your age your score places you in the top 2 to 3 percent. Scores like yours can be interpreted to indicate an excellent ability to use feedback (correct or incorrect matching) to make appropriate changes in your cognitive strategy. In general terms, you were able to use feedback following an attempted match to modify your strategy in matching cards. You learned to inhibit incorrect matches and explore alternative strategies.";
                    break;
                case -2:
                    text = "Very good performance! Excellent performance! For individuals your age your score places you in the top 10 to 15 percent. Scores like yours can be interpreted to indicate an excellent ability to use feedback (correct or incorrect matching) to make appropriate changes in your cognitive strategy. In general terms, you were able to use feedback following an attempted match to modify your stratgey in matching cards. You learned to inhibit incorrect matches and expore alternative strategies";
                    break;
                case -1:
                    text = "Good. You demonstrated high average performance. For individuals your age your score is within the normal range. In terms of categories shifts achieved, your performance was in the upper 50 percent.";
                    break;
                case 0:
                    text = "You demonstrated average performance. For individuals your age your score is within the normal range. In terms of categories shifts achieved, your performance was in the normal range.";
                    break;
                case 1:
                    text = "You demonstrated average performance. For individuals your age, your score is within the normal range. In terms of categories shifts achieved, your performance was in the normal range.";
                    break;
                case 2:
                    text = "Your performance did not fall within the average range for someone your age. There are a large number of factors that may have contributed to your performance. This test is not diagnostic. There are a range of scores and some will be above and some will be below average. If you have any concerns about your performance you might consider consulting with a licensed professional health provider. Your results can be printed and provided to the professional you consult with.";
                    break;
                case 3:
                    text = "Your performance did not fall within the average range for someone your age. There are a large number of factors that may have contributed to your performance. This test is not diagnostic. There are a range of scores and some will be above and some will be below average. If you have any concerns about your performance you might consider consulting with a licensed professional health provider. Your results can be printed and provided to the professional you consult with.";
                    break;
                case 10:
                    text = "Unable determing results. Please contact administrator.";
                    break;
            }
            return text;

        }
        public static string ReturnCardSortNonpersevErrors(int factor)
        {
            string text = "";
            switch (factor)
            {

                case -3:
                    text = "Excellent performance! For individuals your age, your score places you in the top 2 to 3 percent. Scores like yours can be interpreted to indicate an excellent ability to use feedback (correct or incorrect matching) to make appropriate changes in your cognitive strategy. In general terms, you were able to use feedback following an attempted match to modify your strategy in matching cards. You learned to inhibit incorrect matches and explore alternative strategies.";
                    break;
                case -2:
                    text = "Very good performance! For individuals your age your score places you in the top 10 to 15 percent. Scores like yours can be interpreted to indicate an excellent ability to use feedback (correct or incorrect matching) to make appropriate changes in your cognitive strategy. In general terms, you were able to use feedback following an attempted match to modify your strategy in matching cards. You learned to inhibit incorrect matches and explore alternative strategies.";
                    break;
                case -1:
                    text = "Good. You demonstrated high average performance. For individuals your age your score is within the normal range. In terms of the number of nonpreservative errors, your performance was in the upper 50 percent.";
                    break;
                case 0:
                    text = "You demonstrated average performance. For individuals your age your score is within the normal range. In terms of the number of nonpreservative errors, your performance was in the normal range.";
                    break;
                case 1:
                    text = "You demonstrated average performance. For individuals your age your score is within the normal range. In terms of the number of nonpreservative errors, your performance was in the normal range.";
                    break;
                case 2:
                    text = "Your performance did not fall within the average range for someone your age. There are a large number of factors that may have contributed to your performance. This test is not diagnostic. There are a range of scores and some will be above and some will be below average. If you have any concerns about your performance you might consider consulting with a licensed professional health provider. Your results can be printed and provided to anyone you consult with.";
                    break;
                case 3:
                    text = "Your performance did not fall within the average range for someone your age. There are a large number of factors that may have contributed to your performance. This test is not diagnostic. There are a range of scores and some will be above and some will be below average. If you have any concerns about your performance you might consider consulting with a licensed professional health provider. Your results can be printed and provided to anyone you consult with.";
                    break;
                case 10:
                    text = "Unable determing results. Please contact administrator.";
                    break;
            }
            return text;

        }
        public static string ReturnCardSortPersevErrors(int factor)
        {
            string text = "";
            switch (factor)
            {
                case -3:
                    text = "Excellent performance! For individuals your age your score places you in the top 2 to 3 percent. Scores like yours can be interpreted to indicate an excellent ability to use feedback (correct or incorrect matching) to make appropriate changes in your cognitive strategy. In general terms, you were able to use feedback following an attempted match to modify your strategy in matching cards. You learned to inhibit incorrect matches and explore alternative strategies.";
                    break;
                case -2:
                    text = "Very Good performance! For individuals your age your score places you in the top 10 to 15 percent. Scores like yours can be interpreted to indicate an excellent ability to use feedback (correct or incorrect matching) to make appropriate changes in your cognitive strategy. In general terms, you were able to use feedback following an attempted match to modify your strategy in matching cards. You learned to inhibit incorrect matches and explore alternative strategies.";
                    break;
                case -1:
                    text = "Good. You demonstrated high average performance. For individuals your age your score is within the normal range. In terms of the number of preservative errors, your performance was in the upper 50 percent.";
                    break;
                case 0:
                    text = "You demonstrated average performance. For individuals your age your score is within the normal range. In terms of the number of preservative errors, your performance was in the normal range.";
                    break;
                case 1:
                    text = "You demonstrated average performance. For individuals your age your score is within the normal range. In terms of the number of preservative errors, your performance was in the normal range.";
                    break;
                case 2:
                    text = "Your performance did not fall within the average range for someone your age. There are a large number of factors that may have contributed to your performance. This test is not diagnostic. There are a range of scores and some will be above and some will be below average. If you have any concerns about your performance you might consider consulting with a licensed professional health provider. Your results can be printed and provided to anyone you consult with.";
                    break;
                case 3:
                    text = "Your performance did not fall within the average range for someone your age. There are a large number of factors that may have contributed to your performance. This test is not diagnostic. There are a range of scores and some will be above and some will be below average. If you have any concerns about your performance you might consider consulting with a licensed professional health provider. Your results can be printed and provided to anyone you consult with.";
                    break;
                case 10:
                    text = "Unable determing results. Please contact administrator.";
                    break;
            }
            return text;


        }

        public static string ReturnSyllogResultText(int factor)
        {
            string text = "";
            switch (factor)
            {

                case -3:
                    text = "Your performance did not fall within the average range for someone your age. There are a large number of factors that may have contributed to your performance. This test is not diagnostic. There are a range of scores and some will be above and some will be below average. If you have any concerns about your performance you might consider consulting with a licensed professional health provider. Your results can be printed and provided to anyone you consult with.";
                    break;
                case -2:
                    text = "Your performance did not fall within the average range for someone your age. There are a large number of factors that may have contributed to your performance. This test is not diagnostic. There are a range of scores and some will be above and some will be below average. If you have any concerns about your performance you might consider consulting with a licensed professional health provider. Your results can be printed and provided to anyone you consult with.";
                    break;
                case -1:
                    text = "You demonstrated average performance.For individuals your age your score is within the normal range. In terms of the total number of syllogisms recognized as valid or invalid, your performance was in the normal range.";
                    break;
                case 0:
                    text = "You demonstrated average performance. For individuals your age your score is within the normal range. In terms of the total number of syllogisms recognized as valid or invalid, your performance was in the normal range.";
                    break;
                case 1:
                    text = "Good. You demonstrated high average performance. For individuals your age your score is within the normal range. In terms of the total number of syllogisms recognized as valid or invalid, your performance was in the normal range.";
                    break;
                case 2:
                    text = "Very Good. You demonstrated very good performance. For individuals your age your score places you in the top 10 to 15 percent. Scores like yours can be interpreted to indicate an above average ability to utilize deductive reasoning to correctly recognize the majority of syllogisms as valid or invalid.";
                    break;
                case 3:
                    text = "Excellent performance. You demonstrated excellent performance. For individuals your age your score places you in the top 2 to 3 percent. Scores like yours can be interpreted to indicate an excellent ability to utilize deductive reasoning to correctly recognize the majority of syllogisms as valid or invalid.";
                    break;
                case 10:
                    text = "Unable determing results. Please contact administrator.";
                    break;
            }
            return text;

        }

        public static string ReturnCardSortNormsTotalCorrect(int factor)
        {
            string text = "";
            switch (factor)
            {

                case -3:
                    text = "Excellent performance! For individuals your age, your score places you in the top 2 to 3 percent. Scores like yours can be interpreted to indicate an excellent ability to use feedback (correct or incorrect matching) to make appropriate changes in your cognitive strategy. In general terms, you were able to use feedback following an attempted match to modify your strategy in matching cards. You learned to inhibit incorrect matches and explore alternative strategies.";
                    break;
                case -2:
                    text = "Very Good performance! For individuals your age, your score places you in the top 10 to 15 percent. Scores like yours can be interpreted to indicate an excellent ability to use feedback (correct or incorrect matching) to make appropriate changes in your cognitive strategy. In general terms, you were able to use feedback following an attempted match to modify your strategy in matching cards. You learned to inhibit incorrect matches and explore alternative strategies";
                    break;
                case -1:
                    text = "Good. You demonstrated high average performance. For individuals your age your score is within the normal range. In terms of total corrects made, your performance was in the upper 50 percent. That is, you had fewer corrects beyond the criterion run of ten than 50% of the individuals taking this test.";
                    break;
                case 0:
                    text = "You demonstrated average performance. For individuals your age your score is within the normal range.In terms of total Corrects made, your performance was in the normal range.";
                    break;
                case 1:
                    text = "You demonstrated average performance. For individuals your age your score is within the normal range. In terms of total Corrects made, your performance was in the normal range.";
                    break;
                case 2:
                    text = " Your performance did not fall within the average range for someone your age. There are a large number of factors that may have contributed to your performance. This test is not diagnostic. There are a range of scores and some will be above and some will be below average. If you have any concerns about your performance you might consider consulting with a licensed professional health provider. Your results can be printed and provided to anyone you consult with.";
                    break;
                case 3:
                    text = "Your performance did not fall within the average range for someone your age. There are a large number of factors that may have contributed to your performance. This test is not diagnostic. There are a range of scores and some will be above and some will be below average. If you have any concerns about your performance you might consider consulting with a licensed professional health provider. Your results can be printed and provided to anyone you consult with.";
                    break;
                case 10:
                    text = "Unable determing results. Please contact administrator.";
                    break;
            }
            return text;

        }
        public static string ReturnCardSortNormsTotalErrors(int factor)
        {
            string text = "";
            switch (factor)
            {
                case -3:
                    text = "Excellent performance! For individuals your age your score places you in the top 2 to 3 percent. Scores like yours can be interpreted to indicate an excellent ability to use feedback (correct or incorrect matching) to make appropriate changes in your cognitive strategy. In general terms, you were able to use feedback following an attempted match to modify your strategy in matching cards. You learned to inhibit incorrect matches and explore alternative strategies."; 
                    break;
                case -2:
                    text = "Very Good performance! For individuals your age your score places you in the top 10 to 15 percent. Scores like yours can be interpreted to indicate an excellent ability to use feedback (correct or incorrect matching) to make appropriate changes in your cognitive strategy. In general terms, you were able to use feedback following an attempted match to modify your strategy in matching cards. You learned to inhibit incorrect matches and explore alternative strategies.";
                    break;
                case -1:
                    text = "Good. You demonstrated high average performance. For individuals your age your score is within the normal range. In terms of total matching errors made, your performance was in the upper 50 percent.";
                    break;
                case 0:
                    text = "You demonstrated average performance. For individuals your age your score is within the normal range. In terms of total matching errors made, your performance was in the normal range.";
                    break;
                case 1:
                    text = "You demonstrated average performance. For individuals your age your score is within the normal range. In terms of total errors made, your performance was in the normal range.";
                    break;
                case 2:
                    text = "Your performance did not fall within the average range for someone your age. There are a large number of factors that may have contributed to your performance. This test is not diagnostic. There are a range of scores and some will be above and some will be below average. If you have any concerns about your performance you might consider consulting with a licensed professional health provider. Your results can be printed and provided to anyone you consult with";
                    break;
                case 3:
                    text = "Your performance did not fall within the average range for someone your age. There are a large number of factors that may have contributed to your performance. This test is not diagnostic. There are a range of scores and some will be above and some will be below average. If you have any concerns about your performance you might consider consulting with a licensed professional health provider. Your results can be printed and provided to anyone you consult with";
                    break;
                case 10:
                    text = "Unable determing results. Please contact administrator.";
                    break;
            }
            return text;

        }

        public static string ReturnCardSortNormsUniqueErrors(int factor)
        {
            string text = "";
            switch (factor)
            {

                case -3:
                    text = "Excellent performance! For individuals your age your score places you in the top 2 to 3 percent. Scores like yours can be interpreted to indicate an excellent ability to use feedback (correct or incorrect matching) to make appropriate changes in your cognitive strategy. In general terms, you were able to use feedback following an attempted match to modify your strategy in matching cards. You learned to inhibit incorrect matches and explore alternative strategies."; 
                    break;
                case -2:
                    text = "Very Good performance! For individuals your age your score places you in the top 10 to 15 percent. Scores like yours can be interpreted to indicate an excellent ability to use feedback (correct or incorrect matching) to make appropriate changes in your cognitive strategy. In general terms, you were able to use feedback following an attempted match to modify your strategy in matching cards. You learned to inhibit incorrect matches and explore alternative strategies.";
                    break;
                case -1:
                    text = "Good. You demonstrated high average performance. For individuals your age your score is within the normal range. In terms of unique errors made, your performance was in the upper 50 percent.";
                    break;
                case 0:
                    text = "You demonstrated average performance. For individuals your age your score is within the normal range. In terms of unique errors made, your performance was in the normal range.";
                    break;
                case 1:
                    text = "You demonstrated average performance. For individuals your age your score is within the normal range. In terms of unique errors made, your performance was in the normal range.";
                    break;
                case 2:
                    text = "Your performance did not fall within the average range for someone your age. There are a large numer of factors that may have contributed to your performance. This test is not diagnostic. There are a range of scores and some will be above and some will be below average. If you have any concerns about your performance you might consider consulting with a licensed professional health provider. Your results can be printed and provided to anyone you consult with";
                    break;
                case 3:
                    text = "Your performance did not fall within the average range for someone your age. There are a large numer of factors that may have contributed to your performance. This test is not diagnostic. There are a range of scores and some will be above and some will be below average. If you have any concerns about your performance you might consider consulting with a licensed professional health provider. Your results can be printed and provided to anyone you consult with";
                    break;
                case 10:
                    text = "Unable determing results. Please contact administrator.";
                    break;
            }
            return text;

        }

        public static string ReturnNBackResultString(int factor)
        {
            string text = "";
            switch (factor)
            {

                case -3:
                    text = "Excellent performance! For individuals your age your score places you in the top 2 to 3 percent. Scores like yours can be interpreted to indicate an excellent ability to use feedback (correct or incorrect matching) to make appropriate changes in your cognitive strategy. In general terms, you were able to use feedback following an attempted match to modify your strategy in matching cards. You learned to inhibit incorrect matches and explore alternative strategies.";
                    break;
                case -2:
                    text = "Very Good performance! For individuals your age your score places you in the top 10 to 15 percent. Scores like yours can be interpreted to indicate an excellent ability to use feedback (correct or incorrect matching) to make appropriate changes in your cognitive strategy. In general terms, you were able to use feedback following an attempted match to modify your strategy in matching cards. You learned to inhibit incorrect matches and explore alternative strategies.";
                    break;
                case -1:
                    text = "Good. You demonstrated high average performance. For individuals your age your score is within the normal range. In terms of unique errors made, your performance was in the upper 50 percent.";
                    break;
                case 0:
                    text = "You demonstrated average performance. For individuals your age your score is within the normal range. In terms of unique errors made, your performance was in the normal range.";
                    break;
                case 1:
                    text = "You demonstrated average performance. For individuals your age your score is within the normal range. In terms of unique errors made, your performance was in the normal range.";
                    break;
                case 2:
                    text = "Your performance did not fall within the average range for someone your age. There are a large numer of factors that may have contributed to your performance. This test is not diagnostic. There are a range of scores and some will be above and some will be below average. If you have any concerns about your performance you might consider consulting with a licensed professional health provider. Your results can be printed and provided to anyone you consult with";
                    break;
                case 3:
                    text = "Your performance did not fall within the average range for someone your age. There are a large numer of factors that may have contributed to your performance. This test is not diagnostic. There are a range of scores and some will be above and some will be below average. If you have any concerns about your performance you might consider consulting with a licensed professional health provider. Your results can be printed and provided to anyone you consult with";
                    break;
                case 10:
                    text = "Unable determing results. Please contact administrator.";
                    break;
            }
            return text;

        }
    }
}