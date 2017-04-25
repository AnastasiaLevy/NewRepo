//var text = ["See these two boards? They are both alike. This board on the left is the one you will use and you will make it look like the one on the right. Your task is to make this arrangement on the left look like the one on the right in as few moves as possible. There are two rules you must follow when you are arranging the beads. The first rule is that you are not allowed to place more beads on the peg that it can hold. The second rule is that you can only move one bead at a time. You cannot move two beads off the pegs at the same time. Do you have any questions? Now, arrange the beads on the left so they look like the arrangement on the right. You have two minutes to do each problem. Also, you need to coplete the problem in 20 moves or fewer. If you are not finished within two minutes or in less than 20 moves, the trial ends and the new problem is presented.", " Click here to start 123."].join('');
//var text = [" See these two boards? They are both alike.",
//    "This board on the left is the one you will use and",
//    "you will make it look like the one on the right. Your ",
//    "task is to make this arrangement on the left look like ",
//    "the one on the right in as few moves as possible. There ",
//    "are two rules you must follow when you are arranging the beads.",
//    "The first rule is that you are not allowed to place more beads ",
//    "on the peg that it can hold. The second rule is that you can only ",
//    "move one bead at a time. You cannot move two beads off the pegs ",
//    "at the same time. Now, arrange ",
//    "the beads on the left so they look like the arrangement on the right.",
//    "You have two minutes to do each problem. Also, you need to ",
//    "coplete the problem in 20 moves or fewer. If you are not ",
//    "finished within two minutes or in less than 20 moves,",
//    "the trial ends and the new problem is presented. Click here to start."].join("");



function startGame(gameNum) { //change back w/o s to use
    var text = gameSettings.Instructions;

    //alert(gameSettings);
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

    initField(gameNum, gameData);
    showImage(gameNum, gameData);

    game = gameNum;
}

function countdown() {
    var timeMlsec = gameSettings.TimeOut * 1000
    numMoves = JSON.parse(gameData[game - 1].NumberOfMoves);
    gameTimer = setTimeout(function () { displayFinalMessageOnTimeout(numMoves, lastMove, timeMlsec) }, timeMlsec);
}

function hideFinalMessage() {
    var finalMessage = document.getElementById("finalMessage");
    if (finalMessage != null)
        finalMessage.style.display = 'none';
}

function displayTestFinishedMessage() {

    $('#testArea').empty();
    var str = gameSettings.InstructionsFinish;
    var btn = gameSettings.TxtButton;
    $("#testArea").append("<div id = 'finishesTest' class='center finishesTest '><p>" + str + " <br/></p><input type='button' id='finishIt'class='signup-btn' value='" + btn + "'></div>");

}

function displayFinalMessageOnTimeout(numMoves, lastMove, timeMlsec) {
    //var text = gameSettings.InstructionsTimeOut;
    var text = gameSettings.TextOverTime;
    var finalMessage = document.getElementById("finalMessage");
    finalMessage.style.display = '';
    finalMessage.innerHTML = text;//"You've exceeded time for trial #" + game;
   // if (game != lastMove)
        //finalMessage.innerHTML += ". The new trial will start soon.";
    setTimeout(hideFinalMessage, 2000);
    if (game == lastMove) {
        updateTestFinished();
        displayTestFinishedMessage();
    }

    passResultsForGame(game, timeMlsec, timeMlsec, gameSettings.MaxMoves, nmWr, true, false, numMoves);
    setTimeout(function () {
        startCountDownTimer(game + 1);
    }, 1300);
}

function displayFinalMessage20move(game) {
    var text = gameSettings.TextOverMoves; //TODO
    lastMove = parseInt(gameSettings.PrctRounds) + parseInt(gameSettings.TestRounds)
    over = new Date() - time;
    var finalMessage = document.getElementById("finalMessage");
    finalMessage.style.display = '';
    finalMessage.innerHTML = text;//"You made more that 20 moves in trial " + game + ". The new trial will start soon.";
    setTimeout(hideFinalMessage, 2000);
    if (game == lastMove) {
        updateTestFinished();
        displayTestFinishedMessage();
    }
    //var minMoves = mapGameMoves(game)
    passResultsForGame(game, initTTime, over, gameSettings.MaxMoves, nmWr, false, true, numMoves);
    setTimeout(function () {
        startCountDownTimer(game + 1);
    }, 1300);

}

function displayFinalMessage(needMoves, madeMoves) {
    var text = gameSettings.Feedback;

    if (text.indexOf("[nm]") != -1) {
        var res = text.split("[nm]");
        text = res[0] + madeMoves + res[1];
    }
    if (text.indexOf("[mm]") != -1) {
        var res = text.split("[mm]");
        text = res[0] + needMoves + res[1];
    }

    var finalMessage = document.getElementById("finalMessage");
    finalMessage.style.display = '';
    //if (madeMoves > 1)
    //    dMadeMoves = " moves";
    //else
    //    dMadeMoves = " move";

    //if (needMoves > 1)
    //    dNeedMoves = " moves.";
    //else
    //    dNeedMoves = " move.";
    //finalMessage.innerHTML = "You made " + madeMoves + dMadeMoves + ". The goal was " + needMoves + dNeedMoves;

    finalMessage.innerHTML = text;
    setTimeout(hideFinalMessage, 1300);
}

function displayInstructions(text) {
    if (gameSettings.TxtToSpeech)
        $("#play").show();
    else
        $("#play").hide();
    var field = document.getElementById("displayMessageL");
    field.textContent = text;
    field.onclick = function run() {
        canMove = true;
        field.style.display = 'none';
        $("#play").hide();

    }
}

function startCountDownTimer(game) {
    var timeleft = parseInt(gameSettings.CountDownFrom)+1;
    var text = gameSettings.CountDownText;

    if (text.indexOf("[cd]") != -1) {
        var res = text.split("[cd]");
        text = res[0] + "<span id='countdowntimer'>"  +(timeleft)  + "</span>" + res[1];
    }

    canMove = false;
    var field = document.getElementById("countdown");
    field.style.display = '';

    field.innerHTML = text;//"Please wait <span id='countdowntimer'>" + (timeleft+ 2) + " </span> seconds";
    var div = document.getElementById("countdowntimer");
    var downloadTimer = setInterval(function () {
        timeleft--;
        div.textContent = timeleft;
        if (timeleft <= 0) {

            clearInterval(downloadTimer);
            //field.textContent = "Click to Start";
            canMove = true;
            //gameStarted = true;
            cleanDivs();
            field.style.display = 'none';
            startGame(game)
        }

    }, 1000);

    //field.onclick = function run() {
    //    canMove = true;
    //    //gameStarted = true;
    //    cleanDivs();
    //    field.style.display = 'none';
    //    startGame(game)
    //}
}

function finishGame(needMoves) {
    lastMove = parseInt(gameSettings.PrctRounds) + parseInt(gameSettings.TestRounds)
    window.clearTimeout(gameTimer);
    over = new Date() - time;
    gameFinished = true;

    passResultsForGame(game, initTTime, over, nm, nmWr, false, false, needMoves);
    canMove = false;
    if (gameSettings.ShowFeedback == "True")
        setTimeout(function () { displayFinalMessage(needMoves, nm); }, 1200)

    if (game == lastMove) {
        setTimeout(function () {
            updateTestFinished();
            displayTestFinishedMessage();
        }, 3200);

    }
    else {
        game++;
        setTimeout(function () {
            startCountDownTimer(game);
        }, 1300);
    }


}

function getMatchPos(pos, color) {
    if (pos == "p1") {
        if (p1 != null && p1.id == color)
            return true;
        else
            return false;
    }
    if (pos == "p2") {
        if (p2 != null && p2.id == color)
            return true;
        else
            return false;
    }
    if (pos == "p3") {
        if (p3 != null && p3.id == color)
            return true;
        else
            return false;
    }
    if (pos == "p4") {
        if (p4 != null && p4.id == color)
            return true;
        else
            return false;
    }
    if (pos == "p5") {
        if (p5 != null && p5.id == color)
            return true;
        else
            return false;
    }
    if (pos == "p6") {
        if (p6 != null && p6.id == color)
            return true;
        else
            return false;
    }
}

function checkPos(out) {
    finishPos = JSON.parse(gameData[game - 1].RoundFinish);
    numMoves = JSON.parse(gameData[game - 1].NumberOfMoves);

    if (nm == gameSettings.MaxMoves) {
        displayFinalMessage20move(game)
    }
    canMove = false;
    setTimeout(function () { canMove = true }, 700);
    //
    if (1 == 1) {
        if (nm == 0) {
            initTTime = new Date() - time;
        }
    }

    var red = finishPos.red;
    var blue = finishPos.blue;
    var green = finishPos.green;

    if (getMatchPos(finishPos.red, "red")
        &&
        getMatchPos(finishPos.blue, "blue")
        &&
        getMatchPos(finishPos.green, "green")) {
        finishGame(numMoves);
    }
};

function getTime() {

    return new Date();
}

function cleanDivs() {
    $("#canvas_small").remove();
    $("#testArea").append("<div id = 'canvas_small' class='left'></div>");
    $("#image_holder").remove();
    $("#testArea").append("<div id = 'image_holder' class='display'></div>");

}
arrData = [];
var save = false;
function passResultsForGame(game, initThinkTime, totalTime, nm, nmWrong, overTime, overMoves, minMoves) {

    var data = {
        'game': game,
        'initThinkTime': initThinkTime / 1000,
        'timeTotal': totalTime / 1000,
        'numberOfMoves': nm,
        'numberOfWrongMoves': nmWrong,
        'overTime': overTime,
        'overMoves': overMoves,
        'minMoves': numMoves
    }
    arrData.push(data);
    jQuery.ajax({
        contentType: "application/json; charset=utf-8",
        dataType: "json",
        url: 'LondonPage.aspx/SaveResults',
        dataType: 'json',
        data: JSON.stringify(data),
        type: 'POST',
        success: function (resp) {

            //request sent and response received.

        },
        error: function () {
     
            save = true;
        }
    });
}


function updateTestFinished() {
    if (save == true)
    {
        saveTextAsFile();
    }
 
    jQuery.ajax({
        contentType: "application/json; charset=utf-8",
        dataType: "json",
        url: 'LondonPage.aspx/SaveFininishedLondon',
        dataType: 'json',
        data: '',
        type: 'POST',
        success: function (resp) {

            //request sent and response received.

        },
        error: function (resp) {

        }
    });
}

$('body').on('click', '#finishIt', function () {
    if (gameSettings.DisplayResults)
    {
        var user = document.getElementById("userId").value;
        var tId = document.getElementById("tId").value;
        window.location.href = "ResultsPage.aspx?userId=" + user + "&tid=" + tId + "&test=2";
    }
    else
        window.location.href = "UserProfile.aspx";
   
});

function saveTextAsFile() {
    var user = document.getElementById("userId").value;
    var tId = document.getElementById("tId").value;
    var text = "UserId: " + user + ".\r\n" +
               "TestId: " +  tId +   ".\r\n" 
    arrData.forEach(function (element) {
        text += JSON.stringify(element) + ".\r\n";
    });
    var textToSave = text; 
    var textToSaveAsBlob = new Blob([textToSave], { type: "text/plain" });
    var textToSaveAsURL = window.URL.createObjectURL(textToSaveAsBlob);
    var fileNameToSaveAs = 'Tower' + (new Date()).toISOString().substring(0, 10);//document.getElementById("inputFileNameToSaveAs").value;

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

function onClickPlay() {
    var synth = speechSynthesis;
  
   // var text = "Видишь эти две доски? Они оба одинаковы.";
    var text = gameSettings.Instructions;
    var language = gameSettings.Language;
    var utterance = new SpeechSynthesisUtterance();
    utterance.volume = 1;
   // utterance.voice = synth.getVoices()[0];
    if (language != "")
    {
        //utterance.lang = 'ru-RU';
    }
   
    utterance.text = text;
    utterance.onend = function () {

           };

 
    synth.speak(utterance);
    
}






