//var text = ["See these two boards? They are both alike. This board on the left is the one you will use and you will make it look like the one on the right. Your task is to make this arrangement on the left look like the one on the right in as few moves as possible. There are two rules you must follow when you are arranging the beads. The first rule is that you are not allowed to place more beads on the peg that it can hold. The second rule is that you can only move one bead at a time. You cannot move two beads off the pegs at the same time. Do you have any questions? Now, arrange the beads on the left so they look like the arrangement on the right. You have two minutes to do each problem. Also, you need to coplete the problem in 20 moves or fewer. If you are not finished within two minutes or in less than 20 moves, the trial ends and the new problem is presented.", " Click here to start 123."].join('');
var text = [" See these two boards? They are both alike.",
    "This board on the left is the one you will use and",
    "you will make it look like the one on the right. Your ",
    "task is to make this arrangement on the left look like ",
    "the one on the right in as few moves as possible. There ",
    "are two rules you must follow when you are arranging the beads.",
    "The first rule is that you are not allowed to place more beads ",
    "on the peg that it can hold. The second rule is that you can only ",
    "move one bead at a time. You cannot move two beads off the pegs ",
    "at the same time. Now, arrange ",
    "the beads on the left so they look like the arrangement on the right.",
    "You have two minutes to do each problem. Also, you need to ",
    "coplete the problem in 20 moves or fewer. If you are not ",
    "finished within two minutes or in less than 20 moves,",
    "the trial ends and the new problem is presented. Click here to start."].join("");

function startGame(gameNum) { //change back w/o s to use
    hideFinalMessage();
    nm = 0;
    nmWr = 0;
    initTTime = 0;
    totalTime;

    time = getTime();
    if (gameNum == 1) {
        displayInstructions(text);
        var field = document.getElementById("countdown");
        field.style.display = 'none';
        totalTime = getTime();
    }
    else {
        countdown()
    }
    
    initField();
    showImage(gameNum);
    game = gameNum;   
}

function countdown() {
    
     gameTimer = setTimeout( displayFinalMessageOnTimeout, 120000);    
}

function hideFinalMessage() {
    var finalMessage = document.getElementById("finalMessage");
    if (finalMessage != null)
    finalMessage.style.display = 'none';
}

function displayTestFinishedMessage() {

    $('#testArea').empty();
    //$("#testArea").append("<div id = 'finishesTest' class='finishesTest'><p>The Test Has Finished Running. <br/></p> <button type='button>View Results</button></div>");
    $("#testArea").append("<div id = 'finishesTest' class='center finishesTest '><p>The Test Has Finished Running. <br/></p><input type='button' id='finishIt'class='signup-btn' value='View Results'></div>");

}

function displayFinalMessageOnTimeout() {

    var finalMessage = document.getElementById("finalMessage");
    finalMessage.style.display = '';
    finalMessage.innerHTML = "You've exceeded time for trial #" + game; 
    if (game !=13)
    finalMessage.innerHTML += ". The new trial will start soon.";
    setTimeout(hideFinalMessage, 2000);
    if (game == 13) {
        updateTestFinished();
        displayTestFinishedMessage();
    }
    var minMoves = mapGameMoves(game);
    passResultsForGame(game, initTTime, 120000, 20, nmWr, true, false, minMoves);
    setTimeout(function () {
           startCountDownTimer(game +1);
    }, 1300);
 
}

function mapGameMoves(game)
{
    switch(game)
    {
        case 1:
            return 1;
        case 2:
            return 2;
        case 3:
            return 2;
        case 4:
            return 4;
        case 5:
            return 4;
        case 6:
            return 5;
        case 7:
            return 5;
        case 8:
            return 5;
        case 9:
            return 6;
        case 10:
            return 6;
        case 11:
            return 6;
        case 12:
            return 7;
        case 13:
            return 7;
    }
}

function displayFinalMessage20move(game) {
    over = new Date() - time;
    var finalMessage = document.getElementById("finalMessage");
    finalMessage.style.display = '';
    finalMessage.innerHTML = "You made more that 20 moves in trial " + game + ". The new trial will start soon.";
    setTimeout(hideFinalMessage, 2000);
    if (game == 13) {
        updateTestFinished();
        displayTestFinishedMessage();
    }
    var minMoves = mapGameMoves(game)
    passResultsForGame(game, initTTime, over, 20, nmWr, false, true, minMoves);
    setTimeout(function () {
       startCountDownTimer(game);  
    }, 1300);
   
}

function displayFinalMessage(needMoves, madeMoves) {
    var finalMessage = document.getElementById("finalMessage");
    finalMessage.style.display = '';
    if (madeMoves > 1)
        dMadeMoves = " moves";
    else
        dMadeMoves = " move";

    if (needMoves > 1)
        dNeedMoves = " moves.";
    else
        dNeedMoves = " move.";
    finalMessage.innerHTML = "You made " + madeMoves + dMadeMoves + ". The goal was " + needMoves + dNeedMoves;
    setTimeout(hideFinalMessage, 2000);
}

function displayInstructions(text) {
    var field = document.getElementById("displayMessageL");
    field.textContent = text;
    field.onclick = function run() {
        canMove = true;
        field.style.display = 'none';

    }
}

function startCountDownTimer(game) {
    var timeleft = 11;
    canMove = false;
    var field = document.getElementById("countdown");
    field.style.display = '';

    field.innerHTML = "Please wait <span id='countdowntimer'>10 </span> seconds";
    var div = document.getElementById("countdowntimer");
    var downloadTimer = setInterval(function () {
        timeleft--;
        div.textContent = timeleft;
        if (timeleft <= 0) {

            clearInterval(downloadTimer);
            field.textContent = "Click to Start";
        }

    }, 1000);

    field.onclick = function run() {
        canMove = true;
        //gameStarted = true;
        cleanDivs();
        field.style.display = 'none';
        startGame(game)
    }
}

function finishGame(needMoves) {
    window.clearTimeout(gameTimer);
    over = new Date() - time;
    gameFinished = true;
  
    passResultsForGame(game, initTTime,over, nm, nmWr, false, false, needMoves);
    canMove = false;
    setTimeout(function () { displayFinalMessage(needMoves, nm); }, 1200)
  
    if (game == 13) {
        updateTestFinished();
        displayTestFinishedMessage();   
    }
    else
        game++;
    setTimeout(function () {
        startCountDownTimer(game);
    }, 1300);
      
  
}

function checkPos(out) {
   
    if (nm == 20) {
        displayFinalMessage20move(game)
    }
    canMove = false;
    setTimeout(function () { canMove = true }, 1200);
    if (out) {
        if (nm == 0) {
            initTTime = new Date() - time;
        }
    }

    if (game == 1) {
        if (p5 != null && p5.id == "blue" &&
            p3 != null && p3.id == "green" &&
            p6 != null && p6.id == "red") {

            finishGame(1);
            
        }
    }
    else if (game == 2) {
        if (p5 != null && p5.id == "red" &&
            p3 != null && p3.id == "green" &&
            p6 != null && p6.id == "blue") {

            finishGame(2);
        }
    }
    else if (game == 3) {
        if (p6 != null && p6.id == "red" &&
            p3 != null && p3.id == "green" &&
            p2 != null && p2.id == "blue") {

            finishGame(2);
        }
    }
    else if (game == 4) {
        if (p5 != null && p5.id == "red" &&
            p4 != null && p4.id == "green" &&
            p3 != null && p3.id == "blue") {

            finishGame(4);
        }
    }
    else if (game == 5) {
        if (p5 != null && p5.id == "red" &&
            p6 != null && p6.id == "green" &&
            p4 != null && p4.id == "blue") {

            finishGame(4);
        }
    }
    else if (game == 6) {
        if (p5 != null && p5.id == "red" &&
            p3 != null && p3.id == "blue" &&
            p2 != null && p2.id == "green") {

            finishGame(5);
        }
    }
    else if (game == 7) {
        if (p5 != null && p5.id == "red" &&
         p6 != null && p6.id == "green" &&
         p3 != null && p3.id == "blue") {

            finishGame(5);
 
        }
    }
    else if (game == 8) {
        if (p3 != null && p3.id == "red" &&
         p2 != null && p2.id == "green" &&
         p6 != null && p6.id == "blue") {

            finishGame(5);

        }
    }
    else if (game == 9) {
        if (p1 != null && p1.id == "red" &&
         p2 != null && p2.id == "green" &&
         p3 != null && p3.id == "blue") {

            finishGame(6);

        }
    }
    else if (game == 10) {
        if (p2 != null && p2.id == "red" &&
         p3 != null && p3.id == "blue" &&
         p6 != null && p6.id == "green") {

            finishGame(6);

        }
    }
    else if (game == 11) {
        if (p6 != null && p6.id == "red" &&
         p2 != null && p2.id == "green" &&
         p3 != null && p3.id == "blue") {

            finishGame(6);

        }
    }
    else if (game == 12) {
        if (p2 != null && p2.id == "red" &&
            p1 != null && p1.id == "green" &&
            p3 != null && p3.id == "blue") {

            finishGame(7);

        }
    }
    else if (game == 13) {
        if (p2 != null && p2.id == "red" &&
         p5 != null && p5.id == "green" &&
         p3 != null && p3.id == "blue") {

            finishGame(7);
           
        }
    }
};

function getTime() {

    return new Date();
}

function cleanDivs() {
    //var ele = $("#canvas_container");
    $("#canvas_small").remove();
    $("#testArea").append("<div id = 'canvas_small' class='left'></div>");
    $("#image_holder").remove();
    $("#testArea").append("<div id = 'image_holder' class='display'></div>");

}

function passResultsForGame( game,initThinkTime, totalTime, nm, nmWrong, overTime, overMoves, minMoves) {

    var data = {
        'game': game,
        'initThinkTime': initThinkTime / 1000,
        'timeTotal': totalTime / 1000,
        'numberOfMoves': nm,
        'numberOfWrongMoves': nmWrong,
        'overTime': overTime,
        'overMoves': overMoves,
        'minMoves' :minMoves

    }
    jQuery.ajax({
        contentType: "application/json; charset=utf-8",
        dataType: "json",
        url: 'LondonPage.aspx/SaveResults',
        dataType: 'json',
        data: JSON.stringify(data),
        type: 'POST',
        success: function (resp) {
          
            //request sent and response received.

        }
    });
}


function updateTestFinished() {
    jQuery.ajax({
        contentType: "application/json; charset=utf-8",
        dataType: "json",
        url: 'LondonPage.aspx/SaveFininishedLondon',
        dataType: 'json',
        data: '',
        type: 'POST',
        success: function (resp) {
            
            //request sent and response received.

        }
    });
}

$('body').on('click', '#finishIt', function () {
    var user = document.getElementById("userId").value;
    var tId = document.getElementById("tId").value;
    window.location.href = "ResultsPage.aspx?userId=" + user + "&tid=" + tId+ "&test=2";
});




