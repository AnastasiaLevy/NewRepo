<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MemoryCardsPage.aspx.cs" Inherits="TestSite.Tests.MemoryCardsPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../cogTest.css" rel="stylesheet" />
    <style>
        html, body {
            margin: 0px;
            padding: 0px;
            width: 100%;
            height: 100%;
            -webkit-text-size-adjust: none;
        }

        canvas {
            padding-left: 0;
            padding-right: 0;
            margin-left: auto;
            margin-right: auto;
            display: block;
            z-index: 1;
            position: absolute;
        }

        #executeTest {
            visibility: hidden;
            background-color: #607334;
            position: absolute;
            font-family: Arial;
            font-size: 20px;
            font-weight: bold;
            color: #FFF;
            border: none;
            width: 150px;
            height: 50px;
        }

            #executeTest:focus {
                outline: none;
            }

        #fullScreenOn {
            visibility: hidden;
            background: url("/memorycards/images/fullscreenon.png") no-repeat bottom;
            position: absolute;
            border: none;
            width: 30px;
            height: 30px;
        }

            #fullScreenOn:focus {
                outline: none;
            }

        #fullScreenClose {
            visibility: hidden;
            background: url("/memorycards/images/fullscreenoff.png") no-repeat bottom;
            position: absolute;
            border: none;
            width: 30px;
            height: 30px;
        }

            #fullScreenClose:focus {
                outline: none;
            }

        #game {
            margin: 0px auto;
        }

        .bdCSS {
            background-color: #b0c4de;
        }
    </style>
    <script src="../js/memoryCards/cardsimages.js"></script>
    <script src="../js/memoryCards/game.js"></script>
    <script src="../js/memoryCards/hitsscheme.js"></script>
    <script src="../js/memoryCards/score.js"></script>
</head>




<body bgcolor="#b0c4de" class="bdCSS">
    <div id="game">
        <canvas id='canvas' width="1000px" height="700px"></canvas>
        <input type="button" id="executeTest" style="z-index: 2; position: absolute;" value="Execute Test" />
        <input type="button" id="fullScreenOn" style="z-index: 2; position: absolute;" />
        <input type="button" id="fullScreenClose" style="z-index: 2; position: absolute;" />
    </div>
    <script src="config.js"></script>
    <script src="js/score.js"></script>
    <script src="js/hitsscheme.js"></script>
    <script src="js/cardsimages.js"></script>
    <script src="js/game.js"></script>
</body>

</html>
