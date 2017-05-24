// Test 1 Cards 24

var schemeMatrixTest1 = [6, 4];          //Number of column and row

var schemeTest1 = [1, 2, 3, 4, 5, 6,     // 12 matching cards ( need to be present two of each number in scheme )
                   8, 9, 3, 10, 11, 2,   // 12 matching cards ( need to be present two of each number in scheme )
                   10, 7, 1, 4, 7, 12,   // 12 matching cards ( need to be present two of each number in scheme )
                   8, 11, 12, 6, 9, 5];  // 12 matching cards ( need to be present two of each number in scheme )

var test1Message = ["Test1",
                     "intro text",
                     "intro text",
                     "intro text",
                     "intro text",
                     "intro text",
                     "  ",
                     "Press the spacebar to begin."];
                     
var rectangleTest1Message = [250, 250, 510, 200]; //left, top, width, height

var imageForTest1 = ["../memoryImg/flags/flag01.png",
                     "../memoryImg/flags/flag02.png",
                     "../memoryImg/flags/flag03.png",
                     "../memoryImg/flags/flag04.png",
                     "../memoryImg/flags/flag05.png",
                     "../memoryImg/flags/flag06.png",
                     "../memoryImg/flags/flag07.png",
                     "../memoryImg/flags/flag08.png",
                     "../memoryImg/flags/flag09.png",
                     "../memoryImg/flags/flag10.png",
                     "../memoryImg/flags/flag11.png",
                     "../memoryImg/flags/flag12.png"];
                     
var timeTest1 = 60000; //time of test ms
                     
// Test 2 Cards 24

var schemeMatrixTest2 = [6, 4];          //Number of column and row

var schemeTest2 = [1, 2, 3, 4, 5, 6,     // 12 matching cards ( need to be present two of each number in scheme )
                   8, 9, 3, 10, 11, 2,   // 12 matching cards ( need to be present two of each number in scheme )
                   10, 7, 1, 4, 7, 12,   // 12 matching cards ( need to be present two of each number in scheme )
                   8, 11, 12, 6, 9, 5];  // 12 matching cards ( need to be present two of each number in scheme )

var test2Message = ["Test2",
                     "intro text",
                     "intro text",
                     "intro text",
                     "intro text",
                     "intro text",
                     "  ",
                     "Press the spacebar to begin."];

                     
var rectangleTest2Message = [250, 250, 510, 200]; //left, top, width, height

var imageForTest2 = ["../memoryImg/faces/face01.png",
                     "../memoryImg/faces/face02.png",
                     "../memoryImg/faces/face03.png",
                     "../memoryImg/faces/face04.png",
                     "../memoryImg/faces/face05.png",
                     "../memoryImg/faces/face06.png",
                     "../memoryImg/faces/face07.png",
                     "../memoryImg/faces/face08.png",
                     "../memoryImg/faces/face09.png",
                     "../memoryImg/faces/face10.png",
                     "../memoryImg/faces/face11.png",
                     "../memoryImg/faces/face12.png"];
                     
var timeTest2 = 60000; //time of test ms
                     
// Test 3 Cards 24

var schemeMatrixTest3 = [6, 4];          //Number of column and row

var schemeTest3 = [1, 2, 3, 4, 5, 6,     // 12 matching cards ( need to be present two of each number in scheme )
                   8, 9, 3, 10, 11, 2,   // 12 matching cards ( need to be present two of each number in scheme )
                   10, 7, 1, 4, 7, 12,   // 12 matching cards ( need to be present two of each number in scheme )
                   8, 11, 12, 6, 9, 5];  // 12 matching cards ( need to be present two of each number in scheme )

var test3Message = ["Test3",
                     "intro text",
                     "intro text",
                     "intro text",
                     "intro text",
                     "intro text",
                     "  ",
                     "Press the spacebar to begin."];
                     
var rectangleTest3Message = [250, 250, 510, 200]; //left, top, width, height

var imageForTest3 = ["../memoryImg/others/other01.png",
                     "../memoryImg/others/other02.png",
                     "../memoryImg/others/other03.png",
                     "../memoryImg/others/other04.png",
                     "../memoryImg/others/other05.png",
                     "../memoryImg/others/other06.png",
                     "../memoryImg/others/other07.png",
                     "../memoryImg/others/other08.png",
                     "../memoryImg/others/other09.png",
                     "../memoryImg/others/other10.png",
                     "../memoryImg/others/other11.png",
                     "../memoryImg/others/other12.png"];
                     
var timeTest3 = 60000; //time of test ms

// Errors

var errorConfigNotMultipleX6 = ["Error",
                                "Configuration of next test is not",
                                "a multiple of 6."];

// Result

var testLabelNames = ["Category",
                      "Test1",
                      "Test2",
                      "Test3",
                      "Total"];
                      
var labelValues = ["\nTotal\nmoves",
                   "\nIncorrect\nmatching",
                   "\n\n$Score\n(%)",
                   "First\nCard\Avg.\nResp.\nTime\n(ms)",
                   "Second\nCard\Avg.\nResp.\nTime\n(ms)",
                   "\nTest\nTime\n(s)"];

var rectangleResultMessage = [50, 50, 900, 600]; //left, top, width, height
var rectangleResultTitle = [50, 50, 900, 180]; //left, top, width, height
var resultWidthLeftColumn = 150; // width of first left column

// Pooled Arrays

var testMessage = [test1Message, test2Message, test3Message];
var rectangleTestMessage = [rectangleTest1Message, rectangleTest2Message, rectangleTest3Message];
var schemeTests = [schemeTest1, schemeTest2, schemeTest3];
var schemeMatrixTests = [schemeMatrixTest1, schemeMatrixTest2, schemeMatrixTest3];
var timeTests = [timeTest1, timeTest2, timeTest3];
var testsImages = [imageForTest1, imageForTest2, imageForTest3];
var allImages = imageForTest1.concat( imageForTest2 );
allImages = allImages.concat( imageForTest3 );