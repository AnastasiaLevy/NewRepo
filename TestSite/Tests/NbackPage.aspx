<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="NbackPage.aspx.cs" Inherits="TestSite.Tests.NbackPage" %>

<!DOCTYPE html>

<html>
    <head>
        <title></title>
    	<meta charset="utf-8">
    	<meta id="viewport" name='viewport' />
    	<link rel="stylesheet" type="text/css" href="/css/nback.css"/>
        <link rel="shortcut icon" href="../images/favicon.ico" />
    </head>


     <body bgcolor="#b0c4de" class="bdCSS">
        <div id="game">
          <canvas id='canvas' width="1000px" height="700px"></canvas>
          <input type="button" id="executeTest" style="z-index:2; position:absolute;" value="Execute Test"/>
          <input type="button" id="fullScreenOn" style="z-index:2; position:absolute;"/>
          <input type="button" id="fullScreenClose" style="z-index:2; position:absolute;"/>
        </div>
        <script src="../js/nback/config.js"></script>
        <script src="../js/nback/scoreNback.js"></script>
        <script src="../js/nback/nback.js"></script>
         <asp:TextBox ID="userId" runat="server" Visible ="false"></asp:TextBox>
    </body>
</html>
