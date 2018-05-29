<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="NbackPage.aspx.cs" Inherits="TestSite.Tests.NbackPage" 
    culture="auto" uiculture="auto" %>

<!DOCTYPE html>

<html>
<head>
    <title><asp:Localize meta:resourcekey="pagetitle"  runat="server" ID="Localize48" Text="" /></title>
    <meta charset="utf-8">
    <meta id="viewport" name='viewport' />
    <meta name="google-site-verification" content="GMj8owmZtkuKU0Fa_4Zg82VbKsQPO8VkZD_pHsRghA4" />
    <link rel="stylesheet" type="text/css" href="/css/nback.css" />
    <link rel="shortcut icon" href="../images/favicon.ico" />
    <link href="../cogTest.css" rel="stylesheet" />
    <script src="../js/jquery.js"></script>
    <script>
        function preventBack() { window.history.forward(); }
        setTimeout("preventBack()", 0);
        window.onunload = function () { null };
    </script>
</head>


<body bgcolor="#b0c4de" class="bdCSS">
    <form runat="server">
        <asp:TextBox ID="user" runat="server" hidden="true"></asp:TextBox>
        <asp:TextBox ID="tId" runat="server" hidden="true"></asp:TextBox>
    </form>
    <div id="game">
        <canvas id='canvas' width="1000px" height="700px"></canvas>
        <input type="button" id="executeTest" style="z-index: 2; position: absolute;" value="" meta:resourcekey="btn_execute" runat="server"/>
        <input type="button" id="fullScreenOn" style="z-index: 2; position: absolute; cursor: pointer;" />
        <input type="button" id="fullScreenClose" style="z-index: 2; position: absolute; cursor: pointer;" />
    </div>
    <script src="../js/nback/config.js"></script>
    <script src="../js/nback/game.js"></script>
    <script src="../js/nback/score.js"></script>

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
