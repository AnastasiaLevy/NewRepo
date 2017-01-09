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
var timer;
function startGame(gameNum) {
    hideFinalMessage();
    nm = 0;
    nmWr = 0;
    initTTime = 0;
    totalTime;

    if (gameNum == 1) {
        displayInstructions(text);
        var field = document.getElementById("countdown");
        field.style.display = 'none';
        totalTime = getTime();
    }
    else {
        //startCountDownTimer(gameNum);
    }
    //
    initField();
    showImage(gameNum);
    game = gameNum;

    if (game == 1) //TODO: change back!
    {
        time = getTime();
    }
    else {
        timer = 0;
        countdown()
    }
}

function countdown() {

    timer = 0;
    var seconds = 120;
    function tick() {

        seconds--;
        if (seconds > 0) {
            timer = setTimeout(tick, 1000);
        } else {
            alert(game);
            displayFinalMessageOnTimeout(game + 1);
            clearTimeout(timer);

        }
    }
    tick();
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

function displayFinalMessageOnTimeout(game) {
    var finalMessage = document.getElementById("finalMessage");
    finalMessage.style.display = '';

    finalMessage.innerHTML = "This trial is over. The new trial will start soon.";
    setTimeout(hideFinalMessage, 2000);
    passResultsForGame(game, initTTime, 0, 20, nmWr, true, false);
    startCountDownTimer(game);
}

function displayFinalMessage20move(game) {
    over = new Date() - time;
    var finalMessage = document.getElementById("finalMessage");
    finalMessage.style.display = '';

    finalMessage.innerHTML = "You made more that 20 moves. The new trial will start soon.";
    setTimeout(hideFinalMessage, 2000);
 
    passResultsForGame(game, initTTime,over, 20, nmWr, false, true);
    startCountDownTimer(game);
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
    var timeleft = 3;
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
    timer = 0;
    over = new Date() - time;

    gameFinished = true;
    passResultsForGame(game, initTTime,over, nm, nmWr, false, false);
    canMove = false;
    displayFinalMessage(needMoves, nm);
    if (game == 3) {
        
        displayTestFinishedMessage();
    }
    else


        game++;
    startCountDownTimer(game);
  
}

function checkPos(out) {
    if (nm > 20) {
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

            finishGame(1);
        }
    }
    else if (game == 3) {
        if (p6 != null && p6.id == "red" &&
            p3 != null && p3.id == "green" &&
            p2 != null && p2.id == "blue") {

            finishGame(1);
        }
    }
    else if (game == 4) {
        if (p5 != null && p5.id == "red" &&
            p4 != null && p4.id == "green" &&
            p3 != null && p3.id == "blue") {

            finishGame(1);
        }
    }
    else if (game == 5) {
        if (p5 != null && p5.id == "red" &&
            p6 != null && p6.id == "green" &&
            p4 != null && p4.id == "blue") {

            finishGame(1);
        }
    }
    else if (game == 6) {
        if (p5 != null && p5.id == "red" &&
            p3 != null && p3.id == "blue" &&
            p2 != null && p2.id == "green") {

            finishGame(1);
        }
    }
    else if (game == 7) {
        if (p5 != null && p5.id == "red" &&
         p6 != null && p6.id == "green" &&
         p3 != null && p3.id == "blue") {

            finishGame(1);
 
        }
    }
    else if (game == 8) {
        if (p3 != null && p3.id == "red" &&
         p2 != null && p2.id == "green" &&
         p6 != null && p6.id == "blue") {

            finishGame(1);

        }
    }
    else if (game == 9) {
        if (p1 != null && p1.id == "red" &&
         p2 != null && p2.id == "green" &&
         p3 != null && p3.id == "blue") {

            finishGame(1);

        }
    }
    else if (game == 10) {
        if (p2 != null && p2.id == "red" &&
         p3 != null && p3.id == "blue" &&
         p6 != null && p6.id == "green") {

            finishGame(1);

        }
    }
    else if (game == 11) {
        if (p6 != null && p6.id == "red" &&
         p2 != null && p2.id == "green" &&
         p3 != null && p3.id == "blue") {

            finishGame(1);

        }
    }
    else if (game == 12) {
        if (p2 != null && p2.id == "red" &&
            p1 != null && p1.id == "green" &&
            p3 != null && p3.id == "blue") {

            finishGame(1);

        }
    }
    else if (game == 13) {
        if (p2 != null && p2.id == "red" &&
         p5 != null && p5.id == "green" &&
         p3 != null && p3.id == "blue") {

            finishGame(1);
            updateTestFinished();
            displayTestFinishedMessage();
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

function passResultsForGame( game,initThinkTime, totalTime, nm, nmWrong, overTime, overMoves) {

    var data = {
        'game': game,
        'initThinkTime': initThinkTime / 1000,
        'timeTotal': totalTime / 1000,
        'numberOfMoves': nm,
        'numberOfWrongMoves': nmWrong,
        'overTime': overTime,
        'overMoves': overMoves

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




