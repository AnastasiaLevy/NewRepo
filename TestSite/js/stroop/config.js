var timeShownWord     = 2000; //ms
var timeInvisibleWord = 3000; //ms

// Test 1 BL1

var taskTest1 = ["Red", "Blue", "Red", "Green", "Blue", "Red", "Green", "Red", "Green", "Blue", "Red", "Green", "Red", "Green", "Blue", "Red", "Green", "Blue", "Green", "Red"];
var taskColor1 = ["R"];
                  
var messageTest1 = ["This is a base line test.",
                    "We will capture your response times for correct and incorrect responses.",
                    "",
                    "You will use three keybard keys: Z, Spacebar and / . ",
                    "",
                    "In this test, read the word",
                    "  ",
                    "Press the spacebar to begin."];
                    
var rectangleMessageTest1 = [250, 250, 510, 200]; //left, top, width, height

// Test 2 BL2

var taskTest2 = ["R", "B", "R", "G", "B", "R", "G", "R", "G", "B", "R", "G", "R", "G", "B", "R", "G", "B", "G", "R"];
var taskColor2 = ["R"];
                  
var messageTest2 = ["This is a base line test.",
                    "We will capture your response times for correct and incorrect responses.",
"",
"You will use three keybard keys: Z, Spacebar and / . ",
"",
"In this test, choose the color of the circle",
                    "Press the spacebar to begin."];
                    
var rectangleMessageTest2 = [250, 250, 510, 200]; //left, top, width, height
                    
// Test 3 STR1

var taskTest3 = ["Green", "Blue", "Red", "Green", "Red", "Green", "Blue", "Red", "Green", "Red", "Green", "Blue", "Red", "Green", "Red", "Green", "Blue", "Red", "Red", "Blue"];
var taskColor3 = ["R", "B", "R", "G", "B", "R", "G", "R", "G", "B", "R", "G", "R", "G", "B", "R", "G", "B", "G", "R"];
                  
var messageTest3 = ["This is test 1.",
                    "We will capture your response times for correct and incorrect responses.",
"",
"You will use three keybard keys: Z, Spacebar and / . ",
"",
"In this test, read the word",
                    "Press the spacebar to begin."];
                    
var rectangleMessageTest3 = [250, 250, 510, 200]; //left, top, width, height
                    
// Test 4 STR2

var taskTest4 = ["Red", "Green",  "Red", "Green", "Blue", "Red", "Red", "Blue", "Blue", "Red", "Green", "Red", "Green", "Blue", "Red", "Green", "Green", "Blue", "Red", "Green"];
var taskColor4 = ["G", "R", "G", "B", "R", "G", "B", "G", "R", "R", "B", "R", "G", "B", "R", "G", "R", "G", "B", "R"];
                  
var messageTest4 = ["This is a base line test.",
                    "We will capture your response times for correct and incorrect responses.",
"",
"You will use three keybard keys: Z, Spacebar and / . ",
"",
"In this test, select the color that the word is written in.",
                    "Press the spacebar to begin."];
                    
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