<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="StroopPage.aspx.cs" Inherits="TestSite.Tests.StroopPage" %>

<!DOCTYPE html>

<html>
    <head>
        <title></title>
    	<meta charset="utf-8">
    	<meta id="viewport" name='viewport' />
    	 <link rel="shortcut icon" href="../images/favicon.ico" />
        <link href="../css/stroopGame.css" rel="stylesheet" />
        <meta name="google-site-verification" content="GMj8owmZtkuKU0Fa_4Zg82VbKsQPO8VkZD_pHsRghA4" />
    </head>

    <body bgcolor="#b0c4de" class="bdCSS">
           <form runat="server">
          <asp:TextBox ID="userId" runat="server"  hidden="true"></asp:TextBox>
        <asp:TextBox ID="tId" runat="server" hidden="true"></asp:TextBox>
    </form>
        <div id="game">
          <canvas id='canvas' width="1000px" height="700px"></canvas>
          <input type="button" id="executeTest" style="z-index:2; position:absolute;" value="Execute Test"/>
          <input type="button" id="testFinished" class="center" style="z-index:2; position:absolute;" value="Test Finished" />
          <input type="button" id="fullScreenOn" style="z-index:2; position:absolute;"/>
          <input type="button" id="fullScreenClose" style="z-index:2; position:absolute;"/>
        </div>
        
        <script src="../js/stroop/config.js"></script>
        <script src="../js/stroop/score.js"></script>
        <script src="../js/stroop/game.js"></script>
        <script src="../js/jquery.js"></script>
    </body>

</html>
    <footer>
            <script src="https://use.fontawesome.com/0138464303.js"></script>
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
    </footer>
