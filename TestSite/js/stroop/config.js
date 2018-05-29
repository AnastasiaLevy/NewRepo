var timeShownWord     = 2000; //ms
var timeInvisibleWord = 3000; //ms

// Test 1 BL1

//var taskTest1 = ["Red", "Blue", "Red", "Green", "Blue", "Red", "Green", "Red", "Green", "Blue", "Red", "Green", "Red", "Green", "Blue", "Red", "Green", "Blue", "Green", "Red"];
var taskTest1 = ["Red"];
var taskColor1 = ["R"];
                  
var messageTest1 = ["Welcome to the word reading and color", //1
                    "identification task.",
                 "",
                    "You will use three keys: Z, Spacebar and / . ",
                    
                    "Your job is to respond as accurately and as quickly ",
                    "as possible. ",
                  "",
                    "Speed and accuracy are equally important. ",
                    "Press the spacebar to begin."];

var messageTest2 = ["In this part of the test we want", //2
    "to see how fast you can report the color of a \"dot\". ",

    "You will use three keys: Z, Spacebar and / . ",

    "Press the spacebar to begin."];

var messageTest3 = ["In this part, you will press the key corresponding ",
    "to the presented word. That is, you are essentially",
    "reading the word.",
    "You will use three keys: Z, Spacebar and / . ",
    "",
    "Press the spacebar to begin."];
                    
var messageTest4 = ["In this part of the Experiment, I want you to press", 
                    "the key corresponding to the color the word is ",
                   
                    "printed in. That is, ignore the word and respond",
                    "based on the color of the printed word.",
                    "",
                    "Press the spacebar to begin.",
];
var rectangleMessageTest1 = [250, 250, 510, 200]; //left, top, width, height

// Test 2 BL2

//var taskTest2 = ["R", "B", "R", "G", "B", "R", "G", "R", "G", "B", "R", "G", "R", "G", "B", "R", "G", "B", "G", "R"];
var taskTest2 = ["R"];
var taskColor2 = ["R"];

//TODO =============================================

var taskTest3 = ["R"];
var taskColor3 = ["R"];

var taskTest4 = ["R"];
var taskColor4 = ["R"];


//==================================================

                  

                    
var rectangleMessageTest2 = [250, 250, 510, 200]; //left, top, width, height
                    
// Test 3 STR1

//var taskTest3 = ["Green", "Blue", "Red", "Green", "Red", "Green", "Blue", "Red", "Green", "Red", "Green", "Blue", "Red", "Green", "Red", "Green", "Blue", "Red", "Red", "Blue"];
//var taskTest3 = ["Green"];
//var taskColor3 = ["R"];
//var taskColor3 = ["R", "B", "R", "G", "B", "R", "G", "R", "G", "B", "R", "G", "R", "G", "B", "R", "G", "B", "G", "R"];
                  

                    
var rectangleMessageTest3 = [250, 250, 510, 200]; //left, top, width, height
                    
// Test 4 STR2

//var taskTest4 = ["Red", "Green",  "Red", "Green", "Blue", "Red", "Red", "Blue", "Blue", "Red", "Green", "Red", "Green", "Blue", "Red", "Green", "Green", "Blue", "Red", "Green"];
//var taskColor4 = ["G", "R", "G", "B", "R", "G", "B", "G", "R", "R", "B", "R", "G", "B", "R", "G", "R", "G", "B", "R"];
var taskTest4 = ["Red"];
var taskColor4 = ["G"];

                    
var rectangleMessageTest4 = [250, 250, 510, 200]; //left, top, width, height

// Result

var testLabelNames = ["Category",
                      "BL1",
                      "BL2",
                      "Test1",
                      "Test2",
                      "Total"];
                      
var labelValues = ["Correct\nResp.\ncount",
                   "Incorrect\nResp.\ncount",
                   "Avg.\nResp.\nTime\n(ms)",
                   "Total.\nTime\n(ms)"];

var rectangleResultMessage = [50, 50, 900, 600]; //left, top, width, height
var rectangleResultTitle = [50, 50, 900, 180]; //left, top, width, height
var resultWidthLeftColumn = 150; // width of first left column

// Pooled Arrays

var taskTests = [taskTest1, taskTest2, taskTest3, taskTest4];
var taskColors = [taskColor1, taskColor2, taskColor3, taskColor4];
var testMessages = [messageTest1, messageTest2, messageTest3, messageTest4];
var rectangleTestMessage = [rectangleMessageTest1, rectangleMessageTest2, rectangleMessageTest3, rectangleMessageTest4];