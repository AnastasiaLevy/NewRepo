var gameCanvas;
var ctx;
var canvasWidth = 1000;
var canvasHeight = 700;
var btnExecuteTest, btnFullScreenOn, btnFullScreenClose;
var currentTest;
var currentTask;
var testState; // 1 - Execute Test; 2 - Intro wait space; 3 - Test waiting answer; 4 - Test get answer; 5 - Test finished;
var canKeyClick = false;
var testGoing = false;
var taskVisible = false;
var testLoop = {};
var testUpdate = {};
var currentScore = {};
var previousTime = 0;

function init()
{
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
    for ( var i = 0; i < testMessages[currentTest - 1].length; i++ )
    {
        ctx.fillText( testMessages[currentTest - 1][i], rectangleTestMessage[currentTest - 1][0] + offsetLeft, 10 + rectangleTestMessage[currentTest - 1][1] + ( offsetTop * ( i + 1 ) ) );
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
        for ( var i = 0; i < currentScore.scoreArray[n].length; i++ )
        {
            ctx.fillText( currentScore.scoreArray[n][i], 170 + rectangleResultMessage[0] + i * 188, 200 + ( 416 / ( taskTests.length + 1 ) ) * ( n + 1 ) );
        }
    }
    for ( var i = 0; i < currentScore.totalScoreArray.length; i++ )
    {
        ctx.fillText( currentScore.totalScoreArray[i], 170 + rectangleResultMessage[0] + i * 188, 200 + ( 416 / ( taskTests.length + 1 ) ) * ( currentScore.scoreArray.length + 1 ) );
    }
}

function drawTableLabel() 
{
    ctx.font = "bold 20px arial";
    ctx.fillStyle = "#000";
    for ( var i = 0; i < testLabelNames.length; i++ )
    {
        var labelNamesOffset = ( i == 0 ) ? 150 : 200;
        ctx.fillText( testLabelNames[i], 10 + rectangleResultMessage[0] + 10, labelNamesOffset + ( 416 / ( taskTests.length + 1 ) ) * i );
    }
    ctx.font = "bold 20px arial";
    for ( var n = 0; n < labelValues.length; n++ )
    {
        var lines = labelValues[n].split( '\n' );
        for ( var i = 0; i < lines.length; i++ )
        {
            ctx.fillText( lines[i], 170 + rectangleResultMessage[0] + n * 188, 75 + rectangleResultMessage[1] + i * 20 );
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
        for ( var l = 0; l < 4; l++ )
        { // lines for tabel
            var currentLineX = rectangleResultTitle[0] + resultWidthLeftColumn + l * ( ( rectangleResultTitle[2] - resultWidthLeftColumn ) / 4 );
            var currentLineY = ( color == 0 ) ? rectangleResultTitle[1] : ( rectangleResultTitle[1] + rectangleResultTitle[3] );
            var currentLineHeight = ( color == 0 ) ? ( rectangleResultTitle[1] + rectangleResultTitle[3] ) : ( rectangleResultTitle[1] + rectangleResultMessage[3] );
            ctx.beginPath();
            ctx.moveTo( currentLineX , currentLineY );
            ctx.lineTo( currentLineX, currentLineHeight );
            ctx.closePath();
            ctx.stroke();
        }
    }
    for ( var row = 1; row < 5; row++ )
    {
        var currentLineY = rectangleResultTitle[1] + rectangleResultTitle[3] + row * ( ( rectangleResultMessage[3] - rectangleResultTitle[3] ) / 5 );
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
    drawCircle( 200, 570, "#000", "#9E0000", "Red" );
    //Draw center circle
    drawCircle( 500, 570, "#000", "#9E0000", "Green" );
    //Draw the right circle
    drawCircle( 800, 570, "#000", "#9E0000", "Blue" );
    ctx.font = "bold 36px arial";
    ctx.fillStyle = "#000";
    ctx.fillText( "Z", 185, 660 );
    ctx.fillText( "SpaceBar", 418, 660 );
    ctx.fillText( "/?", 782, 660 );
    //ctx.restore;
}

function keyPressOnDisplay( pressedKey )
{
    switch ( pressedKey )
    {
        case "Z":
            drawCircle( 200, 570, "black", "#607334", "Red" );
            break;
        case "SpaceBar":
            drawCircle( 500, 570, "black", "#607334", "Green" );
            break;
        case "/?":
            drawCircle( 800, 570, "black", "#607334", "Blue" );
            break;
    }
    beep( 250, 800, 0.1 );
}

function keyUpOnDisplay()
{
    drawCircle( 200, 570, "#000", "#9E0000", "Red" );
    drawCircle( 500, 570, "#000", "#9E0000", "Green" );
    drawCircle( 800, 570, "#000", "#9E0000", "Blue" );
}

function drawCircle( x, y, border, backColor, caption, radius = 55 ) 
{
    ctx.save;
    ctx.fillStyle = backColor;
    ctx.beginPath();
    ctx.lineWidth = 7;
    ctx.strokeStyle = border;
    ctx.arc( x, y, radius, ( Math.PI / 180 ) * 0, ( Math.PI / 180 ) * 360, false )
    ctx.restore();
    ctx.stroke();
    ctx.closePath();
    ctx.fill();
    ctx.font = "bold 34px arial";
    ctx.fillStyle = "black";
    switch ( caption.length )
    {
        case 3:
            ctx.fillText( caption, x - 32, y + 13 );
            break;
        case 4:
            ctx.fillText( caption, x - 37, y + 13 );
            break;
        case 5:
            ctx.fillText( caption, x - 51, y + 13 );
            break;
    }
}

function displayTask( word, colorWord )
{
    ctx.font = "bold 100px arial";
    ctx.fillStyle = colorWord;
    offSet = ( word.length > 1 ) ? ( ( word.length == 5 ) ? 90 : ( ( word.length == 4 ) ? 60 : ( word.length / 2 ) * 30 ) ) : 0;
    ctx.fillText( word, 450 - offSet, 350 );
}

function displayTaskBL2( word )
{
    var currentColor = getColor( word );
    drawCircle( 500, 300, currentColor, currentColor, " ", 100 );
}

function getColor( word )
{
    var currentColor;
    switch ( word )
    {
        case "R":
            currentColor = "#FF0000";
            break;
        case "G":
            currentColor = "#00FF00";
            break;
        case "B":
            currentColor = "#0000FF";
            break;
    }
    return currentColor;
}

function hideTask()
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
    currentTask = 0;
    drawGameCanvas();
    showMessage();
    currentScore.clearScoreArray();
}

function changeTestNumber()
{
    testGoing = false;
    currentScore.setTestScore();
    if ( currentTest == taskTests.length )
    {
        finishTest();
    }
    else
    {
        currentTest++;
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
    console.log( "getTestScore", currentScore.getTestsScore() );
    console.log( "getTestTotalScore", currentScore.getTestsTotalScore() );
    showResult();
}

function updateTestQuestion( showWord ) 
{
    this.word = "";
    this.listLength = taskTests[currentTest - 1].length;
    if ( testState == 3 && showWord && currentTask != 0 )
    {
        //currentScore.setNoresponse();
        currentScore.setIncorrect();
        currentScore.setAverageResponse( timeShownWord + timeInvisibleWord );
    }
    
    if ( showWord && currentTask < this.listLength )
    {
        testState = 3;
        currentTask++;
        this.word = taskTests[currentTest - 1][currentTask - 1];
        if ( currentTest == 2 )
        {
            displayTaskBL2( this.word );
        }
        else
        {
            var colorWord = ( currentTest == 1 ) ? "#000" : getColor( taskColors[currentTest - 1][currentTask - 1] );
            displayTask( this.word, colorWord );
        }
        canKeyClick = true;
        taskVisible = true;
    }
    else if ( currentTask == this.listLength && !taskVisible )
    {
        changeTestNumber();
    }
    else
    {
        hideTask();
        taskVisible = false;
    }
}

function checkAnswer( pressedKey ) 
{
    testState = 4;
    canKeyClick = false;
    keyPressOnDisplay( pressedKey );
    testUpdate.setCircleBackUnPressed();
    switch ( pressedKey )
    {
        case "Z":
            checkCorrectColor( "R" ); // press Red
            break;
        case "SpaceBar":
            checkCorrectColor( "G" ); // press Green
            break;
        case "/?":
            checkCorrectColor( "B" ); // press Blue
            break;
    }
    currentScore.setAverageResponse( taskVisible ? testUpdate.getTimeResponse() : timeShownWord + testUpdate.getTimeResponse() );
}

function checkCorrectColor( colorPress ) 
{
    if ( currentTest == 1 || currentTest == 4 || currentTest == 2 )
    {
        if ( colorPress == taskTests[currentTest - 1][currentTask - 1].substring( 0, 1 ) )
        {
            currentScore.setCorrect();
        }
        else
        {
            currentScore.setIncorrect();
        }
    }
    else
    {
        if ( colorPress == taskColors[currentTest - 1][currentTask - 1].substring( 0, 1 ) )
        {
            currentScore.setCorrect();
        }
        else
        {
            currentScore.setIncorrect();
        }
    }
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
    else if ( testState == 3 && canKeyClick )
    {
        checkAnswer( "SpaceBar" );
    }
    else
    {
        // ignore
    }
}

function yesDown( event )
{
    if ( testState == 3 && canKeyClick )
    {
        checkAnswer( "Z" );
    }
}

function noDown( event )
{
    if ( testState == 3 && canKeyClick )
    {
        checkAnswer( "/?" );
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
	this.UPDATE_FREQUENCY_SHOW_TASK  = timeShownWord;		// how often ( ms ) we check the time
    this.UPDATE_FREQUENCY_HIDE_TASK  = timeInvisibleWord;		// how often ( ms ) we check the time.
    this.UPDATE_FREQUENCY_UNPRESS = 250;
    this.updateCounter = this.UPDATE_FREQUENCY_SHOW_TASK;
    this.showTask = true;
    this.updateCounterUnPress = this.UPDATE_FREQUENCY_UNPRESS;
    this.needUnPress = false;
	
	this.update = function( deltaTime )
    {
        if ( testGoing )
        {
            this.updateCounter -= deltaTime;
    		if( this.updateCounter <= 0 )
            {
                if ( this.showTask )
                {
                    this.updateCounter = this.UPDATE_FREQUENCY_HIDE_TASK;
                    this.showTask = false;
                }
    			else
                {
                    this.updateCounter = this.UPDATE_FREQUENCY_SHOW_TASK;
                    this.showTask = true;
                }
                updateTestQuestion( this.showTask );
    		}
        }
        if ( this.needUnPress )
        {
            this.updateCounterUnPress -= deltaTime;
            if( this.updateCounterUnPress <= 0 )
            {
                keyUpOnDisplay();
                this.needUnPress = false;
            }
        }
	}
    
    this.getTimeResponse = function()
    {
        var timeResponse = this.showTask ? this.UPDATE_FREQUENCY_SHOW_TASK - this.updateCounter : this.UPDATE_FREQUENCY_HIDE_TASK - this.updateCounter ;
        return timeResponse;
    }
    
    this.setTestStarted = function()
    {
        this.updateCounter = this.UPDATE_FREQUENCY_SHOW_TASK;
        this.showTask = true;
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