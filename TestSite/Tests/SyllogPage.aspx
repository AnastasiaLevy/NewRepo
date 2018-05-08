<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SyllogPage.aspx.cs" Inherits="TestSite.Tests.SyllogPage" %>

<!DOCTYPE html>

<html>
<head>
    <title><asp:Localize meta:resourcekey="pagetitle"  runat="server" ID="Localize48" Text="" /></title>
    <script src="../js/syllog/jquery-3.1.1.min.js"></script>
    <script src="../js/syllog/jquery-ui.min.js"></script>
    <script src="../js/syllog/js.js"></script>
    <script src="../js/syllog/turn.min.js"></script>
    <link href="../css/styleSG.css" rel="stylesheet" />
    <link href="../css/flipbookstyle.css" rel="stylesheet" />
    <link href="../css/jquery-ui.min.css" rel="stylesheet" />
    <link rel="shortcut icon" href="../images/favicon.ico" />
    <meta name="google-site-verification" content="GMj8owmZtkuKU0Fa_4Zg82VbKsQPO8VkZD_pHsRghA4" />
    <script>
        function preventBack() { window.history.forward(); }
        setTimeout("preventBack()", 0);
        window.onunload = function () { null };
    </script>
</head>

<body>
    <form runat="server">
        <asp:TextBox ID="userId" runat="server" hidden="true"></asp:TextBox>
        <asp:TextBox ID="tId" runat="server" hidden="true"></asp:TextBox>
    </form>

    <div id="start">
        <div id="container" style="pointer-events: none">
            <div id="flipbook">
            </div>
        </div>
    </div>

    <button id="startButton" class="buttonStyle"><asp:Localize meta:resourcekey="btnStart"  runat="server" ID="Localize1" Text="" /></button>

    <div id="answerAndDialog">

        <div id="answerButtons">
            <button value="true" class="buttons buttonStyle trueFalseButtons"><asp:Localize meta:resourcekey="btntrue"  runat="server" ID="Localize2" Text="" /></button>
            <button value="false" class="buttons buttonStyle trueFalseButtons"><asp:Localize meta:resourcekey="btnfalse"  runat="server" ID="Localize3" Text="" /></button>
        </div>

        <div id="dialog" style="display: none" title="How sure you are?" class="myDialogClass">
            <label for="radioBtn1">1</label>
            <input type="radio" id="radioBtn1" name="radioBtns" value="1" />

            <label for="radioBtn2">2</label>
            <input type="radio" id="radioBtn2" name="radioBtns" value="2" />

            <label for="radioBtn3">3</label>
            <input type="radio" id="radioBtn3" name="radioBtns" value="3" checked />

            <label for="radioBtn4">4</label>
            <input type="radio" id="radioBtn4" name="radioBtns" value="4" />

            <label for="radioBtn5">5</label>
            <input type="radio" id="radioBtn5" name="radioBtns" value="5" />

            <button id="howSureButton" class="buttonStyle"><asp:Localize meta:resourcekey="btnSubmit"  runat="server" ID="Localize4" Text="" /></button>
        </div>
    </div>

    <div id="scorecard" style="height: 0">
    </div>

    <button id="refreshButton" class="buttonStyle" style="display: none"><asp:Localize meta:resourcekey="btnviewresults"  runat="server" ID="Localize5" Text="" /></button>

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
