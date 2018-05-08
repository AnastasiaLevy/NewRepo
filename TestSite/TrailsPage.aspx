<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TrailsPage.aspx.cs" Inherits="TestSite.TrailsPage" 
    culture="auto" uiculture="auto" %>

<html>
<head>
    <meta name="google-site-verification" content="GMj8owmZtkuKU0Fa_4Zg82VbKsQPO8VkZD_pHsRghA4" />
    <link rel="shortcut icon" href="images/favicon.ico" />
    <link href="cogTest.css" rel="stylesheet" />
    <title><asp:Localize meta:resourcekey="pagetitle"  runat="server" ID="Localize48" Text="" /></title>
    <script src="https://code.jquery.com/jquery-3.1.0.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/raphael/2.2.1/raphael.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/raphael/2.2.1/raphael.min.js"></script>
    <script type="text/javascript" src="js/trailsA.js"></script>
    <script src="js/sessionManager.js"></script>
    <script>
        function preventBack() { window.history.forward(); }
        setTimeout("preventBack()", 0);
        window.onunload = function () { null };
    </script>
</head>
<body>
    <div id="testArea" class="withBorder center no-text-select">

        <div id="canvas_container" class="center"></div>
        <div id="displayMessage" class="center">
            <p></p>
        </div>


        <%--  <audio id="audio1" src="audio/FeedbackIncorrect.mp3" controls="controls" style="display: none;" />--%>
    </div>
    <form runat="server">
        <asp:TextBox ID="userId" runat="server" hidden="true"></asp:TextBox>
        <asp:TextBox ID="tId" runat="server" hidden="true"></asp:TextBox>
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
