var gameCanvas;
var ctx;
var canvasWidth = 1000;
var canvasHeight = 700;
var btnExecuteTest, btnFullScreenOn, btnFullScreenClose;
var currentTest;
var testState; // 1 - Execute Test; 2 - Intro wait space; 3 - Test waiting click on Hit; 4 - Test waiting click on next Hit; 5 - Test get click on correct Hits; 6 - Test get click on incorrect Hits; 7 - Card turning; 8 - Test finished; 9 - Error;
var turningState; // 0 - No turnning; 1 - Turning Face; 2 - Turning Back Side
var canKeyClick = false;
var canClick = false;
var testGoing = false;
var positionCanvas = {};
var testLoop = {};
var testUpdate = {};
var currentScore = {};
var currentHitsScheme = {};
var testCardsImages = {};
var assetsImages = [];
var previousTime = 0;
var mouseDownHit = 0;
var mouseUpHit = 0;
var turningCardNum = 0;
var turnedCardNum = 0;
var countImageLoader = 0;
var turnX1, turnX2, turnX3, turnX4, turnY1, turnY2, turnY3, turnY4;
var turnSecondX1, turnSecondX2, turnSecondX3, turnSecondX4, turnSecondY1, turnSecondY2, turnSecondY3, turnSecondY4;
var xCentrCard, xCentrSecondCard, deltaXTurnCard, deltaYTurnCard;
var resultArray = [];


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
    
    currentHitsScheme = new hitsScheme();
    
    testUpdate = new updateManager();
    testCardsImages = new cardsImages();
    
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

function showMessage() {
    var offsetLeft = 10;
    var offsetTop = 20;

    ctx.fillStyle = "#FFF";
    ctx.fillRect(rectangleTestMessage[currentTest - 1][0], rectangleTestMessage[currentTest - 1][1], rectangleTestMessage[currentTest - 1][2], rectangleTestMessage[currentTest - 1][3]);
    ctx.strokeStyle = "#000";
    ctx.lineWidth = 4;
    ctx.strokeRect(rectangleTestMessage[currentTest - 1][0], rectangleTestMessage[currentTest - 1][1], rectangleTestMessage[currentTest - 1][2], rectangleTestMessage[currentTest - 1][3]);
    ctx.font = "bold 20px arial";
    ctx.fillStyle = "#000";
    for ( var i = 0; i < testMessage[currentTest - 1].length; i++ )
    {
        ctx.fillText( testMessage[currentTest - 1][i], rectangleTestMessage[currentTest - 1][0] + offsetLeft, 10 + rectangleTestMessage[currentTest - 1][1] + ( offsetTop * ( i + 1 ) ) );
    }
}

function showErrorMessage()
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
    for ( var i = 0; i < errorConfigNotMultipleX6.length; i++ )
    {
        ctx.fillText( errorConfigNotMultipleX6[i], rectangleTestMessage[currentTest - 1][0] + offsetLeft, 10 + rectangleTestMessage[currentTest - 1][1] + ( offsetTop * ( i + 1 ) ) );
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
            ctx.fillText( currentScore.scoreArray[n][i] + ( i == 2 ? " %": "" ), 170 + rectangleResultMessage[0] + i * 125, 200 + ( 416 / ( schemeTests.length + 1 ) ) * ( n + 1 ) );
        }
        addResultIntoOutput(currentScore.scoreArray[n], "Test " + (n+1) + " Score");
    }
    for ( var i = 0; i < currentScore.totalScoreArray.length; i++ )
    {
        ctx.fillText( currentScore.totalScoreArray[i] + ( i == 2 ? " %": "" ), 170 + rectangleResultMessage[0] + i * 125, 200 + ( 416 / ( schemeTests.length + 1 ) ) * ( currentScore.scoreArray.length + 1 ) );
    }
    addResultIntoOutput(currentScore.totalScoreArray, "Total Score");
}

function drawTableLabel() 
{
    ctx.font = "bold 20px arial";
    ctx.fillStyle = "#000";
    for ( var i = 0; i < testLabelNames.length; i++ )
    {
        var labelNamesOffset = ( i == 0 ) ? 150 : 200;
        ctx.fillText( testLabelNames[i], 10 + rectangleResultMessage[0] + 10, labelNamesOffset + ( 416 / ( schemeTests.length + 1 ) ) * i );
    }
    ctx.font = "bold 20px arial";
    for ( var n = 0; n < labelValues.length; n++ )
    {
        var lines = labelValues[n].split("\\");
        for ( var i = 0; i < lines.length; i++ )
        {
            ctx.fillText( lines[i], 170 + rectangleResultMessage[0] + n * 125, 60 + rectangleResultMessage[1] + i * 20 );
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
        for ( var l = 0; l < 6; l++ )
        { // lines for tabel
            var currentLineX = rectangleResultTitle[0] + resultWidthLeftColumn + l * ( ( rectangleResultTitle[2] - resultWidthLeftColumn ) / 6 );
            var currentLineY = ( color == 0 ) ? rectangleResultTitle[1] : ( rectangleResultTitle[1] + rectangleResultTitle[3] );
            var currentLineHeight = ( color == 0 ) ? ( rectangleResultTitle[1] + rectangleResultTitle[3] ) : ( rectangleResultTitle[1] + rectangleResultMessage[3] );
            ctx.beginPath();
            ctx.moveTo( currentLineX , currentLineY );
            ctx.lineTo( currentLineX, currentLineHeight );
            ctx.closePath();
            ctx.stroke();
        }
    }
    for ( var row = 1; row < ( schemeTests.length + 1 ); row++ )
    {
        var currentLineY = rectangleResultTitle[1] + rectangleResultTitle[3] + row * ( ( rectangleResultMessage[3] - rectangleResultTitle[3] ) / ( schemeTests.length + 1 ) );
        ctx.beginPath();
        ctx.moveTo( rectangleResultTitle[0], currentLineY );
        ctx.lineTo( rectangleResultTitle[2] + rectangleResultTitle[0], currentLineY );
        ctx.closePath();
        ctx.stroke();
    }
}

function drawGameScreenCards()
{
    var i = 0;
    var lineBreake = ( schemeTests[currentTest - 1].length > 24 ) ? 10 : 20; 
    var cardWidth = Math.round( ( 900 - lineBreake * ( schemeMatrixTests[currentTest - 1][0] - 1 ) ) / schemeMatrixTests[currentTest - 1][0] );
    var cardHeight = Math.round( ( 600 - lineBreake * ( schemeMatrixTests[currentTest - 1][1] - 1 ) ) / schemeMatrixTests[currentTest - 1][1] );
    for ( var row = 0; row < schemeMatrixTests[currentTest - 1][1]; row++ )
    {
        for ( var column = 0; column < schemeMatrixTests[currentTest - 1][0]; column++ )
        {
            var cardX = Math.round( column * ( cardWidth + lineBreake ) + 50 );
            var cardY = Math.round( row * ( cardHeight + lineBreake ) + 50 );
            currentHitsScheme.setHit( cardX, cardY, cardWidth, cardHeight, schemeTests[currentTest - 1][i] );
            drawGameCard( currentHitsScheme.currentX[i], currentHitsScheme.currentY[i], currentHitsScheme.currentWidth[i], currentHitsScheme.currentHeight[i] );
            i++;
        }
    }
}

function updateGameScreenCards( exceptionCard1 = 0, exceptionCard2 = 0 )
{
    for ( var i = 0; i < currentHitsScheme.hitsLength; i++ )
    {
        if ( ( exceptionCard1 == 0 || exceptionCard1 != ( i + 1 ) ) && ( exceptionCard2 == 0 || exceptionCard2 != ( i + 1 ) ) && ( currentHitsScheme.visibleItem[i] == 1 ) )
        {
            drawGameCard( currentHitsScheme.currentX[i], currentHitsScheme.currentY[i], currentHitsScheme.currentWidth[i], currentHitsScheme.currentHeight[i] );
        }
    }
}

function drawGameCard( x, y, width, height )
{
    ctx.fillStyle = "#FFF";
    ctx.fillRect( x, y, width, height );
    ctx.strokeStyle = "#000";
    ctx.lineWidth = 4;
    ctx.strokeRect( x, y, width, height );
    ctx.font = "bold 20px arial";
    ctx.fillStyle = "#000";
}

function showExecuteTest() 
{
    testState = 1;
    turningState = 0;
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
    if ( checkMultiplayX6() )
    {
        testState = 2;
        canKeyClick = true;
        currentScore.clearScoreArray();
        changeTestsImages();
        drawGameCanvas();
        showMessage();
    }
    else
    {
        testState = 9;
        currentScore.clearScoreArray();
        drawGameCanvas();
        showErrorMessage();
    }
}

function checkMultiplayX6() 
{
    var multX6 = false;
    if ( ( ( schemeTests[currentTest - 1].length ) % 6 == 0 ) && ( ( schemeMatrixTests[currentTest - 1][0] * schemeMatrixTests[currentTest - 1][1] ) % 6 == 0 ) )
    {
        multX6 = true;
    }
    return multX6;
}

function changeTestNumber()
{
    testGoing = false;
    currentScore.setScore( checkAllItemNotHide(), getItemHided() );
    currentScore.setTestScore();
    if ( currentTest == schemeMatrixTests.length )
    {
        finishTest();
    }
    else
    {
        currentTest++;
        currentHitsScheme.clearScheme();
        beginingTest();
    }
}

function startTest() 
{
    testUpdate.setTimeStarted();
    testState = 3;
    testGoing = true;
    canClick = true;
    testUpdate.setTimeScoreStarted();
    drawGameCanvas();
    drawGameScreenCards();
    setDeltaXTurnCard();
    setDeltaYTurnCard();
}

function finishTest() 
{
    testState = 8;
    canKeyClick = false;
    canClick = false;
    drawGameCanvas();
    console.log( "getTestScore", currentScore.getTestsScore() );
    console.log( "getTestTotalScore", currentScore.getTestsTotalScore() );
    showResult();
    sendResults(resultArray);
}

//creates object from array and pushes it to array of objects to output it
//into backend
function addResultIntoOutput(array, name) {
    var result = { TotalMoves: 0, IncorrectMatching: 0, Score: 0, FirstCardAvgRespTime: 0, SecondCardAvgRespTime: 0, TestTime: 0 };
    var indexCounter = 0;
    for (var property in result) {
        if (result.hasOwnProperty(property)) {
            result[property] = array[indexCounter];
            indexCounter++;
        }
    }
    result["Name"] = name;
    resultArray.push(result);
}

function sendResults(object) {
    

    jQuery.ajax({
        contentType: "application/json; charset=utf-8",
        dataType: "json",
        url: 'MemoryCardsPage.aspx/SaveResults',
        dataType: 'json',
        data: JSON.stringify({ 'result': object }),
        type: 'POST',
        success: function (resp) {

            //request sent and response received.

        },
        error: function () {

            save = true;
        }
    });
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
    if ( testState == 2 && canKeyClick )
    {
        startTest();
        canKeyClick = false;
    }
}

function keyDown( event )
{
    switch ( event.keyCode )
    {
        case 32:
            spaceDown(); // keyDown Space
            break;
    }
}

function onMouseDown( event )
{
    var currentX = event.pageX - positionCanvas.x;
    var currentY = event.pageY - positionCanvas.y;
    if ( canClick && ( currentX >= 0 ) && ( currentX <= canvasWidth ) && ( currentY >= 0 ) && ( currentY <= canvasHeight ) )
    {
        mouseDownHit = getPositinsOnScheme( currentX, currentY );
    }
}

function onMouseUp( event )
{
    if ( canClick )
    {
        var currentX = event.pageX - positionCanvas.x;
        var currentY = event.pageY - positionCanvas.y;
        mouseUpHit = getPositinsOnScheme( currentX, currentY );
        if ( mouseDownHit == mouseUpHit && mouseUpHit != NaN && mouseDownHit != NaN && mouseUpHit > 0 && mouseDownHit > 0 && mouseUpHit != turnedCardNum && currentHitsScheme.visibleItem[mouseUpHit - 1] == 1 )
        {
            turnCard( mouseUpHit );
        }
    }
}

function turnCard( currentCardNumber )
{
    canClick = false;
    saveResponseTime();
    testUpdate.setTimeScoreStarted();
    turningCardNum = currentCardNumber;
    setTurningCardDeffaultCoordinat();
    setXCentrCard();
    setYCentrCard();
    turningState = 1;
    testState = 7;
}

function setTurningCardDeffaultCoordinat()
{
    turnX1 = currentHitsScheme.currentX[turningCardNum - 1];
    turnY1 = currentHitsScheme.currentY[turningCardNum - 1];
    turnX2 = currentHitsScheme.currentX[turningCardNum - 1] + currentHitsScheme.currentWidth[turningCardNum - 1];
    turnY2 = currentHitsScheme.currentY[turningCardNum - 1];
    turnX3 = currentHitsScheme.currentX[turningCardNum - 1] + currentHitsScheme.currentWidth[turningCardNum - 1];
    turnY3 = currentHitsScheme.currentY[turningCardNum - 1] + currentHitsScheme.currentHeight[turningCardNum - 1];
    turnX4 = currentHitsScheme.currentX[turningCardNum - 1];
    turnY4 = currentHitsScheme.currentY[turningCardNum - 1] + currentHitsScheme.currentHeight[turningCardNum - 1];
}

function setTurnedCardDeffaultCoordinat()
{
    turnSecondX1 = currentHitsScheme.currentX[turnedCardNum - 1];
    turnSecondY1 = currentHitsScheme.currentY[turnedCardNum - 1];
    turnSecondX2 = currentHitsScheme.currentX[turnedCardNum - 1] + currentHitsScheme.currentWidth[turnedCardNum - 1];
    turnSecondY2 = currentHitsScheme.currentY[turnedCardNum - 1];
    turnSecondX3 = currentHitsScheme.currentX[turnedCardNum - 1] + currentHitsScheme.currentWidth[turnedCardNum - 1];
    turnSecondY3 = currentHitsScheme.currentY[turnedCardNum - 1] + currentHitsScheme.currentHeight[turnedCardNum - 1];
    turnSecondX4 = currentHitsScheme.currentX[turnedCardNum - 1];
    turnSecondY4 = currentHitsScheme.currentY[turnedCardNum - 1] + currentHitsScheme.currentHeight[turnedCardNum - 1];
}

function setDeltaXTurnCard()
{
    deltaXTurnCard = ( currentHitsScheme.currentWidth[0] ) / 10 ;
}

function setDeltaYTurnCard()
{
    deltaYTurnCard = ( currentHitsScheme.currentHeight[0] ) / 40 ;
}

function setXCentrCard()
{
    xCentrCard = currentHitsScheme.currentX[turningCardNum - 1] + ( ( currentHitsScheme.currentWidth[turningCardNum - 1] ) / 2 );
}

function setXCentrSecondCard()
{
    xCentrSecondCard = currentHitsScheme.currentX[turnedCardNum - 1] + ( ( currentHitsScheme.currentWidth[turnedCardNum - 1] ) / 2 );
}

function setYCentrCard()
{
    yCentrCard = currentHitsScheme.currentY[turningCardNum - 1] + ( ( currentHitsScheme.currentHeight[turningCardNum - 1] ) / 2 );
}

function setYCentrSecondCard()
{
    yCentrSecondCard = currentHitsScheme.currentY[turnedCardNum - 1] + ( ( currentHitsScheme.currentHeight[turnedCardNum - 1] ) / 2 );
}

function turnCardAnimation()
{
    drawGameCanvas();
    updateGameScreenCards( turningCardNum );
    if ( turnedCardNum != 0 )
    {
        testCardsImages.showOpenedImage( turnedCardNum );
    }
    changeTurningCoordinate();
    drawAnimationCard();
    if ( turningState == 2 )
    {
        testCardsImages.animationOpenImage( turningCardNum, [ [turnX2, turnY2], [turnX1, turnY1], [turnX4, turnY4], [turnX3, turnY3] ] );
    }
}

function turningBack()
{
    if ( turningState == 0 )
    {
        turningState = 1;
        setXCentrSecondCard();
        setTurnedCardDeffaultCoordinat();
    }
    drawGameCanvas();
    updateGameScreenCards( turningCardNum, turnedCardNum );
    changeBackingCoordinate();
    drawAnimationCard();
    changeBackingSecondCoordinate();
    drawAnimationSecondCard();
    if ( turningState == 1 )
    {
        testCardsImages.animationOpenImage( turningCardNum, [ [turnX1, turnY1], [turnX2, turnY2], [turnX3, turnY3], [turnX4, turnY4] ] );
        testCardsImages.animationOpenImage( turnedCardNum, [ [turnSecondX1, turnSecondY1], [turnSecondX2, turnSecondY2], [turnSecondX3, turnSecondY3], [turnSecondX4, turnSecondY4] ] );
    }
}

function scaleOutHit()
{
    if ( turningState == 0 )
    {
        turningState = 2;
        setXCentrSecondCard();
        setYCentrSecondCard();
        setTurnedCardDeffaultCoordinat();
    }
    drawGameCanvas();
    updateGameScreenCards( turningCardNum, turnedCardNum );
    changeOutCoordinate();
    drawAnimationCard();
    changeOutSecondCoordinate();
    drawAnimationSecondCard();
    if ( turningState == 2 )
    {
        testCardsImages.animationOpenImage( turningCardNum, [ [( turnX1 + 10 ), ( turnY1 + 10 )], [( turnX2 - 10 ), ( turnY2 + 10 )], [( turnX3 - 10 ), ( turnY3 - 10 )], [( turnX4 + 10 ), ( turnY4 - 10 )] ] );
        testCardsImages.animationOpenImage( turnedCardNum, [ [( turnSecondX1 + 10 ), ( turnSecondY1 + 10 )], [( turnSecondX2 - 10 ), ( turnSecondY2 + 10 )], [( turnSecondX3 - 10 ), ( turnSecondY3 - 10 )], [( turnSecondX4 + 10 ), ( turnSecondY4 - 10 )] ] );
    }
}

function drawAnimationCard()
{
    ctx.save;
    ctx.fillStyle = "#FFF";
    ctx.strokeStyle = "#000";
    ctx.lineWidth = 4;
    ctx.beginPath();
    ctx.moveTo( turnX1, turnY1 );
    ctx.lineTo( turnX2, turnY2 );
    ctx.lineTo( turnX3, turnY3 );
    ctx.lineTo( turnX4, turnY4 );
    ctx.lineTo( turnX1, turnY1 );
    ctx.closePath();
    ctx.fill();
    ctx.stroke();
}

function drawAnimationSecondCard()
{
    ctx.save;
    ctx.fillStyle = "#FFF";
    ctx.strokeStyle = "#000";
    ctx.lineWidth = 4;
    ctx.beginPath();
    ctx.moveTo( turnSecondX1, turnSecondY1 );
    ctx.lineTo( turnSecondX2, turnSecondY2 );
    ctx.lineTo( turnSecondX3, turnSecondY3 );
    ctx.lineTo( turnSecondX4, turnSecondY4 );
    ctx.lineTo( turnSecondX1, turnSecondY1 );
    ctx.closePath();
    ctx.fill();
    ctx.stroke();
}

function changeTurningCoordinate()
{
    turnX1 = turnX4 += deltaXTurnCard;
    turnX2 = turnX3 -= deltaXTurnCard;
    if ( turnX1 > xCentrCard || turnX2 < xCentrCard )
    {
        turningState = 2;
    }
    if ( turnX1 > ( currentHitsScheme.currentX[turningCardNum - 1] + currentHitsScheme.currentWidth[turningCardNum - 1] ) || turnX2 < currentHitsScheme.currentX[turningCardNum - 1] )
    {
        turningState = 0;
        setTurningCardDeffaultCoordinat();
    }
    if ( turningState == 1 )
    {
        turnY1 += deltaYTurnCard;
        turnY4 -= deltaYTurnCard;
        turnY2 -= deltaYTurnCard;
        turnY3 += deltaYTurnCard;
    }
    if ( turningState == 2 )
    {
        turnY1 -= deltaYTurnCard;
        turnY4 += deltaYTurnCard;
        turnY2 += deltaYTurnCard;
        turnY3 -= deltaYTurnCard;
    }
}

function changeBackingCoordinate()
{
    turnX1 = turnX4 += deltaXTurnCard;
    turnX2 = turnX3 -= deltaXTurnCard;
    if ( turnX1 > xCentrCard || turnX2 < xCentrCard )
    {
        turningState = 2;
    }
    if ( turnX1 > ( currentHitsScheme.currentX[turningCardNum - 1] + currentHitsScheme.currentWidth[turningCardNum - 1] ) || turnX2 < currentHitsScheme.currentX[turningCardNum - 1] )
    {
        turningState = 0;
        setTurnedCardDeffaultCoordinat();
    }
    if ( turningState == 2 )
    {
        turnY1 += deltaYTurnCard;
        turnY4 -= deltaYTurnCard;
        turnY2 -= deltaYTurnCard;
        turnY3 += deltaYTurnCard;
    }
    if ( turningState == 1 )
    {
        turnY1 -= deltaYTurnCard;
        turnY4 += deltaYTurnCard;
        turnY2 += deltaYTurnCard;
        turnY3 -= deltaYTurnCard;
    }
}

function changeBackingSecondCoordinate()
{
    turnSecondX1 = turnSecondX4 += deltaXTurnCard;
    turnSecondX2 = turnSecondX3 -= deltaXTurnCard;
    if ( turnSecondX1 > xCentrSecondCard || turnSecondX2 < xCentrSecondCard )
    {
        turningState = 2;
    }
    if ( turnSecondX1 > ( currentHitsScheme.currentX[turnedCardNum - 1] + currentHitsScheme.currentWidth[turnedCardNum - 1] ) || turnSecondX2 < currentHitsScheme.currentX[turnedCardNum - 1] )
    {
        turningState = 0;
        setTurningCardDeffaultCoordinat();
    }
    if ( turningState == 2 )
    {
        turnSecondY1 += deltaYTurnCard;
        turnSecondY4 -= deltaYTurnCard;
        turnSecondY2 -= deltaYTurnCard;
        turnSecondY3 += deltaYTurnCard;
    }
    if ( turningState == 1 )
    {
        turnSecondY1 -= deltaYTurnCard;
        turnSecondY4 += deltaYTurnCard;
        turnSecondY2 += deltaYTurnCard;
        turnSecondY3 -= deltaYTurnCard;
    }
}

function changeOutCoordinate()
{
    turnX1 = turnX4 += deltaXTurnCard;
    turnX2 = turnX3 -= deltaXTurnCard;
    turnY1 = turnY2 += deltaXTurnCard * getCardResolution();
    turnY3 = turnY4 -= deltaXTurnCard * getCardResolution();
    if ( turnX1 > xCentrCard || turnX2 < xCentrCard || turnY1 > yCentrCard || turnY3 < yCentrCard )
    {
        turningState = 0;
    }
}

function changeOutSecondCoordinate()
{
    turnSecondX1 = turnSecondX4 += deltaXTurnCard;
    turnSecondX2 = turnSecondX3 -= deltaXTurnCard;
    turnSecondY1 = turnSecondY2 += deltaXTurnCard * getCardResolution();
    turnSecondY3 = turnSecondY4 -= deltaXTurnCard * getCardResolution();
    if ( turnSecondX1 > xCentrSecondCard || turnSecondX2 < xCentrSecondCard || turnSecondY1 > yCentrSecondCard || turnSecondY3 < yCentrSecondCard )
    {
        turningState = 0;
    }
}

function getPositinsOnScheme( currentX, currentY )
{
    var currentSchemePosition = 0;
    for ( var i = 0; i < currentHitsScheme.hitsLength; i++ )
    {
        if ( currentX >= currentHitsScheme.currentX[i] && currentX <= ( currentHitsScheme.currentX[i] + currentHitsScheme.currentWidth[i] ) )
        {
            if ( currentY >= currentHitsScheme.currentY[i] && currentY <= ( currentHitsScheme.currentY[i] + currentHitsScheme.currentHeight[i] ) )
            {
                currentSchemePosition = i + 1;
            }
        }
    }
    return currentSchemePosition;
}

function findPos( obj )
{
    var current_left = 0, current_top = 0;
    if ( obj.offsetParent )
    {
        do
        {
            current_left += obj.offsetLeft;
            current_top += obj.offsetTop;
        } while( obj = obj.offsetParent );
        return {x: current_left, y: current_top};
    }
    return undefined;
}

function getResizedSize( currentSide, imageNum )
{
    var CARD_WIDTH = currentHitsScheme.currentWidth[0], CARD_HEIGHT = currentHitsScheme.currentHeight[0];
    var imageResolution = ( testCardsImages.imeagesTest[imageNum].width ) / ( testCardsImages.imeagesTest[imageNum].height );
    var resizedWidth = ( getCardResolution() > imageResolution ) ? CARD_HEIGHT * imageResolution : CARD_WIDTH;
    var resizedHeight = ( getCardResolution() < imageResolution ) ? CARD_WIDTH / imageResolution : CARD_HEIGHT;
    if ( currentSide == "width" )
    {
        return resizedWidth;
    }
    else
    {
        return resizedHeight;
    }
}

function getResolutionCompare( imageNum )
{
    var imageResolution = ( testCardsImages.imeagesTest[imageNum].width ) / ( testCardsImages.imeagesTest[imageNum].height );

    if ( getCardResolution() > imageResolution )
    {
        return "height";
    }
    else
    {
        return "width";
    }
}

function getCardResolution()
{
    var CARD_WIDTH = currentHitsScheme.currentWidth[0], CARD_HEIGHT = currentHitsScheme.currentHeight[0];
    var cardResolution = CARD_WIDTH / CARD_HEIGHT;
    return cardResolution;
}

function showTwoCards()
{
    drawGameCanvas();
    updateGameScreenCards();
    testCardsImages.showOpenedImage( turningCardNum );
    testCardsImages.showOpenedImage( turnedCardNum );
    mouseDownHit = 0;
    mouseUpHit = 0;
}

function showOneCard()
{
    testUpdate.setTimeScoreStarted();
    turnedCardNum = turningCardNum;
    turningCardNum = 0;
    drawGameCanvas();
    updateGameScreenCards();
    testCardsImages.showOpenedImage( turnedCardNum );
    mouseDownHit = 0;
    mouseUpHit = 0;
}

function backToChoiseCard()
{
    testUpdate.setTimeScoreStarted();
    turningCardNum = 0;
    turnedCardNum = 0;
    drawGameCanvas();
    updateGameScreenCards();
    mouseDownHit = 0;
    mouseUpHit = 0;
}

function saveResponseTime()
{
    if ( turnedCardNum == 0 )
    {
        currentScore.setTimeFirstCard( testUpdate.getTimeScoreResponse() );
    }
    else
    {
        currentScore.setTimeSecondCard( testUpdate.getTimeScoreResponse() );
    }
}

function checkAllItemNotHide()
{
    var openedItem = false;
    for ( var i = 0; i < currentHitsScheme.hitsLength; i++ )
    {
        if ( currentHitsScheme.visibleItem[i] == 1 )
        {
            openedItem = true;
        }
    }
    return openedItem;
}

function getItemHided()
{
    var itemHided = 0;
    for ( var i = 0; i < currentHitsScheme.hitsLength; i++ )
    {
        if ( currentHitsScheme.visibleItem[i] == 0 )
        {
            itemHided++;
        }
    }
    return itemHided;
}

function setHidedCards()
{
    for ( var i = 0; i < currentHitsScheme.hitsLength; i++ )
    {
        if ( ( turnedCardNum - 1 ) == i || ( turningCardNum - 1 ) == i )
        {
            currentHitsScheme.visibleItem[i] = 0;
        }
    }
}

function updateManager()
{
    this.UPDATE_FREQUENCY_TURNNING_CARD = 50;
    this.UPDATE_FREQUENCY_WAITE_CARD = 500;
    this.hideAllCards = false;
    this.updateCounter = this.UPDATE_FREQUENCY_TURNNING_CARD;
    this.updateTimeCounter = timeTests[0];
    this.updateResponseCounter = 0;
	
	this.update = function( deltaTime )
    {
        if ( testGoing )
        {
            if ( testState == 7 )
            {
                this.updateCounter -= deltaTime;
                if ( this.updateCounter <= 0 )
                {
                    turnCardAnimation();
                    this.updateCounter = this.UPDATE_FREQUENCY_TURNNING_CARD;
                }
                if ( turningState == 0 )
                {
                    currentScore.setMoves();
                    if ( turnedCardNum == 0 )
                    {
                        testState = 4;
                        canClick = true;
                        showOneCard();
                    }
                    else
                    {
                        if ( currentHitsScheme.currentPicture[turningCardNum - 1] == currentHitsScheme.currentPicture[turnedCardNum - 1] )
                        {
                            this.hideAllCards = true;
                            testState = 5;
                            this.updateCounter = this.UPDATE_FREQUENCY_WAITE_CARD; // correct scale out
                        }
                        else
                        {
                            currentScore.setIncorrect();
                            this.hideAllCards = true;
                            testState = 6;
                            this.updateCounter = this.UPDATE_FREQUENCY_WAITE_CARD; //turning back
                        }
                        showTwoCards();
                    }
                }
            }
            if ( ( testState == 5 || testState == 6 ) )
            {
                if ( this.updateCounter > 0 && this.hideAllCards )
                {
                    this.updateCounter -= deltaTime;
                    if ( this.updateCounter <= 0 )
                    {
                        this.hideAllCards = false;
                        this.updateCounter = this.UPDATE_FREQUENCY_TURNNING_CARD;
                        if ( testState == 6 )
                        {
                            turningBack();
                        }
                        else
                        {
                            scaleOutHit();
                        }
                    }
                }
                else
                {
                    if ( testState == 6 )
                    {
                        this.updateCounter -= deltaTime;
                        if ( this.updateCounter <= 0 )
                        {
                            turningBack();
                            this.updateCounter = this.UPDATE_FREQUENCY_TURNNING_CARD;
                        };
                        if ( turningState == 0 )
                        {
                            testState = 3;
                            canClick = true;
                            backToChoiseCard();
                        }
                    }
                    else
                    {
                        this.updateCounter -= deltaTime;
                        if ( this.updateCounter <= 0 )
                        {
                            scaleOutHit();
                            this.updateCounter = this.UPDATE_FREQUENCY_TURNNING_CARD;
                        };
                        if ( turningState == 0 )
                        {
                            setHidedCards();
                            if ( checkAllItemNotHide() )
                            {
                                testState = 3;
                                canClick = true;
                                backToChoiseCard();
                            }
                            else
                            {
                                turningCardNum = 0;
                                turnedCardNum = 0;
                                currentScore.setAvgTimeTest( ( timeTests[currentTest - 1] - this.updateTimeCounter ) );
                                changeTestNumber();
                            }
                        }
                    }
                }
            }
            this.updateTimeCounter -= deltaTime;
            if ( this.updateTimeCounter <= 0 )
            {
                turningCardNum = 0;
                turnedCardNum = 0;
                saveResponseTime();
                currentScore.setAvgTimeTest( timeTests[currentTest - 1] );
                changeTestNumber();
            }
            if ( canClick )
            {
                this.updateResponseCounter += deltaTime;
            }
        }
	}
    
    this.getTimeScoreResponse = function()
    {
        return this.updateResponseCounter;
    }
    
    this.setTimeScoreStarted = function()
    {
        this.updateResponseCounter = 0;
    }
    
    this.setTimeStarted = function()
    {
        this.updateTimeCounter = timeTests[currentTest - 1];
    }
    
    this.setTestStarted = function()
    {
        this.updateCounter = this.UPDATE_FREQUENCY_TURNNING_CARD;
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

function imageLoading()
{
    var imageObj = new Image();
    
    imageObj.onload = function()
    {
        countImageLoader++;
        if ( countImageLoader <= allImages.length )
        {
            imageLoading();
            if (countImageLoader <= testsImages[0].length )
            {
                testCardsImages.setTestImeage( imageObj );
            }
            assetsImages.push( imageObj );
        }
    };
    
    if( countImageLoader < allImages.length )
    {
        imageObj.src = allImages[countImageLoader];
    }
}

function changeTestsImages()
{
    testCardsImages.clearTestImeage();
    var currentSkip = 0;
    for ( var n = 0; n < testsImages.length ; n++ )
    {
       if ( n < ( currentTest - 1 ) && currentTest > 1 )
       {
            currentSkip = currentSkip + testsImages[n].length;
       }
    }
    for ( var i = currentSkip; i < ( currentSkip + testsImages[currentTest - 1].length ); i++ )
    {
        testCardsImages.setTestImeage( assetsImages[i] );
    }
}

window.onload = function() 
{
    gameCanvas = document.getElementById( "canvas" );
    ctx = gameCanvas.getContext( "2d" );
    
    document.addEventListener( 'keydown', keyDown );
    document.addEventListener( 'mousedown', onMouseDown );
    document.addEventListener( 'mouseup', onMouseUp );
    
    init();
    
    imageLoading();
    
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
    
    positionCanvas = findPos( gameCanvas );
    
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