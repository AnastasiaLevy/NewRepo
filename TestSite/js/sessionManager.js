var exitSessionTimeout = 60;
var exitSessionTimeoutId;

CheckSession();

function ProlongSession() {
    $.ajax({
        type: "GET",
        url: window.location.protocol + "//" + window.location.host + "/" + "HTTPHandlers/SessionHandler.ashx",
        data: { 'type': 'ProlongSession' },
        contentType: "application/json; charset=utf-8",
        success: RemoveProlongPopUp,
        error: OnFail
    });
}

function RemoveProlongPopUp() {
    clearTimeout(exitSessionTimeoutId);
    $('#sessionPopUp').remove();
    CheckSession();
}

function ExitSession() {
    $.ajax({
        type: "GET",
        url: window.location.protocol + "//" + window.location.host + "/" + "HTTPHandlers/SessionHandler.ashx",
        data: { 'type': 'ExitSession' },
        contentType: "application/json; charset=utf-8",
        success: RedirectToMainPage,
        error: OnFail
    });
}

function RedirectToMainPage(response) {
    window.location = response;
}

function CheckSession() {
    $.ajax({
        type: "GET",
        url: window.location.protocol + "//" + window.location.host + "/" + "HTTPHandlers/SessionHandler.ashx",
        data: { 'type': 'GetSessionTimeout' },
        contentType: "application/json; charset=utf-8",
        success: HandleLeftTime,
        error: OnFail
    });
}
function HandleLeftTime(response) {    
    if (response <= 70) {
        exitSessionTimeout = response;
        if (!$('#sessionPopUp').length) {
            $('body').append(GetSessionPopUp());
            exitSessionTimeoutId=setTimeout(ExitSession, 1000 * exitSessionTimeout);
        }
    }
    else {
        setTimeout(function () {
            CheckSession();
        }, 1000 * (response-60));
    }
}
function OnFail(response) {
    //TODO
}

function GetSessionPopUp() {
    return "<div class='modal fade in' id='sessionPopUp' role='dialog' style='display: block;'>" +
"<div class='modal-dialog modal-sm'>" +
  "<div class='modal-content' style='width:35%;'>" +
    "<div class='modal-header'>" +
      "<h4 class='modal-title'>Session is about to expire</h4>" +
    "</div>" +
    "<div class='modal-body'>" +
      "<p>Your session is about to expire. Stay logged in?</p>" +
    "</div>" +
    "<div class='modal-footer'>" +
      "<button type='button' class='btn btn-success' data-dismiss='modal' onclick='ProlongSession();'>Yes</button>" +
      "<button type='button' class='btn btn-info' data-dismiss='modal' onclick='ExitSession();' style='margin-bottom:20px;'>No</button>" +
    "</div>" +
  "</div>" +
"</div>" +
"</div>" +
"</div>";
}
