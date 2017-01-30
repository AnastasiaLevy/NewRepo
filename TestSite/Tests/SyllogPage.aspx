﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SyllogPage.aspx.cs" Inherits="TestSite.Tests.SyllogPage" %>

<!DOCTYPE html>

<html>
<head runat="server">
    <title></title>
    <script src="../js/syllog/jquery-3.1.1.min.js"></script>
    <script src="../js/syllog/jquery-ui.min.js"></script>
    <script src="../js/syllog/js.js"></script>
    <script src="../js/syllog/turn.min.js"></script>
    <link href="../css/styleSG.css" rel="stylesheet" />
    <link href="../css/flipbookstyle.css" rel="stylesheet" />
    <link href="../css/jquery-ui.min.css" rel="stylesheet" />
</head>

<body>

<div id="start">
    <div id="container" style="pointer-events: none">
        <div id="flipbook">

        </div>
    </div>
</div>

<button id="startButton" class="buttonStyle">START TEST</button>

<div id="answerAndDialog">

    <div id="answerButtons">
        <button value="true" class="buttons buttonStyle trueFalseButtons">TRUE</button>
        <button value="false" class="buttons buttonStyle trueFalseButtons">FALSE</button>
    </div>

    <div id="dialog" style="display: none" title="How sure you are?" class="myDialogClass">
        <label for="radioBtn1">1</label>
        <input type="radio" id="radioBtn1" name="radioBtns" value="1"/>

        <label for="radioBtn2">2</label>
        <input type="radio" id="radioBtn2" name="radioBtns" value="2"/>

        <label for="radioBtn3">3</label>
        <input type="radio" id="radioBtn3" name="radioBtns" value="3" checked/>

        <label for="radioBtn4">4</label>
        <input type="radio" id="radioBtn4" name="radioBtns" value="4"/>

        <label for="radioBtn5">5</label>
        <input type="radio" id="radioBtn5" name="radioBtns" value="5"/>

        <button id="howSureButton" class="buttonStyle">Submit</button>
    </div>
</div>

<div id="scorecard" style="height: 0">

</div>

<button id="refreshButton" class="buttonStyle" style="display: none">Repeat test</button>

</body>>
</html>
