
function startGame(gameNum) {
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

    canMove = true;
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
    window.clearTimeout(gameTimer);
    var timeMlsec = gameSettings.TimeOut * 1000
    numMoves = JSON.parse(gameData[game - 1].NumberOfMoves);
    gameTimer = null;
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

    canMove = false;
    var text = gameSettings.TextOverTime;
    var finalMessage = document.getElementById("finalMessage");
    finalMessage.style.display = '';
    finalMessage.innerHTML = text;

    setTimeout(hideFinalMessage, 2000);
    if (game == lastMove) {
        updateTestFinished();
        displayTestFinishedMessage();
    }

    passResultsForGame(game, timeMlsec, timeMlsec, gameSettings.MaxMoves, nmWr, true, false, numMoves);
    setTimeout(function () {
        startCountDownTimer(game + 1);
    }, 2000);
}

function displayFinalMessage20move(game) {
    canMove = false;
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
    }, 2000);

}

function displayFinalMessage(needMoves, madeMoves) {
    canMove = false;
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

    finalMessage.innerHTML = text;
    setTimeout(hideFinalMessage, 2000);
}

function displayInstructions(text) {
    canMove = false;
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
    canMove = false;
    var timeleft = parseInt(gameSettings.CountDownFrom);
    if (gameSettings.ShowFeedback == "True")
        timeleft += 1;
    var text = gameSettings.CountDownText;

    if (text.indexOf("[cd]") != -1) {
        var res = text.split("[cd]");
        text = res[0] + "<span id='countdowntimer'>" + (timeleft) + "</span>" + res[1];
    }


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
            //canMove = true;
            //gameStarted = true;
            cleanDivs();
            field.style.display = 'none';
            startGame(game)
        }

    }, 1000);
}

function finishGame(needMoves) {
    canMove = false;
    lastMove = parseInt(gameSettings.PrctRounds) + parseInt(gameSettings.TestRounds)
    window.clearTimeout(gameTimer);
    over = new Date() - time;
    gameFinished = true;

    passResultsForGame(game, initTTime, over, nm, nmWr, false, false, needMoves);

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
        }, 2000);
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
    canMove = false;
    finishPos = JSON.parse(gameData[game - 1].RoundFinish);
    numMoves = JSON.parse(gameData[game - 1].NumberOfMoves);

    if (nm == gameSettings.MaxMoves) {

        displayFinalMessage20move(game);
        return;
    }



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
    else {
        setTimeout(function () { canMove = true }, 300);
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
    if (save == true) {
        saveTextAsFile();
    }
    localStorage.setItem("tId", document.getElementById("tId").value);
    localStorage.setItem("finished", true);

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
    //if (gameSettings.DisplayResults)
    //{
    //    var user = document.getElementById("userId").value;
    //    var tId = document.getElementById("tId").value;
    //    window.location.href = "ResultsPage.aspx?userId=" + user + "&tid=" + tId + "&test=2";
    //}
    //else
    //    window.location.href = "UserProfile.aspx";
    goToPage();

});

function goToPage() {
    if (gameSettings.DisplayResults) {
        var user = document.getElementById("userId").value;
        var tId = document.getElementById("tId").value;
        window.location.href = "ResultsPage.aspx?userId=" + user + "&tid=" + tId + "&test=2";
    }
    else
        window.location.href = "UserProfile.aspx";
}

function saveTextAsFile() {
    var user = document.getElementById("userId").value;
    var tId = document.getElementById("tId").value;
    var text = "UserId: " + user + ".\r\n" +
        "TestId: " + tId + ".\r\n"
    arrData.forEach(function (element) {
        text += JSON.stringify(element) + ".\r\n";
    });
    var textToSave = text;
    var textToSaveAsBlob = new Blob([textToSave], { type: "text/plain" });
    var textToSaveAsURL = window.URL.createObjectURL(textToSaveAsBlob);
    var fileNameToSaveAs = 'Tower' + tId + (new Date()).toISOString().substring(0, 10);//document.getElementById("inputFileNameToSaveAs").value;

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

    speechSynthesis.cancel();

    // var text = "Видишь эти две доски? Они оба одинаковы.";
    var text = gameSettings.Instructions;


    sentences = text.split(".")
    for (i = 0; i < sentences.length; i++) {
        sentence = sentences[i];

        var synth = speechSynthesis;
        var language = gameSettings.Language;
        var utterance = new SpeechSynthesisUtterance();
        utterance.volume = 1;
        // audio = new SpeechSynthesisUtterance(sentence)


        utterance.text = sentence;
        // window.speechSynthesis.speak(audio)
        synth.speak(utterance);
    }



    // utterance.voice = synth.getVoices()[0];
    if (language != "") {
        //utterance.lang = 'ru-RU';
    }

    //utterance.text = text;
    //utterance.onend = function () {
    //    synth.speak = false;
    //       };




}






