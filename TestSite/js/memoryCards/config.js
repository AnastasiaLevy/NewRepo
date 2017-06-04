//putting array of strings, convert it to array of numbers and set it schemeTests array
function InitializeTestScheme(array) {
    schemeTests.push(ConvertStringToArray(array));
};

function InitializeMatrixScheme(array) {
    schemeMatrixTests.push(ConvertStringToArray(array));
};

function InitializeTime(array) {
    timeTests.push(ConvertStringToArray(array));
};

//convert string values to numbers
function ConvertStringToArray(array)
{
    var tempArray = array.split(";");
    tempArray.forEach(function (element, index, array) {
        array[index] = +element;
    });
    return tempArray;
}


//fill structure arrays with their data
function FillStructureConfig(obj)
{
    obj.forEach(function (obj) {
        if (obj.Name.toLowerCase().indexOf("schemetest") === 0) {
            InitializeTestScheme(obj.Structure);
        }
        else if (obj.Name.toLowerCase().indexOf("schemematrix") === 0)
        {
            InitializeMatrixScheme(obj.Structure);
        }
        else if (obj.Name.toLowerCase().indexOf("timetest") === 0)
        {
            InitializeTime(obj.Structure);
        }
    });
}



//Fills in Formated text
function FillTextConfig(obj) {
    obj.forEach(function (obj) {
        if (obj.Name.toLowerCase().indexOf("testmessage") === 0)
        {
            var tempArray = obj.Text.split("\n");
            testMessage.push(tempArray);
        }
        else if (obj.Name.toLowerCase().indexOf("error") === 0)
        {
            var tempArray = obj.Text.split("\n");
            errorConfigNotMultipleX6 = errorConfigNotMultipleX6.concat(tempArray);
            
        }
        else if (obj.Name.toLowerCase().indexOf("labelnames") === 0) {
            var tempArray = obj.Text.split("\n");
            testLabelNames = testLabelNames.concat(tempArray);
            
        }
        else if (obj.Name.toLowerCase().indexOf("labelvalues") === 0) {
            var tempArray = obj.Text.split("\t");
            labelValues = labelValues.concat(tempArray);
            
        }
        
    });
}


//Fills in all Images
function FillImagesConfig(obj) {
    var uniqueTest = GetUniqueTests(obj);
    for (var index in uniqueTest) {
        var array = [];
        obj.forEach(function (obj) {
            if (obj.TestNumber === uniqueTest[index]) {
                array.push(obj.Path);
            }
        });
        testsImages.push(array);
    }

    //concat all images
    testsImages.forEach(function (array) {
        allImages = allImages.concat(array);
    });

    
}


//method used to search images for a specific test
function GetUniqueTests(obj)
{
    var array = [];
    obj.forEach(function (obj) {
        array.push(obj.TestNumber);
    });
    array = $.unique(array);
    return array;
}


//messege boxes should be kept here, as there is no point of storing them in database.
// Test 1 Cards 24
var rectangleTest1Message = [250, 250, 510, 200]; //left, top, width, height

                     
// Test 2 Cards 24              
var rectangleTest2Message = [250, 250, 510, 200]; //left, top, width, height


// Test 3 Cards 24                   
var rectangleTest3Message = [250, 250, 510, 200]; //left, top, width, height




// Errors
var errorConfigNotMultipleX6 = [];

//// Result
var testLabelNames = [];

var labelValues = [];            


var rectangleResultMessage = [50, 50, 900, 600]; //left, top, width, height
var rectangleResultTitle = [50, 50, 900, 180]; //left, top, width, height
var resultWidthLeftColumn = 150; // width of first left column

// Pooled Arrays

var testMessage = [];
var rectangleTestMessage = [rectangleTest1Message, rectangleTest2Message, rectangleTest3Message];
//scheme
var schemeTests = [];
//matrix
var schemeMatrixTests = [];
//time for test
var timeTests = [];
//conatins arrays of images. each array for 1 test
var testsImages = [];
//contains all images in it
var allImages = [];
