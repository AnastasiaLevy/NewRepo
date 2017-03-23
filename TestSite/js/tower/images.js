var gameDataGlobal;
function showImage(currentGame, gameData) {
    gameDataGlobal = gameData;
    //game 1==========================================================


    //=================================================================

    var imageplace = new Raphael(document.getElementById('image_holder'), paperWidth, paperHeight);
    var pos1x = 50;
    var pos1y = 350;
    var pos2x = 150;
    var pos2y = 350;
    var pos3x = 250;
    var pos3y = 350;
    var pos1l1 = 50;

    var pos1l2 = 170;
    var pos2l1 = 150;
    var pos2l2 = 220;
    var pos3l1 = 250;
    var pos3l2 = 280;
    var rect = makeBase(imageplace, 20, 350, 260, 260, 5, baseColor, 40);
    var poseg1 = makeLine("peg11", imageplace, pos1x, pos1y, pos1l1, pos1l2, pegColor, pegThick);
    var poseg2 = makeLine("peg21", imageplace, pos2x, pos2y, pos2l1, pos2l2, pegColor, pegThick);
    var poseg3 = makeLine("peg31", imageplace, pos3x, pos3y, pos3l1, pos3l2, pegColor, pegThick);
    var p;


    var round = JSON.parse(gameData[currentGame - 1].RoundFinish);



    p = getPosition(round.red);
    var redL = makeRed(imageplace, p.x, p.y, r, "red");
    p = getPosition(round.blue);
    var blueL = makeBlue(imageplace, p.x, p.y, r, "blue");
    p = getPosition(round.green);
    var greenL = makeGreen(imageplace, p.x, p.y, r, "green");
//==========================================================================

    game = currentGame;
    return 0;

    function getPosition(pos) {
        switch (pos) {
            case "p1":
                return pos = {
                    x: pos1x,
                    y: pos1y - 5 * r
                };
            case "p2":
                {
                    return pos = {
                        x: pos1x,
                        y: pos1y - 3 * r
                    }
                }
            case "p3":
                {
                    return pos = {
                        x: pos1x,
                        y: pos1y - r

                       
                    }
                }
            case "p4":
                {
                    return pos = {
                        x: pos2x,
                        y: pos2y - 3 * r
                    }
                }
            case "p5":
                {
                    return pos = {
                        x: pos2x,
                        y: pos2y - r

                     
                    }

                }
            case "p6":
                {
                    return pos = {
                        x: pos3x,
                        y: pos3y - r
                    }
                }
        }
    }
}
