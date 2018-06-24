var gameCanvas;
var ctx;
var canvasWidth = 1000;
var canvasHeight = 700;
var btnExecuteTest, btnFullScreenOn, btnFullScreenClose;
var currentTest;
var currentLetter;
var testState; // 1 - Execute Test; 2 - Intro wait space; 3 - Test waiting answer; 4 - Test get answer; 5 - Test finished;
var trial = true;
var canKeyClick = false;
var testGoing = false;
var letterVisible = false;
var testLoop = {};
var testUpdate = {};
var currentScore = {};
var previousTime = 0;

function init()
{
    var ur = localStorage.getItem("tId");
    var state = localStorage.getItem("finished");

    if (
        ur == document.getElementById("tId").value && state == "true") {
        goToPage();
    }
    else {
        localStorage.setItem("tId", document.getElementById("tId").value);
        localStorage.setItem("finished", false);
    }

    btnFullScreenOn = document.getElementById( "fullScreenOn" );
    btnFullScreenOn.onclick = function() { launchIntoFullscreen( document.documentElement ); };
    btnFullScreenClose = document.getElementById( "fullScreenClose" );
    btnFullScreenClose.onclick = function() { cancelFullscreen(); };
    btnFullScreenOn = document.getElementById( "fullScreenOn" );
    
    btnFullScreenOn.style.visibility = "visible";
    
    btnExecuteTest = document.getElementById( "executeTest" );
    btnExecuteTest.onclick = function() { executeTestDown( 1 ); };
    
    testUpdate = new updateManager();
    currentScore = new scoreManager();
    
    drawGameCanvas();
    showExecuteTest();
    loopManager();
}

function drawGameCanvas()
{
    ctx.fillStyle = "#F8ECC2";
    ctx.fillRect( 0, 0, 1000, 700 );
    ctx.lineWidth = 4;
    ctx.strokeStyle = "#000";
    ctx.strokeRect( 0, 0, 1000, 700 );
}

function showMessage() 
{
    var offsetLeft = 10;
    var offsetTop = 20;
    
    ctx.fillStyle = "#FFF";
    ctx.fillRect( rectangleTestMessage[currentTest - 1][0], rectangleTestMessage[currentTest - 1][1], rectangleTestMessage[currentTest - 1][2], rectangleTestMessage[currentTest - 1][3] );
    ctx.strokeStyle = "#000";
    ctx.lineWidth = 4;
    ctx.strokeRect( rectangleTestMessage[currentTest - 1][0], rectangleTestMessage[currentTest - 1][1], rectangleTestMessage[currentTest - 1][2], rectangleTestMessage[currentTest - 1][3] );
    ctx.font = "bold 20px arial";
    ctx.fillStyle = "#000";
    if ( trial  )
    {
     
        for (var i = 0; i < testMessage1[currentTest - 1].length; i++)
        {
            ctx.fillText( testMessage1[currentTest - 1][i], rectangleTestMessage[currentTest - 1][0] + offsetLeft, 10 + rectangleTestMessage[currentTest - 1][1] + ( offsetTop * ( i + 1 ) ) );
        }
    }
    else
    {
        for ( var i = 0; i < testMessage2[currentTest - 1].length; i++ )
        {
            ctx.fillText( testMessage2[currentTest - 1][i], rectangleTestMessage[currentTest - 1][0] + offsetLeft, 10 + rectangleTestMessage[currentTest - 1][1] + ( offsetTop * ( i + 1 ) ) );
        }
    }
}

function showResult() 
{
    drawTableResult();
    drawTableLabel();
    ctx.font = "bold 20px arial";
    ctx.fillStyle = "#000";
    for ( var n = 0; n < currentScore.scoreArray.length; n++ )
    {
        for ( var i = 0; i < ( currentScore.scoreArray[n].length - 7 ); i++ )
        {
            ctx.fillText( currentScore.scoreArray[n][i], 163 + rectangleResultMessage[0] + i * 75, 270 + n * 59.5 );
        }
    }
    for ( var i = 0; i < currentScore.totalScoreArray.length; i++ )
    {
        ctx.fillText( currentScore.totalScoreArray[i], 163 + rectangleResultMessage[0] + i * 75, 627 );
    }

}

function drawTableLabel() 
{
    ctx.font = "bold 20px arial";
    ctx.fillStyle = "#000";
    for ( var i = 0; i < testLabelNames.length; i++ )
    {
        var labelNamesOffset = ( i == 0 ) ? 150 : 210;
        ctx.fillText( testLabelNames[i], rectangleResultMessage[0] + 10, labelNamesOffset + 59.5 * i );
    }
    ctx.font = "bold 15px arial";
    for ( var n = 0; n < labelValues.length; n++ )
    {
        var lines = labelValues[n].split( '\n' );
        for ( var i = 0; i < lines.length; i++ )
        {
            ctx.fillText( lines[i], 155 + rectangleResultMessage[0] + n * 75, 50 + rectangleResultMessage[1] + i * 20 );
        }
    }
}

function drawTableResult() 
{
    ctx.fillStyle = "#FFF";
    ctx.fillRect( rectangleResultMessage[0], rectangleResultMessage[1], rectangleResultMessage[2], rectangleResultMessage[3] );
    ctx.strokeStyle = "#607334";
    ctx.lineWidth = 4;
    ctx.strokeRect( rectangleResultMessage[0], rectangleResultMessage[1], rectangleResultMessage[2], rectangleResultMessage[3] );
    ctx.fillStyle = "#607334";
    ctx.fillRect( rectangleResultTitle[0], rectangleResultTitle[1], rectangleResultTitle[2], rectangleResultTitle[3] );
    ctx.lineWidth = 1;
    for ( var color = 0; color < 2; color++ )
    { // green and wite lines
        ctx.strokeStyle = ( color == 0 ) ? "#FFF" : "#607334";
        for ( var l = 0; l < 10; l++ )
        { // lines for tabel
            var currentLineX = rectangleResultTitle[0] + resultWidthLeftColumn + l * ( ( rectangleResultTitle[2] - resultWidthLeftColumn ) / 10 );
            var currentLineY = ( color == 0 ) ? rectangleResultTitle[1] : ( rectangleResultTitle[1] + rectangleResultTitle[3] );
            var currentLineHeight = ( color == 0 ) ? ( rectangleResultTitle[1] + rectangleResultTitle[3] ) : ( rectangleResultTitle[1] + rectangleResultMessage[3] );
            ctx.beginPath();
            ctx.moveTo( currentLineX , currentLineY );
            ctx.lineTo( currentLineX, currentLineHeight );
            ctx.closePath();
            ctx.stroke();
        }
    }
    for ( var row = 1; row < 8; row++ )
    {
        var currentLineY = rectangleResultTitle[1] + rectangleResultTitle[3] + row * ( ( rectangleResultMessage[3] - rectangleResultTitle[3] ) / 7 );
        ctx.beginPath();
        ctx.moveTo( rectangleResultTitle[0], currentLineY );
        ctx.lineTo( rectangleResultTitle[2] + rectangleResultTitle[0], currentLineY );
        ctx.closePath();
        ctx.stroke();
    }
}

function drawResponseDisplay()
{
    //Draw the response box
    //ctx.save;
    ctx.fillStyle = "#d3d3d3";
    ctx.fillRect( 70, 500, 860, 170 );
    ctx.linewidth = 2;
    ctx.strokeStyle = "#000";
    ctx.strokeRect( 70, 500, 860, 170 );
    //Draw left circle
    drawCircle( 200, 570, "#000", "#FF0000", "Yes" );
    //Draw the right circle
    drawCircle( 800, 570, "#000", "#FF0000", "No" );
    ctx.font = "bold 36px arial";
    ctx.fillStyle = "#000";
    ctx.fillText( "Z", 185, 660 );
    ctx.fillText( "/?", 782, 660 );
    //ctx.restore;
}

function keyYesNoPress( pressedYes )
{
    if ( pressedYes )
    {
        drawCircle( 200, 570, "black", "#607334", "Yes" );
    }
    else
    {
        drawCircle( 800, 570, "black", "#607334", "No" );            
    }
    beep( 250, 800, 0.1 );
}

function keyYesNoUp()
{
    drawCircle( 200, 570, "#000", "#FF0000", "Yes" );
    drawCircle( 800, 570, "#000", "#FF0000", "No" );
}

function drawCircle( x, y, border, backColor, caption ) 
{
    ctx.save;
    ctx.fillStyle = backColor;
    ctx.beginPath();
    ctx.lineWidth = 7;
    ctx.strokeStyle = border;
    ctx.arc( x, y, 50, ( Math.PI / 180 ) * 0, ( Math.PI / 180 ) * 360, false )
    ctx.restore();
    ctx.stroke();
    ctx.closePath();
    ctx.fill();
    ctx.font = "bold 36px arial";
    ctx.fillStyle = "black";
    if ( caption.length == 2 )
    {
        ctx.fillText( caption, x - 24, y + 13 );
    }
    else
    {
        ctx.fillText( caption, x - 30, y + 13 );
    }
}

function displayLetter( letter )
{
    ctx.font = "bold 100px arial";
    ctx.fillStyle = "#000";
    ctx.fillText( letter, 450, 350 );
}

function hideLetter( letter )
{
    drawGameCanvas();
    drawResponseDisplay();
}

function showExecuteTest() 
{
    testState = 1;
    btnExecuteTest.style.visibility = "visible";
}

function hideExecuteTest() 
{
    btnExecuteTest.style.visibility = "hidden";
}

function executeTestDown( testNum ) 
{
    currentTest = testNum;
    hideExecuteTest();
    beginingTest();
}

function beginingTest() 
{
    testState = 2;
    currentLetter = 0;
    drawGameCanvas();
    showMessage();
    currentScore.clearScoreArray();
}

function changeTestNumber()
{
    testGoing = false;
    currentScore.setPersentScore( this.listLength );
    currentScore.setTestScore();
    if ( !trial && currentTest == 3 )
    {
        finishTest();
    }
    else
    {
        currentTest = trial ? currentTest : currentTest + 1;
        trial = !trial;
        beginingTest();
    }
}

function startTest() 
{
    testState = 3;
    testGoing = true;
    testUpdate.setTestStarted();
    drawGameCanvas();
    drawResponseDisplay();
    updateTestQuestion( true );
}

function finishTest() 
{
    testState = 5;
    canKeyClick = false;
    drawGameCanvas();
    var totalLettersInTests = 0;
    for ( var i = 0; i < nBackFull.length; i++ )
    {
        totalLettersInTests = totalLettersInTests + nBackFull[i].length + nBackTrial[i].length;
    }
    currentScore.setPersentScoreTotal( totalLettersInTests  );
    currentScore.setTestsTotalScore();
    console.log( "getTestScore", currentScore.getTestsScore() );
    console.log( "getTestTotalScore", currentScore.getTestsTotalScore() );
    $('#game').empty();
    $('#game').append("<div id = 'finishesTest' class='center finishesTest'><p>The Test Has Finished Running. <br/></p><input type='button' id='finishIt'class='signup-btn' value='View Results'></div>");
    $('#game').on('click', '#finishIt', function () {
        var user = document.getElementById("user").value;
        var tId = document.getElementById("tId").value;
        //window.location.href = "ResultsPage.aspx?userId=" + user + "&tid=" + tId + "&test=1";
        saveResults();
    });
}

function saveResults() {
    localStorage.setItem("tId", document.getElementById("tId").value);
    localStorage.setItem("finished", true);
    //currentScore.scoreArray.foreach(function(element) {
    //    var data = {
    //        Hits: "",
    //        Miss: "",
    //        CorRej: "",
    //        falseAlarm: "",
    //        OmitTarget: "",
    //        OmitNoTarget: "",
    //        percentScore: ""
    //    }
    //});
    arrData = [];
    save = false;
    for (var i = 0, len = currentScore.scoreArray.length; i < len; i++) {
      
        var data = {
            hits: currentScore.scoreArray[i][10],
            miss: currentScore.scoreArray[i][11],
            corRej: currentScore.scoreArray[i][12],
            falseAlarm: currentScore.scoreArray[i][13],
            omitTarget: currentScore.scoreArray[i][14],
            omitNoTarget: currentScore.scoreArray[i][15],
            percentScore: currentScore.scoreArray[i][16],
            round: i
        }
        arrData.push(data);
        jQuery.ajax({
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            url: 'NbackPage.aspx/Save_NbackResults',
            dataType: 'json',
            data: JSON.stringify(data),
            type: 'POST',
            success: function (resp) {

              

            },
            error: function (resp) {
           
                save = true;
            }
        });
  

    }

    goToPage();
    if (save == true)
        saveTextAsFile(arrData);

}
function goToPage() {
    var user = document.getElementById("user").value;
    var tId = document.getElementById("tId").value;
    window.location.href = "../ResultsPage.aspx?userId=" + user + "&tid=" + tId + "&test=4";
}

function saveTextAsFile(arrData) {
    var user = document.getElementById("user").value;
    var tId = document.getElementById("tId").value;
    var text = "UserId: " + user + ".\r\n" +
               "TestId: " + tId + ".\r\n"
   
    arrData.forEach(function (element) {
        text += JSON.stringify(element) + ".\r\n";
    });
    
    var textToSave = text;
    var textToSaveAsBlob = new Blob([textToSave], { type: "text/plain" });
    var textToSaveAsURL = window.URL.createObjectURL(textToSaveAsBlob);
    var fileNameToSaveAs = 'Nback' + tId + (new Date()).toISOString().substring(0, 10);//document.getElementById("inputFileNameToSaveAs").value;

    var downloadLink = document.createElement("a");
    downloadLink.download = fileNameToSaveAs;
    downloadLink.innerHTML = "Download File";
    downloadLink.href = textToSaveAsURL;
    downloadLink.onclick = destroyClickedElement;
    downloadLink.style.display = "none";
    document.body.appendChild(downloadLink);
    downloadLink.click();
    alert("There was a connection problem. Your results were saved in a file " + fileNameToSaveAs + " in Downloads folder.")
}
function destroyClickedElement(event) {
    document.body.removeChild(event.target);
}

    function updateTestQuestion( showLetter ) 
    {
        this.letter = "";
        this.listLength = trial ? nBackTrial[currentTest - 1].length : nBackFull[currentTest - 1].length;
        if ( testState == 3 && showLetter && currentLetter != 0 )
        {
            currentScore.setNoresponse();
            var currentQuestionLetter = trial ? nBackTrial[currentTest - 1][currentLetter - 1] : nBackFull[currentTest - 1][currentLetter - 1];
            var checkBackLetter = trial ? nBackTrial[currentTest - 1][currentLetter - ( 1 + currentTest )] : nBackFull[currentTest - 1][currentLetter - ( 1 + currentTest )];
            if ( currentQuestionLetter == checkBackLetter )
            {
                currentScore.setOmitTarget();
            }
            else
            {
                currentScore.setOmitNoTarget();
            }
            currentScore.setAverageResponse( 5000 );
        }
    
        if ( showLetter && currentLetter < this.listLength )
        {
            testState = 3;
            currentLetter++;
            this.letter = trial ? nBackTrial[currentTest - 1][currentLetter - 1] : nBackFull[currentTest - 1][currentLetter - 1];
            displayLetter( this.letter );
            canKeyClick = true;
            letterVisible = true;
        }
        else if ( currentLetter == this.listLength && !letterVisible )
        {
            changeTestNumber();
        }
        else
        {
            hideLetter();
            letterVisible = false;
        }
    }

    function checkAnswer( pressedYes ) 
    {
        testState = 4;
        canKeyClick = false;
        keyYesNoPress( pressedYes );
        testUpdate.setCircleBackUnPressed();
        var currentQuestionLetter = trial ? nBackTrial[currentTest - 1][currentLetter - 1] : nBackFull[currentTest - 1][currentLetter - 1];
        var checkBackLetter = trial ? nBackTrial[currentTest - 1][currentLetter - ( 1 + currentTest )] : nBackFull[currentTest - 1][currentLetter - ( 1 + currentTest )];
        if ( pressedYes )
        {
            if ( currentQuestionLetter == checkBackLetter && letterVisible )
            {
                currentScore.setCorrect();
                currentScore.setHits();
                currentScore.setTimeCorrect( testUpdate.getTimeResponse() );
            }
            else if ( currentQuestionLetter == checkBackLetter && !letterVisible )
            {
                currentScore.setMissed( true );
                currentScore.setTimeMissed( 2000 + testUpdate.getTimeResponse(), true );
            }
            else if ( currentQuestionLetter != checkBackLetter && !letterVisible )
            {
                currentScore.setMissed( false );
                currentScore.setTimeMissed( 2000 + testUpdate.getTimeResponse(), false );
            }
            else
            {
                currentScore.setIncorrect();
                currentScore.setMiss();
                currentScore.setTimeIncorrect( testUpdate.getTimeResponse() );
            }
        }
        else
        {
            if ( currentQuestionLetter != checkBackLetter && letterVisible )
            {
                currentScore.setCorrect();
                currentScore.setCorrectReject();
                currentScore.setTimeCorrect( testUpdate.getTimeResponse() );
            }
            else if ( currentQuestionLetter != checkBackLetter && !letterVisible )
            {
                currentScore.setMissed( true );
                currentScore.setTimeMissed( 2000 + testUpdate.getTimeResponse(), true );
            }
            else if ( currentQuestionLetter == checkBackLetter && !letterVisible )
            {
                currentScore.setMissed( false );
                currentScore.setTimeMissed( 2000 + testUpdate.getTimeResponse(), false );
            }
            else
            {
                currentScore.setIncorrect();
                currentScore.setFalseAlarm();
                currentScore.setTimeIncorrect( testUpdate.getTimeResponse() );
            }
        }
        currentScore.setAverageResponse( letterVisible ? testUpdate.getTimeResponse() : 2000 + testUpdate.getTimeResponse() );
    }

    //if you have another AudioContext class use that one, as some browsers have a limit
    var audioCtx = new ( window.AudioContext || window.webkitAudioContext || window.audioContext );

    //All arguments are optional:

    //duration of the tone in milliseconds. Default is 500
    //frequency of the tone in hertz. default is 440
    //volume of the tone. Default is 1, off is 0.
    //type of tone. Possible values are sine, square, sawtooth, triangle, and custom. Default is sine.
    //callback to use on end of tone
    function beep( duration, frequency, volume, type, callback )
    {
        var oscillator = audioCtx.createOscillator();
        var gainNode = audioCtx.createGain();

        oscillator.connect( gainNode );
        gainNode.connect( audioCtx.destination );

        if ( volume ) { gainNode.gain.value = volume; };
        if ( frequency ) { oscillator.frequency.value = frequency; }
        if ( type ) { oscillator.type = type; }
        if ( callback ) { oscillator.onended = callback; }

        oscillator.start();
        setTimeout( function () { oscillator.stop() }, ( duration ? duration : 500 ) );
    }

    function spaceDown( event )
    {
        if ( testState == 2 )
        {
            startTest();
        }
    }

    function yesDown( event )
    {
        if ( testState == 3 && canKeyClick )
        {
            checkAnswer( true );
        }
    }

    function noDown( event )
    {
        if ( testState == 3 && canKeyClick )
        {
            checkAnswer( false );
        }
    }

    function keyDown( event )
    {
        switch ( event.keyCode )
        {
            case 32:
                spaceDown(); // keyDown Space
                break;
            case 90:
                yesDown(); // keyDown "Z"
                break;
            case 191:
                noDown(); // keyDown "? /"
                break;
        }
    }

    function updateManager()
    {
        this.UPDATE_FREQUENCY_SHOW_LETTER  = 2000;		// how often ( ms ) we check the time
        this.UPDATE_FREQUENCY_HIDE_LETTER  = 3000;		// how often ( ms ) we check the time.
        this.UPDATE_FREQUENCY_UNPRESS = 250;
        this.updateCounter = this.UPDATE_FREQUENCY_SHOW_LETTER;
        this.showLetter = true;
        this.updateCounterUnPress = this.UPDATE_FREQUENCY_UNPRESS;
        this.needUnPress = false;
	
        this.update = function( deltaTime )
        {
            if ( testGoing )
            {
                this.updateCounter -= deltaTime;
                if( this.updateCounter <= 0 )
                {
                    if ( this.showLetter )
                    {
                        this.updateCounter = this.UPDATE_FREQUENCY_HIDE_LETTER;
                        this.showLetter = false;
                    }
                    else
                    {
                        this.updateCounter = this.UPDATE_FREQUENCY_SHOW_LETTER;
                        this.showLetter = true;
                    }
                    updateTestQuestion( this.showLetter );
                }
            }
            if ( this.needUnPress )
            {
                this.updateCounterUnPress -= deltaTime;
                if( this.updateCounterUnPress <= 0 )
                {
                    keyYesNoUp();
                    this.needUnPress = false;
                }
            }
        }
    
        this.getTimeResponse = function()
        {
            var timeResponse = this.showLetter ? this.UPDATE_FREQUENCY_SHOW_LETTER - this.updateCounter : this.UPDATE_FREQUENCY_HIDE_LETTER - this.updateCounter ;
            return timeResponse;
        }
    
        this.setTestStarted = function()
        {
            this.updateCounter = this.UPDATE_FREQUENCY_SHOW_LETTER;
            this.showLetter = true;
        }
    
        this.setCircleBackUnPressed = function()
        {
            this.updateCounterUnPress = this.UPDATE_FREQUENCY_UNPRESS;
            this.needUnPress = true;
        }
    }

    function launchIntoFullscreen( element ) 
    {
        btnFullScreenOn.style.visibility = "hidden";
        btnFullScreenClose.style.visibility = "visible";
    
        if ( element.requestFullscreen )
        {
            element.requestFullscreen();
        } 
        else if ( element.mozRequestFullScreen )
        {
            element.mozRequestFullScreen();
        } 
        else if ( element.webkitRequestFullscreen ) 
        {
            element.webkitRequestFullscreen();
        } 
        else if ( element.msRequestFullscreen )
        {
            element.msRequestFullscreen();
        }
    }

    function cancelFullscreen()
    {
        btnFullScreenOn.style.visibility = "visible";
        btnFullScreenClose.style.visibility = "hidden";
    
        if ( document.cancelFullScreen ) 
        {
            document.cancelFullScreen();
        }
        else if ( document.mozCancelFullScreen )
        {
            document.mozCancelFullScreen();
        }
        else if ( document.webkitCancelFullScreen )
        {
            document.webkitCancelFullScreen();
        }
    }

    window.onload = function() 
    {
        gameCanvas = document.getElementById( "canvas" );
        ctx = gameCanvas.getContext( "2d" );
    
        document.addEventListener( 'keydown', keyDown );
    
        init();
    
        window.onresize();
    }

    window.onresize = function() 
    {
        var viewportWidth = window.innerWidth;
        var viewportHeight = window.innerHeight;
        var topOffset = ( viewportHeight > canvasHeight ) ? ( viewportHeight - canvasHeight ) / 2  : 0;
        var leftOffset = ( viewportWidth > canvasWidth ) ? ( viewportWidth - canvasWidth ) / 2  : 0;
    
        gameCanvas.style.top = topOffset + "px";
        gameCanvas.style.left = leftOffset + "px";
    
        btnFullScreenOn.style.left = leftOffset + canvasWidth - btnFullScreenOn.offsetWidth - 4 + "px";
        btnFullScreenClose.style.left = leftOffset + canvasWidth - btnFullScreenClose.offsetWidth - 4 + "px";
        btnFullScreenOn.style.top = topOffset + 4 + "px";
        btnFullScreenClose.style.top = topOffset + 4 + "px";
    
        btnExecuteTest.style.left = leftOffset + canvasWidth / 2 - btnExecuteTest.offsetWidth / 2 + "px";
        btnExecuteTest.style.top = topOffset + canvasHeight / 2 - btnExecuteTest.offsetHeight / 2 + "px";
    }

    var loopManager = function()
    {
        var newTime   = ( new Date ).getTime();
        var timeDelta = newTime - previousTime;

        previousTime = newTime;
        testUpdate.update( timeDelta );

        testLoop = setTimeout( loopManager, 1000 / 50 );
    };