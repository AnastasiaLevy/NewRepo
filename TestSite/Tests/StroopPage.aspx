﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="StroopPage.aspx.cs" Inherits="TestSite.Tests.StroopPage" %>

<!DOCTYPE html>

<html>
    <head>
        <title></title>
    	<meta charset="utf-8">
    	<meta id="viewport" name='viewport' />
    	 <link rel="shortcut icon" href="../images/favicon.ico" />
        <link href="../css/stroopGame.css" rel="stylesheet" />
    </head>

    <body bgcolor="#b0c4de" class="bdCSS">
        <div id="game">
          <canvas id='canvas' width="1000px" height="700px"></canvas>
          <input type="button" id="executeTest" style="z-index:2; position:absolute;" value="Execute Test"/>
          <input type="button" id="fullScreenOn" style="z-index:2; position:absolute;"/>
          <input type="button" id="fullScreenClose" style="z-index:2; position:absolute;"/>
        </div>
        
        <script src="../js/stroop/config.js"></script>
        <script src="../js/stroop/score.js"></script>
        <script src="../js/stroop/game.js"></script>
    </body>
</html>