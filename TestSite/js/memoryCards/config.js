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

var imageForTest1 = ["images/flags/flag01.png",
                     "images/flags/flag02.png",
                     "images/flags/flag03.png",
                     "images/flags/flag04.png",
                     "images/flags/flag05.png",
                     "images/flags/flag06.png",
                     "images/flags/flag07.png",
                     "images/flags/flag08.png",
                     "images/flags/flag09.png",
                     "images/flags/flag10.png",
                     "images/flags/flag11.png",
                     "images/flags/flag12.png"];
                     
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

var imageForTest2 = ["images/faces/face01.png",
                     "images/faces/face02.png",
                     "images/faces/face03.png",
                     "images/faces/face04.png",
                     "images/faces/face05.png",
                     "images/faces/face06.png",
                     "images/faces/face07.png",
                     "images/faces/face08.png",
                     "images/faces/face09.png",
                     "images/faces/face10.png",
                     "images/faces/face11.png",
                     "images/faces/face12.png"];
                     
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

var imageForTest3 = ["images/others/other01.png",
                     "images/others/other02.png",
                     "images/others/other03.png",
                     "images/others/other04.png",
                     "images/others/other05.png",
                     "images/others/other06.png",
                     "images/others/other07.png",
                     "images/others/other08.png",
                     "images/others/other09.png",
                     "images/others/other10.png",
                     "images/others/other11.png",
                     "images/others/other12.png"];
                     
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