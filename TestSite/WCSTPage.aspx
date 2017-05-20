<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WCSTPage.aspx.cs" Inherits="TestSite.WCSTPage" %>

<!DOCTYPE html>


<html>
<head>
    <meta name="google-site-verification" content="GMj8owmZtkuKU0Fa_4Zg82VbKsQPO8VkZD_pHsRghA4" />
    <link rel="shortcut icon" href="images/favicon.ico" />
    <link href="cogTest.css" rel="stylesheet" />
    <link href="css/wcst.css" rel="stylesheet" />
    <title>WCST</title>
    <script src="https://code.jquery.com/jquery-3.1.0.js"></script>
    <script src="Scripts/underscore-min.js"></script>
    <script src="js/wcst.js"></script>
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
        <div id="wsct">
            <div class="variants"></div>
            <div class="answers"></div>
            <div class="qst"></div>
            <div id="msg"></div>
        </div>
        <script type="text/javascript">
            jQuery(document).ready(function () {
                $('#wsct').wsct({
                    'variants': 'variants',
                    'answers': 'answers',
                    'question': 'qst'
                });
            });
		</script>
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

