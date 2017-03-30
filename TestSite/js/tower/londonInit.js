//globals: 
var p1 = null;
var p2 = null;
var p3 = null;
var p4 = null;
var p5 = null;
var p6 = null;
var up = null;
var up1 = null;
var up2 = null;
var up3 = null;
//=================================================================
var paperWidth = 330;
var paperHeight = 500;

var baseColor = '#7A5230';
var pegColor = '#7A5230';
var background = '#C1CDC1';
var pegThick = 11;
var r = 30;


var red = null;
var green = null;
var blue = null;

var rect = null;
var peg1 = null;
var peg2 = null;
var peg3 = null;
//draw dase with 3 pegs


function initField(gameNum, gameData) {

    p1 = null;
    p2 = null;
    p3 = null;
    p4 = null;
    p5 = null;
    p6 = null;

    up1 = null;
    up2 = null;
    up3 = null;
    $('#canvas_small').empty();
    var paper = new Raphael(document.getElementById('canvas_small'), paperWidth, paperHeight);

    var p1x = 50;
    var p1y = 350;
    var p2x = 150;
    var p2y = 350;
    var p3x = 250;
    var p3y = 350;

    var p1l1 = 50;
    var p1l2 = 170;
    var p2l1 = 150;
    var p2l2 = 220;
    var p3l1 = 250;
    var p3l2 = 280;

    var clickArea1 = makeLine("a1", paper, p1x, p1y, p1l1, p1l2, background, 50);
    var clickArea2 = makeLine("a2", paper, p2x, p2y, p2l1, p2l2, background, 50);
    var clickArea3 = makeLine("a3", paper, p3x, p3y, p3l1, p3l2, background, 50);

    rect = makeBase(paper, 20, 350, 260, 260, 5, baseColor, 40);
    peg1 = makeLine("peg1", paper, p1x, p1y, p1l1, p1l2, pegColor, pegThick);
    peg2 = makeLine("peg2", paper, p2x, p2y, p2l1, p2l2, pegColor, pegThick);
    peg3 = makeLine("peg3", paper, p3x, p3y, p3l1, p3l2, pegColor, pegThick);

    var clickArea1b = makeLine("b1", paper, p1x, p1y + 40, p1l1, p1l2 + 180, baseColor, 50);
    var clickArea2b = makeLine("b2", paper, p2x, p2y, p2l1, p2l2 + 170, baseColor, 50);
    var clickArea3b = makeLine("b3", paper, p3x, p3y + 40, p3l1, p3l2 + 70, baseColor, 50);

    var p;


    var round = JSON.parse(gameData[gameNum - 1].RoundStart);

    // x: p1x,
    // y: p1y - 5 * r

    //p = getPosition(round.red);
    //red = makeRed(paper, p.x, p.y, r, "red", true);
    //p = getPosition(round.blue);
    //blue = makeBlue(paper, p.x, p.y, r, "blue", true); 

    //p = getPosition(round.green);
    //green = makeGreen(paper, p.x, p.y, r, "green", true);

    red = makeRed(paper, p1x, p1y - r, r, "red", true);
    getPosition(round.red, red);
    blue = makeBlue(paper, p1x, p1y - r, r, "blue", true);
    getPosition(round.blue, blue);
    green = makeGreen(paper, p1x, p1y - r, r, "green", true);
    getPosition(round.green, green);

    setStartPosition(round.red, red);
    setStartPosition(round.blue, blue);
    setStartPosition(round.green, green);





    //red = makeRed(paper, p3x, p3y - r, r, "red", true);//paperWidth/2  = 500, 100
    //green = makeGreen( paper, p1x, p1y - r, r, "green", true);
    //blue = makeBlue(paper, p2x, p2y - r, r, "blue", true);

    //p1 = null;
    //p2 = red;
    //p3 = green;
    //p5 = blue;
    //p4 = null;
    //p6 = null;

    //p1.animate(Raphael.animation({
    //     transform: 't0 ' + (-270)
    // },0));
    // p1.animate(Raphael.animation({
    //     cx: 50,
    //     y: 0
    // }, 0));

    //   p1.animate(Raphael.animation({
    //     transform: 't0 ' + (-60)
    // }, 0).delay(0));



    // red.animate(moveToP2);
    //red = makeRed(paper, p2x, p2y - r, r, "red", true);//paperWidth/2  = 500, 100
    //green = makeGreen(paper, p1x, p1y - r, r, "green", true);
    //blue = makeBlue(paper, p1x, p1y - 3 * r, r ,  "blue", true);
    //============================================================

    //paper, p1x, p1y - 3 * r, r, "red", true);
    //var redb = makeRed(imageplace, pos1x, pos1y - r, r, "red");//posaposerWidth/2  = 500, 100
    //var greenb = makeGreen(imageplace, pos1x, pos1y - 3 * r, r, "green");
    //var blueb = makeBlue(imageplace, pos1x, pos1y - 5 * r, r, "blue");


    //red = makeRed(paper, p1x, p1y - r, r, "red", true);//paperWidth/2  = 500, 100
    //green = makeGreen(paper, p2x, p2y - r, r, "green", true);
    //blue = makeBlue(paper, p3x, p3y - r, r, "blue",true);



    //function getPosition(pos) {
    //    switch (pos) {
    //        case "p1":
    //            return pos = {
    //                x: p1x,
    //                y: p1y - 5 * r
    //            };
    //        case "p2":
    //            {
    //                return pos = {
    //                    x: p1x,
    //                    y: p1y -3* r
    //                }
    //            }
    //        case "p3": 
    //            {
    //                return pos = {
    //                    x: p1x,
    //                    y: p1y - r
    //                }
    //            }
    //        case "p4":
    //            {
    //                return pos = {
    //                    x: p2x,
    //                    y: p2y - 3 * r
    //                }
    //            }
    //        case "p5":
    //            {
    //                return pos = {
    //                    x: p2x,
    //                    y: p2y - r


    //                }

    //            }
    //        case "p6":
    //            {
    //                return pos = {
    //                    x: p3x,
    //                    y: p3y - r
    //                }
    //            }
    //    }
    //}

    function getPosition(pos, obj) {
        switch (pos) {
            case "p1":
                obj.animate(moveFromP3);
                obj.animate(moveToP1);
                break;
            case "p2":

                obj.animate(moveFromP3);
                obj.animate(moveToP2);
                break;

            case "p3":

                obj.animate(moveFromP3);
                obj.animate(moveToP3);
                break;

            case "p4":

                obj.animate(moveFromP3);
                obj.animate(moveU1U2);
                obj.animate(moveToP4);
                break;

            case "p5":

                obj.animate(moveFromP3);
                obj.animate(moveU1U2);
                obj.animate(moveToP5);
                break;



            case "p6":
                obj.animate(moveFromP3);
                obj.animate(moveU1U3);
                obj.animate(moveToP6);
        }
    }
}


//=================================================================================================
function makeBase(paper, m1, m2, l1, l2, round, color, size) {
    var obj = paper.rect(m1, m2, l1, l2, round);
    obj.attr({ fill: color, height: size });
}

function makeLine(num, paper, m1, m2, l1, l2, color, width) {
    var myPath = "M " + m1 + ", " + m2 + " L " + l1 + ", " + l2;
    var objName = paper.path(myPath);
    objName.attr({ stroke: color, "stroke-width": width });
    objName.id = num;

    objName.node.onclick = function () {
        onclickPeg(objName)
    }
    return objName;

}

function makeRed(paper, p1, p2, r, color, move) {
    var red = paper.circle(p1, p2, r);
    red.id = color;
    red.attr({ fill: color, "stroke-width": "2", stroke: 'black' });
    if (move) {
        red.node.onclick = function () {

            onclickRed(red);
        }
    }
    return red;
}

function makeGreen(paper, p1, p2, r, color, move) {
    var green = paper.circle(p1, p2, r);
    green.id = color;
    green.attr({ fill: color, "stroke-width": "2", stroke: 'black' });
    if (move) {
        green.node.onclick = function () {
            onclickGreen(green);
        }
    }
    return green;
}

function makeBlue(paper, p1, p2, r, color, move) {
    var blue = paper.circle(p1, p2, r);
    blue.id = color;
    blue.attr({ fill: color, "stroke-width": "2", stroke: 'black' });
    if (move) {
        blue.node.onclick = function () {
            onclickBlue(blue)

        }
    }
    return blue;
}

function setStartPosition(pos, obj) {
    if (pos == "p1")
        p1 = obj;
    else if (pos == "p2") {
        p2 = obj;
    }
    else if (pos == "p3") {
        p3 = obj;
    }
    else if (pos == "p4") {
        p4 = obj;
    }
    else if (pos == "p5") {
        p5 = obj;
    }
    else if (pos == "p6") {
        p6 = obj;
    }
}