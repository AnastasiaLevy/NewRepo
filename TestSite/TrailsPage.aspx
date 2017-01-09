<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TrailsPage.aspx.cs" Inherits="TestSite.TrailsPage" %>

<html>
<head>
    <link rel="shortcut icon" href="images/favicon.ico"/>
    <link href="cogTest.css" rel="stylesheet" />
    <title>TrailsTest</title>
       <script type="text/javascript" src="js/trailsA.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/raphael/2.2.1/raphael.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/raphael/2.2.1/raphael.min.js"></script>
    <script src="https://code.jquery.com/jquery-3.1.0.js"></script>
  

</head>
<body>
    <div id="testArea">
        <%--   <input id="Button1" type="button" onclick="RunDemoTest()" value="Start" />--%>
        <div id="canvas_container" class="center"></div>
        <div id="displayMessage" class="center">
            <p></p>
        </div>
        <asp:TextBox ID="userId" runat="server" Visible ="false"></asp:TextBox>

        <%--  <audio id="audio1" src="audio/FeedbackIncorrect.mp3" controls="controls" style="display: none;" />--%>
    </div>
</body>
</html>

