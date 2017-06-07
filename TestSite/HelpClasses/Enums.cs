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
            public const string CATI = "8";
            public const string CPNI = "9";
            public const string SCATI = "10";
            public const string CCI = "11";
            public const string CASS_T = "12";
            public const string CASS = "13";
            public const string HCTI = "14";

            // public TestId(); 
        }

        public static int GetAgeGroup(int age)
        {
            if (age >= 5 && age <= 9)
            {
                return 0;
            }
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
            else if (age >= 80 && age <= 150)
            {
                return 9;
            }
            else if (age >= 90 && age <= 100)
            {
                return 10;
            }
            else
                return 100;
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
                case "6":
                    return @"Tests\StroopPage.aspx";
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
                    //text = "Excellent performance! For individuals your age, your score places you in the top 2 to 3 percent. Scores like yours can be interpreted to indicate excellent problem solving ability. In general terms, you were able to look at the problem to be solved and develop an optimal set of moves to reach the goal position. These problems required you to look ahead, hold information in your conscious awareness, and inhibit inefficient moves.";
                    //break;
                case -2:
                    //text = "Very good performance! For individuals your age your score places you in the top 10 to 15 percent. Scores like yours can be interpreted to indicate excellent problem solving ability. In general terms, you were able to look at the problem to be solved and develop an optimal set of moves to reach the goal position. These problems required you to look ahead, hold information in your conscious awareness, and inhibit inefficient moves.";
                    text = "Thank you for taking our Tower of London test that is designed for individuals between 15 and 90 years of age.The ten test trials that are administered after the three practice trials can be done in a total of 55 moves. Your performance on the Tower of London was excellent. In fact, your performance is consistent with you beginning in the top 5% of performers on this task. Good problem solvers like you typically focus their attention on the problem at hand. They are flexible in their thinking and can consider multiple solution paths. They may retain information learned from successful and unsuccessful solution attempts. They consider what is required for a solution and can identify modes of improving their performance. Good problem solvers are likely to explore optional solutions and can process several options and their consequences. You might want to try another of our problem solving tasks such as the Tower of Hanoi.";
                    break;
                case -1:
                    //text = "Good performance. For individuals your age your score is within the normal range. In terms of excess moves, your performance was in the upper 50 percent ";
                    //break;
                case 0:
                    //text = "Good performance. For individuals your age your score is within the normal range.";
                    //break;
                case 1:
                    //text = "Average performance. For individuals your age your score is within the normal range.";
                    //break;
                    text = "Thank you for taking our Tower of London test that is designed for individuals between 15 and 90 years of age.The ten test trials that are administered after the three practice trials can be done in a total of 55 moves. You did the ten test trials in {0} moves. The average number of moves for someone your age is {1} moves.  Your performance is within the range of average or better. Good problem solvers typically focus their attention on the problem at hand. They are flexible in their thinking and can consider multiple solution paths. They may retain information learned from successful and unsuccessful solution attempts. They consider what is required for a solution and can identify modes of improving their performance. Good problem solvers are likely to explore optional solutions and can process several options and their consequences. You might want to try another of our problem solving tasks such as the Tower of Hanoi."; 
                      break;
                case 2:
                    //text = "Your performance did not fall within the average range for someone your age. There are a large number of factors that may have contributed to your performance. This test is not diagnostic. There are a range of scores and some will be above and some will be below average. If you have any concerns about your performance you might consider consulting with a licensed professional health provider. Your results can be printed and provided to the professional you consult with.";
                    //break;
                case 3:
                    //text = "Your performance did not fall within the average range for someone your age. There are a large number of factors that may have contributed to your performance. This test is not diagnostic. There are a range of scores and some will be above and some will be below average. If you have any concerns about your performance you might consider consulting with a licensed professional health provider. Your results can be printed and provided to anyone you consult with.";
                    text = "Thank you for taking our Tower of London test that is designed for individuals between 15 and 90 years of age.The ten test trials that are administered after the three practice trials can be done in a total of 55 moves.You made more moves than is typical for someone your age. There are a variety of factors that might have affected your Tower of London performance. For example, you may have not had a good night sleep or simply had a stressful beginning to your day. Fortunately, there are a variety of things that you can do that may improve your problem solving skills. First, there are now a fairly large number of studies reporting that increased mental activity can improve your mental abilities. The types of activity that might be helpful are online computer games but even activities such as socializing can have beneficial effects. In the last few years it has become increasingly evident that physical activity can have benefits for your mental performance. Importantly, if you or people close to you have concerns about your mental abilities you can print out the results of your test and take them to a licensed mental health provider. ";
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

                case 3:
                    text = "Excellent performance! For individuals your age your score places you in the top 2 to 3 percent. Scores like yours can be interpreted to indicate an excellent ability to use feedback (correct or incorrect matching) to make appropriate changes in your cognitive strategy. In general terms, you were able to use feedback following an attempted match to modify your strategy in matching cards. You learned to inhibit incorrect matches and explore alternative strategies.";
                    break;
                case 2:
                    text = "Very Good performance! For individuals your age your score places you in the top 10 to 15 percent. Scores like yours can be interpreted to indicate an excellent ability to use feedback (correct or incorrect matching) to make appropriate changes in your cognitive strategy. In general terms, you were able to use feedback following an attempted match to modify your strategy in matching cards. You learned to inhibit incorrect matches and explore alternative strategies.";
                    break;
                case 1:
                    text = "Good. You demonstrated high average performance. For individuals your age your score is within the normal range. In terms of unique errors made, your performance was in the upper 50 percent.";
                    break;
                case 0:
                    text = "You demonstrated average performance. For individuals your age your score is within the normal range. In terms of unique errors made, your performance was in the normal range.";
                    break;
                case -1:
                    text = "You demonstrated average performance. For individuals your age your score is within the normal range. In terms of unique errors made, your performance was in the normal range.";
                    break;
                case -2:
                    text = "Your performance did not fall within the average range for someone your age. There are a large numer of factors that may have contributed to your performance. This test is not diagnostic. There are a range of scores and some will be above and some will be below average. If you have any concerns about your performance you might consider consulting with a licensed professional health provider. Your results can be printed and provided to anyone you consult with.";
                    break;
                case -3:
                    text = "Your performance did not fall within the average range for someone your age. There are a large numer of factors that may have contributed to your performance. This test is not diagnostic. There are a range of scores and some will be above and some will be below average. If you have any concerns about your performance you might consider consulting with a licensed professional health provider. Your results can be printed and provided to anyone you consult with.";
                    break;
                case 10:
                    text = "Unable determing results. Please contact administrator.";
                    break;
            }
            return text;

        }
    }
}