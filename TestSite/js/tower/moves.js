
//from bottom to top
var moveFromP6 = Raphael.animation({
    transform: 't0 ' + (-270)
}, 700)

var moveFromP5 = Raphael.animation({
    transform: 't0 ' + (-270)
}, 700)

var moveFromP4 = Raphael.animation({
    transform: 't0 ' + (-270)
}, 700)

var moveFromP3 = Raphael.animation({
    transform: 't0 ' + (-270)
}, 700)

var moveFromP2 = Raphael.animation({
    transform: 't0 ' + (-270)
}, 700)

var moveFromP1 = Raphael.animation({
    transform: 't0 ' + (-270)
}, 700)


//from top to bottom
//     : peg 1
var moveToP1 = Raphael.animation({
    transform: 't0 ' + (0 - 4 * r)
}, 700)
var moveToP2 = Raphael.animation({
    transform: 't0 ' + (0 - 2 * r)
}, 700)
var moveToP3 = Raphael.animation({
    transform: 't0 ' + (0)
}, 700)

//    : peg 2
var moveToP5 = Raphael.animation({
    transform: 't0 ' + (0)
}, 700)
var moveToP4 = Raphael.animation({
    transform: 't0 ' + (0 - 2 * r)
}, 700)
//      : peg 1
var moveToP6 = Raphael.animation({
    transform: 't0 ' + (0)
}, 700)


//from up1 to up3 (all)
var moveU1U2 = Raphael.animation({
    cx: 150, //150
    y: 0
}, 700);

var moveU1U3 = Raphael.animation({
    cx: 250,
    y: 0
}, 700);

var moveU2U1 = Raphael.animation({
    cx: 50,
    y: 0
}, 700);

var moveU2U3 = Raphael.animation({
    cx: 250,
    y: 0
}, 700);

var moveU3U1 = Raphael.animation({
    cx: 50,
    y: 0
}, 700);

var moveU3U2 = Raphael.animation({
    cx: 150,
    y: 0
}, 700)
