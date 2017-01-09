function showImage(currentGame) {

    //game 1==========================================================
    var pos2 = null;
    var pos3 = null;
    var pos4 = null;
    var pos5 = null;
    var pos6 = null;
    var upos = null;
    var upos1 = null;
    var upos2 = null;
    var upos3 = null;
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


    if (currentGame == 1) {
        var one = makeRed(imageplace, pos1x, pos1y - r, r, "green");
        var two = makeGreen(imageplace, pos2x, pos2y - r, r, "blue");
        var tree = makeBlue(imageplace, pos3x, pos3y - r, r, "red");

    }
   else if (currentGame == 2) {
       var redb = makeRed(imageplace, pos2x, pos2y - r, r,   "red");
        var greenb = makeGreen(imageplace, pos1x, pos1y - r, r, "green");
        var blueb = makeBlue(imageplace, pos3x, pos3y - r, r, "blue");

    }
   else if (currentGame == 3) {
        var redb = makeRed(imageplace, pos3x, pos3y - r, r, "red");
        var greenb = makeGreen(imageplace, pos1x, pos1y -r, r, "green");
        var blueb = makeBlue(imageplace, pos1x, pos1y -3 * r, r, "blue");

    }
   else if (currentGame == 4) {
        var redb = makeRed(imageplace, pos2x, pos2y - r, r, "red");
        var greenb = makeGreen(imageplace, pos2x, pos2y - 3 * r, r, "green");
        var blueb = makeBlue(imageplace, pos1x, pos1y - r, r, "blue");

    }
   else if (currentGame == 5) {
        var redb = makeRed(imageplace, pos2x, pos2y - r, r, "red");
        var greenb = makeGreen(imageplace, pos3x, pos3y - r, r, "green");
        var blueb = makeBlue(imageplace, pos2x, pos2y -3 * r, r, "blue");

    }
   else if (currentGame == 6) {
        var redb = makeRed(imageplace, pos2x, pos2y - r, r, "red");
        var greenb = makeGreen(imageplace, pos1x, pos1y -3 * r, r, "green");
        var blueb = makeBlue(imageplace, pos1x, pos1y - r, r, "blue");

    }
   else if (currentGame == 7) {
        var redb = makeRed(imageplace, pos2x, pos2y - r, r, "red");
        var greenb = makeGreen(imageplace, pos3x, pos3y - r, r, "green");
        var blueb = makeBlue(imageplace, pos1x, pos1y - r, r, "blue");

    }
   else if (currentGame == 8) {
        var redb = makeRed(imageplace, pos1x, pos1y - r, r, "red");
        var greenb = makeGreen(imageplace, pos1x, pos1y -3 * r, r, "green");
        var blueb = makeBlue(imageplace, pos3x, pos3y - r, r, "blue");

    }
   else if (currentGame == 9) {
        var redb = makeRed(imageplace, pos1x, pos1y - 5 * r, r, "red");
        var greenb = makeGreen(imageplace, pos1x, pos1y -3 * r, r, "green");
        var blueb = makeBlue(imageplace, pos1x, pos1y - r, r, "blue");

    }
   else if (currentGame == 10) {
        var redb = makeRed(imageplace, pos1x, pos1y -3 * r, r, "red");
        var greenb = makeGreen(imageplace, pos3x, pos3y - r, r, "green");
        var blueb = makeBlue(imageplace, pos1x, pos1y - r, r, "blue");


    }
   else if (currentGame == 11) {
        var redb = makeRed(imageplace, pos3x, pos3y - r, r, "red");
        var greenb = makeGreen(imageplace, pos1x, pos1y -3 * r, r, "green");
        var blueb = makeBlue(imageplace, pos1x, pos1y - r, r, "blue");

    }
   else if (currentGame == 12) {
        var redb = makeRed(imageplace, pos1x, pos1y -3 * r, r, "red");
        var greenb = makeGreen(imageplace, pos1x, pos1y -5 * r, r, "green");
        var blueb = makeBlue(imageplace, pos1x, pos1y - r, r, "blue");

    }
   else if (currentGame == 13) {
        var redb = makeRed(imageplace, pos1x, pos1y -3 * r, r, "red");
        var greenb = makeGreen(imageplace, pos2x, pos2y - r, r, "green");
        var blueb = makeBlue(imageplace, pos1x, pos1y - r, r, "blue");

    }
     //red = makeRed(paper, p1x, p1y - r, r, "red", true);//paperWidth/2  = 500, 100
     //green = makeGreen(paper, p2x, p2y - r, r, "green", true);
     //blue = makeBlue(paper, p3x, p3y - r, r, "blue",true);
    //============================================================
    

    game = currentGame;
    return 0;

}
