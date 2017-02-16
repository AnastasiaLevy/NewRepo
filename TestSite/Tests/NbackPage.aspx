<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="NbackPage.aspx.cs" Inherits="TestSite.Tests.NbackPage" %>

<!DOCTYPE html>

<html>
<head>
    <title></title>
    <meta charset="utf-8">
    <meta id="viewport" name='viewport' />
    <link rel="stylesheet" type="text/css" href="/css/nback.css" />
    <link rel="shortcut icon" href="../images/favicon.ico" />
    <script src="../js/jquery.js"></script>
</head>


<body bgcolor="#b0c4de" class="bdCSS">
     <form runat ="server">
        <asp:TextBox ID="user" runat="server" hidden="true"></asp:TextBox>
        <asp:TextBox ID="tId"  runat="server"  hidden="true"></asp:TextBox>
    </form>
    <div id="game">
        <canvas id='canvas' width="1000px" height="700px"></canvas>
        <input type="button" id="executeTest" style="z-index: 2; position: absolute;" value="Execute Test" />
        <input type="button" id="fullScreenOn" style="z-index: 2; position: absolute;" />
        <input type="button" id="fullScreenClose" style="z-index: 2; position: absolute;" />
    </div>
    <script src="../js/nback/config.js"></script>
    <script src="../js/nback/game.js"></script>
    <script src="../js/nback/score.js"></script>
   
</body>
</html>
