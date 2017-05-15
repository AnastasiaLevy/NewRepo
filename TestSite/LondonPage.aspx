<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LondonPage.aspx.cs" Inherits="TestSite.TowerOfLondon" %>

<!DOCTYPE html>

<html>
<head>
    <title>Tower of London</title>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/raphael/2.2.1/raphael.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/raphael/2.2.1/raphael.min.js"></script>
    <script src="https://code.jquery.com/jquery-3.1.0.js"></script>
    <link href="../cogTest.css" rel="stylesheet" />
    <link rel="shortcut icon" href="images/favicon.ico" />
  
</head>
<body>
    <button id="play">Play</button>
    <div id="testArea" class="withBorder center">
        <div id="countdown" class="countdown"></div>
        <div id="finalMessage" class="finalMessage"></div>
            <h3 class="lefth3" id="workArea">Work Space</h3>
        <div id="work" class="left">
        
        </div>
        <div id="canvas_small" class="left">
        </div>
              <h3 class="displayh3" id="goalArea">Goal State</h3>
            <div id="goal" class="display">
          
        </div>
        <div id="image_holder" class="display"></div>
        <div id="displayMessageL" class="">

            <p></p>
        </div>

    </div>
    <form runat="server">
        <asp:TextBox ID="userId" runat="server" hidden="true"></asp:TextBox>
        <asp:TextBox ID="tId" runat="server" hidden="true"></asp:TextBox>
        <asp:TextBox ID="modifiedId" runat="server" hidden="true"></asp:TextBox>
    </form>
</body>

</html>
      <script>
        (function (i, s, o, g, r, a, m) {
            i['GoogleAnalyticsObject'] = r; i[r] = i[r] || function () {
                (i[r].q = i[r].q || []).push(arguments)
            }, i[r].l = 1 * new Date(); a = s.createElement(o),
            m = s.getElementsByTagName(o)[0]; a.async = 1; a.src = g; m.parentNode.insertBefore(a, m)
        })(window, document, 'script', 'https://www.google-analytics.com/analytics.js', 'ga');

        ga('create', 'UA-89149772-1', 'auto');
        ga('send', 'pageview');

</script>
<script>


    var game = 0;
    var canMove = false;
    var nm = 0;
    var nmWr = 0;
    var time;
    var totalTime;
    var initTTime;
    var gameTimer;
    var speed = 200;
    var gameData;
</script>
<script src="js/tower/londonInit.js"></script>
<script src="js/tower/moves.js"></script>
<script src="js/tower/blueBall.js"></script>
<script src="js/tower/greenBall.js"></script>
<script src="js/tower/redBall.js"></script>
<script src="js/tower/pegs.js"></script>
<script src="js/tower/images.js"></script>
<script src="js/tower/gameCode.js"></script>
<script type="text/javascript"></script>

<script>
    var playEle = document.querySelector('#play');
    playEle.addEventListener('click', onClickPlay);
    $('#play').hide();
<%--    var test = 1;//$('<%=modifiedId.ClientID%>').value
    var data = {
        modifiedId: test
    }--%>
    jQuery.ajax({
        contentType: "application/json; charset=utf-8",
        url: 'LondonPage.aspx/GetLondonValues',
        dataType: 'json',
      
        type: 'GET',
        success: function (resp) {

            //alert(JSON.parse(resp));
            gameData = resp.d.LondonMoves;
            gameSettings = resp.d.GeneralSettings;
            $('#workArea').val(gameSettings.WorkTag);
            $('#goalArea').val(gameSettings.EndTag);
            startGame(1);

        },
        error: function (resp) {
            alert("Could not load the correct test. Please try again later.");
        }
    });


</script>





