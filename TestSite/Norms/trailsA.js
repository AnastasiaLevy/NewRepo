window.onload = function () {
    RunDemoTest();
    //finishIt();

    
};

var timeTrailsA = 0;
function getTime() {
   return  new Date();
}
function RunDemoTest() {
    
    if (typeof paper == 'object')
        paper.remove();
    var message = getMessage("test")
    displayInstructions(message);
    $('#displayMessage').click(function () {
        startTrailTest();
    });

    function startTrailTest() {
      
        var time = getTime();
  
        document.getElementById("displayMessage").hidden = true;
        document.getElementById("canvas_container").hidden = false;
        cleanDiv();


        var paper = new Raphael(document.getElementById('canvas_container'), 1000, 700);
        var selected = "";
        var selectedX = 0;
        var selectedY = 0;
        var prev = "";
        var correct = "";
        var start = paper.text(571, 378, "Start")
        .attr({ "font-size": 20, "font-family": "Arial, Helvetica, sans-serif" });
        var finish = paper.text(313, 290, "Finish")//200, 512//312, 250
        .attr({ "font-size": 20, "font-family": "Arial, Helvetica, sans-serif" });



        var c1 = paper.circle(572, 338, 30);
        var t1 = paper.text(572, 338, "1");


        c1.attr({ fill: 'white', "stroke-width": "2", stroke: '#000000' });
        c1.id = "1";
        c1.glow({
            color: "#D3D3D3",
            width: 20,
            opacity: 0.9,
        });

        c1.node.onclick = function () {
            c1.glow({
                color: "#FFFFFF",
                width: 30,
                opacity: 1,
            });
            if (selected == "") {
                selected = c1.id;
                selectedX = c1.attrs.cx;
                selectedY = c1.attrs.cy
            }
            else {
                var right = "0";
                if (right != selected) {
                    blink(c1);
                    blinkText(t1);
                    if (selectedX === 0 && selectedY === 0) {
                        selectedX = 572;
                        selectedY = 338;
                    }
                    var pathNew = "M " + selectedX + " " + selectedY + " L " + c1.attrs.cx + " " + c1.attrs.cy;

                    blinkLine(pathNew, paper);


                }
            }
        }

        t1.attr({ "font-size": 20, "font-family": "Arial, Helvetica, sans-serif" })
        t1.node.onclick = function () {
            c1.glow({
                color: "#FFFFFF",
                width: 20,
                opacity: 1.0,
            });
            if (selected == "") {
                selected = c1.id;
                selectedX = c1.attrs.cx;
                selectedY = c1.attrs.cy
            }
            else {
                var right = "0";
                if (right != selected) {
                    blink(c1);
                    blinkText(t1);
                    if (selectedX === 0 && selectedY === 0) {
                        selectedX = 572;
                        selectedY = 338;
                    }
                    var pathNew = "M " + selectedX + " " + selectedY + " L " + c1.attrs.cx + " " + c1.attrs.cy;

                    blinkLine(pathNew, paper);

                }
            }
        }

      
      
        //var c2 = new makeMyObj(2, 375, 450, 30, "2", "M 588 343  L 360 450")
        //var c3 = new makeMyObj(3, 637, 500, 30, "3", "M 376 450  L 637 500");
        //var c4 = new makeMyObj(4, 632, 200, 30, "4", "M 638 500  L 632 200");
        //var c5 = new makeMyObj(5, 312, 250, 30, "5", "M 633 200  L 312 250");
        //var c6 = new makeMyObj(6, 475, 300, 30, "6", "M 313 250  L 475 300");
        //var c7 = new makeMyObj(7, 300, 387, 30, "7", "M 476 300  L 300 387");
        //var c8 = new makeMyObj(8, 200, 512, 30, "8", "M 301 387  L 200 512", true);
 
        var c2 = new makeMyObj(2, 632, 200, 30, "2", "M 588 343  L 632, 200");
        var c3 = new makeMyObj(3, 637, 500, 30, "3", "M 633 200  L 637, 500"); //633 200
        var c4 = new makeMyObj(4, 475, 300, 30, "4", "M 638 500  L 475, 300");//638 500
        var c5 = new makeMyObj(5, 300, 387, 30, "5", "M 476 300  L 300 387");
        var c6 = new makeMyObj(6, 200, 512, 30, "6", "M 301 387  L 200 512");
        var c7 = new makeMyObj(7, 375, 450, 30, "7", "M 200, 512  L 375, 450");
        var c8 = new makeMyObj(8, 312, 250, 30, "8", "M 376 450  L 312, 250", true);

        function makeMyObj(id, x, y, rad, text, path, last) {

            var cName = "c" + id;
            var tName = "t" + id;
            var cName = paper.circle(x, y, rad);
            var tName = paper.text(x, y, text);
            

            cName.attr({ fill: 'white', "stroke-width": "2", stroke: '#000000' });
            cName.id = id;
            cName.node.onclick = function () {
              
                var right = id - 1;
                if (right == selected) {

                    if (last) {
                        cName.glow({
                            color: "#D3D3D3",
                            width: 20,
                            opacity: 0.9,
                        });
                        makeLine(path, paper);
                       
                        var message = getMessage("trailsA")
                        setTimeout(function () { displayInstructions(message); }, 1000);
                        $('#displayMessage').click(function () {

                            startTrailA();
                        });

                    }
                    else {

                        selected = cName.id;
                        selectedX = cName.attrs.cx;
                        selectedY = cName.attrs.cy
                        makeLine(path, paper);
                    }

                }
                else {
                    blink(cName);
                    blinkText(tName);
                    
                    if (selectedX === 0 && selectedY === 0)
                    {
                        selectedX = 572;
                        selectedY = 338;
                    }
                    var pathNew= "M " + selectedX + " " + selectedY + " L " + cName.attrs.cx + " " + cName.attrs.cy  ;
                     
                    blinkLine(pathNew, paper);

                }
            }

            tName.attr({ "font-size": 20, "font-family": "Arial, Helvetica, sans-serif" })
            tName.node.onclick = function ()
            {
               
                var right = id - 1;
                if (right == selected) {
                    if (last) {
                        cName.glow({
                            color: "#D3D3D3",
                            width: 20,
                            opacity: 0.9,
                        });
                        makeLine(path, paper);
                     
               
                        var message = getMessage("trailsA")
                        setTimeout(function () { displayInstructions(message); }, 1000);
                       
                        $('#displayMessage').click(function () {
                            startTrailA();

                        });
                    }
                    else
                    {
                        makeLine(path, paper);
                        selected = cName.id;
                        selectedX = cName.attrs.cx;
                        selectedY = cName.attrs.cy
                    }
                }
                else
                {
                    blink(cName);
                    blinkText(tName);
                    if (selectedX === 0 && selectedY === 0) {
                        selectedX = 572;
                        selectedY = 338;
                    }
                    var pathNew = "M " + selectedX + " " + selectedY + " L " + cName.attrs.cx + " " + cName.attrs.cy;

                    blinkLine(pathNew, paper);

                }
            }
        }

    }
};

function displayInstructions(text) {

    document.getElementById("canvas_container").hidden = true;
    document.getElementById("displayMessage").hidden = false;
    document.getElementById("displayMessage").innerHTML = text;

}

function finishIt() {
    $('#testArea').empty();
    $('#testArea').append("<div id = 'finishesTest' class='center finishesTest '><p>The Test Has Finished Running. <br/></p><input type='button' id='finishIt'class='signup-btn' value='View Results'></div>");
    $('#testArea').on('click', '#finishIt', function () {
        var user = document.getElementById("userId").value;
        var tId = document.getElementById("tId").value;
        window.location.href = "ResultsPage.aspx?userId=" + user + "&tid=" + tId + "&test=1";
    });
}

function startTrailTestB() {
    var time = getTime();
    document.getElementById("displayMessage").hidden = true;
    cleanDiv();
    var paper = new Raphael(document.getElementById('canvas_container'), 1000, 700);

    var selected = "";
    var prev = "";
    var correct = "";
    var start = paper.text(431, 420, "Start")
    .attr({ "font-size": 20, "font-family": "Arial, Helvetica, sans-serif" });
    var finish = paper.text(441, 270, "Finish")//440, 230
    .attr({ "font-size": 20, "font-family": "Arial, Helvetica, sans-serif" });



    var c1 = paper.circle(430, 380, 30);
    var t1 = paper.text(430, 380, "1");


    c1.attr({ fill: 'white', "stroke-width": "2", stroke: '#000000' });
    c1.id = "1";
    c1.glow({
        color: "#D3D3D3",
        width: 20,
        opacity: 0.9,
    });

    c1.node.onclick = function () {
        c1.glow({
            color: "#FFFFFF",
            width: 30,
            opacity: 1,
        });
        if (selected == "") {
            selected = c1.id;
            selectedX = c1.attrs.cx;
            selectedY = c1.attrs.cy
        }
        else {
            var right = "0";
            if (right != selected) {
                blink(c1);
                blinkText(t1);
                if (selectedX === 0 && selectedY === 0) {
                    selectedX = 572;
                    selectedY = 338;
                }
                var pathNew = "M " + selectedX + " " + selectedY + " L " + c1.attrs.cx + " " + c1.attrs.cy;

                blinkLine(pathNew, paper);

            }
        }
    }

    t1.attr({ "font-size": 20, "font-family": "Arial, Helvetica, sans-serif" })
    t1.node.onclick = function () {
        c1.glow({
            color: "#FFFFFF",
            width: 20,
            opacity: 1.0,
        });
        if (selected == "") {
            selected = c1.id;
            selectedX = c1.attrs.cx;
            selectedY = c1.attrs.cy
        }
        else {
            var right = "0";
            if (right != selected) {
                blink(c1);
                blinkText(t1);
                if (selectedX === 0 && selectedY === 0) {
                    selectedX = 572;
                    selectedY = 338;
                }
                var pathNew = "M " + selectedX + " " + selectedY + " L " + c1.attrs.cx + " " + c1.attrs.cy;

                blinkLine(pathNew, paper);

            }
        }
    }

    var c2 = new makeMyObj(2, 590, 200, 30, "A", "M 431 380  L 590 200")
    var c3 = new makeMyObj(3, 820, 460, 30, "2", "M 591 200  L 820 460");
    var c4 = new makeMyObj(4, 600, 340, 30, "B", "M 821 460  L 600 340");
    var c5 = new makeMyObj(5, 690, 570, 30, "3", "M 601 340  L 690 570");
    var c6 = new makeMyObj(6, 340, 560, 30, "C", "M 691 570  L 340 560");
    var c7 = new makeMyObj(7, 220, 180, 30, "4", "M 341 560  L 220 180");
    var c8 = new makeMyObj(8, 440, 230, 30, "D", "M 221 180  L 440 230", true);

    function makeMyObj(id, x, y, rad, text, path, last) {

        var cName = "c" + id;
        var tName = "t" + id;
        var cName = paper.circle(x, y, rad);
        var tName = paper.text(x, y, text);

        cName.attr({ fill: 'white', "stroke-width": "2", stroke: '#000000' });
        cName.id = id;
        cName.node.onclick = function () {
            var right = id - 1;
            if (right == selected) {

                if (last) {
                    cName.glow({
                        color: "#D3D3D3",
                        width: 20,
                        opacity: 0.9,
                    });
                 
                    makeLine(path, paper);
                    var time = (new Date() - time)
                    var message = getMessage("trailsB")
                    setTimeout(function () { displayInstructions(message); }, 1000);
                    $('#displayMessage').click(function () {
                        startTrailB();
                    });
                }
                else {

                    selected = cName.id;
                    selectedX = cName.attrs.cx;
                    selectedY = cName.attrs.cy
                    makeLine(path, paper);
                }
            }
            else {
                blink(cName);
                blinkText(tName);
                if (selectedX === 0 && selectedY === 0) {
                    selectedX = 430;//430, 380
                    selectedY = 380;
                }
                var pathNew = "M " + selectedX + " " + selectedY + " L " + cName.attrs.cx + " " + cName.attrs.cy;

                blinkLine(pathNew, paper);

            }
        }

        tName.attr({ "font-size": 20, "font-family": "Arial, Helvetica, sans-serif" })
        tName.node.onclick = function () {
            var right = id - 1;
            if (right == selected) {
                if (last) {

                    cName.glow({
                        color: "#D3D3D3",
                        width: 20,
                        opacity: 0.9,
                    });
                    makeLine(path, paper);
              
                    var message = getMessage("trailsB")
                    setTimeout(function () { displayInstructions(message); }, 1000);
                    $('#displayMessage').click(function () {
                        startTrailB();
                    });

                    

                } else {
                    makeLine(path, paper);
                    selected = cName.id;
                    selectedX = cName.attrs.cx;
                    selectedY = cName.attrs.cy
                }
            }
            else {
                blink(cName);
                blinkText(tName);
                if (selectedX === 0 && selectedY === 0) {
                    selectedX = 430;
                    selectedY = 380;
                }
                var pathNew = "M " + selectedX + " " + selectedY + " L " + cName.attrs.cx + " " + cName.attrs.cy;

                blinkLine(pathNew, paper);

            }
        }
    }


};

function startTrailA() {
    var time = getTime();
    cleanDiv();
    var paper = new Raphael(document.getElementById('canvas_container'), 1000, 700);
    var selected = "";
    var prev = "";
    var correct = "";
    var start = paper.text(571, 378, "Start")
    .attr({ "font-size": 20, "font-family": "Arial, Helvetica, sans-serif" });
    var finish = paper.text(675, 665, "Finish")//675, 625
    .attr({ "font-size": 20, "font-family": "Arial, Helvetica, sans-serif" });



    var c1 = paper.circle(572, 338, 30);
    var t1 = paper.text(572, 338, "1");


    c1.attr({ fill: 'white',"stroke-width": "2", stroke: '#000000' });
    c1.id = "1";
    c1.glow({
        color: "#D3D3D3",
        width: 20,
        opacity: 0.9,
    });

    c1.node.onclick = function () {
        c1.glow({
            color: "#FFFFFF",
            width: 30,
            opacity: 1,
        });
        if (selected == "") {
            selected = c1.id;
            selectedX = c1.attrs.cx;
            selectedY = c1.attrs.cy
        }
        else {
            var right = "0";
            if (right != selected) {
                blink(c1);
                blinkText(t1);
                if (selectedX === 0 && selectedY === 0) {
                    selectedX = 572;
                    selectedY = 338;
                }
                var pathNew = "M " + selectedX + " " + selectedY + " L " + c1.attrs.cx + " " + c1.attrs.cy;

                blinkLine(pathNew, paper);

            }
        }
    }

    t1.attr({ "font-size": 20, "font-family": "Arial, Helvetica, sans-serif" })
    t1.node.onclick = function () {
        c1.glow({
            color: "#FFFFFF",
            width: 20,
            opacity: 1.0,
        });
        if (selected == "") {
            selected = c1.id;
        }
        else {
            var right = "0";
            if (right != selected) {
                blink(c1);
                blinkText(t1);
                if (selectedX === 0 && selectedY === 0) {
                    selectedX = 572;
                    selectedY = 338;
                }
                var pathNew = "M " + selectedX + " " + selectedY + " L " + c1.attrs.cx + " " + c1.attrs.cy;
                blinkLine(pathNew, paper);

            }
        }
    }

    var c2 = new makeMyObj(2, 375, 450, 30, "2",     "M 587 343  L 360 450")
    var c3 = new makeMyObj(3, 637, 500, 30, "3",     "M 376 450  L 637 500");
    var c4 = new makeMyObj(4, 632, 200, 30, "4",     "M 638 500  L 632 200");
    var c5 = new makeMyObj(5, 312, 250, 30, "5",     "M 633 200  L 312 250");
    var c6 = new makeMyObj(6, 475, 300, 30, "6",     "M 313 250  L 475 300");
    var c7 = new makeMyObj(7, 300, 387, 30, "7",     "M 476 300  L 300 387");
    var c8 = new makeMyObj(8, 200, 512, 30, "8",     "M 301 387  L 200 512");
    var c9 = new makeMyObj(9, 250, 612, 30, "9",     "M 201 512  L 250 612");
    var c10 = new makeMyObj(10, 300, 482, 30, "10",  "M 251 612  L 300 482");
    var c11 = new makeMyObj(11, 500, 637, 30, "11",  "M 301 482  L 500 637");
    var c12 = new makeMyObj(12, 75, 662, 30, "12",   "M 501 637  L 75  662");
    var c13 = new makeMyObj(13, 150, 337, 30, "13",  "M 76  662  L 150 337");
    var c14 = new makeMyObj(14, 37, 437, 30, "14",   "M 151 337  L 37 437");
    var c15 = new makeMyObj(15, 50, 75, 30, "15",    "M 38  437  L 50 75,");
    var c16 = new makeMyObj(16, 172, 225, 30, "16",  "M 51  75   L 172 225");
    var c17 = new makeMyObj(17, 412, 62, 30, "17",   "M 173 225  L 412 62");
    var c18 = new makeMyObj(18, 410, 195, 30, "18",  "M 413 62   L 412 207");
    var c19 = new makeMyObj(19, 687, 112, 30, "19",  "M 413 195  L 687 112");
    var c20 = new makeMyObj(20, 535, 110, 30, "20",  "M 688 112  L 535 110");
    var c21 = new makeMyObj(21, 825, 50, 30, "21",   "M 536 110  L 825 50");
    var c22 = new makeMyObj(22, 800, 275, 30, "22",  "M 826 50   L 800 275");
    var c23 = new makeMyObj(23, 830, 650, 30, "23",  "M 801 275  L 830 650");
    var c24 = new makeMyObj(24, 725, 337, 30, "24",  "M 831 650  L 725 337");
    var c25 = new makeMyObj(25, 675, 625, 30, "25",  "M 726 337  L 675 625", true);


    function makeMyObj(id, x, y, rad, text, path, last) {

        var cName = "c" + id;
        var tName = "t" + id;
        var cName = paper.circle(x, y, rad);
        var tName = paper.text(x, y, text);

        cName.attr({ fill: 'white', "stroke-width": "2", stroke: '#000000' });
        cName.id = id;
        cName.node.onclick = function () {
            var right = id - 1;
            if (right == selected) {
                if (last) {
                    cName.glow({
                        color: "#D3D3D3",
                        width: 20,
                        opacity: 0.9,
                    });
                    makeLine(path, paper);
                    timeTrailsA = (new Date() - time);
                    var message = getMessage("testB")
                    setTimeout(function () { displayInstructions(message); }, 2000);
                    $('#displayMessage').click(function () {
                        startTrailTestB();
                    });
                }
                else {

                    selected = cName.id;
                    selectedX = cName.attrs.cx;
                    selectedY = cName.attrs.cy
                    makeLine(path, paper);
                }
            }
            else {
                blink(cName);
                blinkText(tName);
                if (selectedX === 0 && selectedY === 0) {
                    selectedX = 572;
                    selectedY = 338;
                }
                var pathNew = "M " + selectedX + " " + selectedY + " L " + cName.attrs.cx + " " + cName.attrs.cy;

                blinkLine(pathNew, paper);
            }
        }

        tName.attr({ "font-size": 20, "font-family": "Arial, Helvetica, sans-serif" })
        tName.node.onclick = function () {
            var right = id - 1;
            if (right == selected) {
                if (last) {

                    cName.glow({
                        color: "#D3D3D3",
                        width: 20,
                        opacity: 0.9,
                    });
                    makeLine(path, paper);
            
                    timeTrailsA = (new Date() - time);

                    var message = getMessage("testB")
                    setTimeout(function () { displayInstructions(message); }, 1000);
                    $('#displayMessage').click(function () {
                        startTrailTestB();
                    });

                } else {
                    makeLine(path, paper);
                    selectedX =cName.attrs.cx;
                    selectedY = cName.attrs.cy
                    selected = cName.id;
                }
            }
            else {
                blink(cName);
                blinkText(tName);
                if (selectedX === 0 && selectedY === 0) {
                    selectedX = 572;
                    selectedY = 338;
                }
                var pathNew = "M " + selectedX + " " + selectedY + " L " + cName.attrs.cx + " " + cName.attrs.cy;

                blinkLine(pathNew, paper);

            }
        }
    }
};

function startTrailB() {
    var time = getTime();

    document.getElementById("displayMessage").hidden = true;
    cleanDiv()

    var paper = new Raphael(document.getElementById('canvas_container'), 1000, 700);
    var selected = "";
    var prev = "";
    var correct = "";
    var start = paper.text(571, 378, "Start")
    .attr({ "font-size": 20, "font-family": "Arial, Helvetica, sans-serif" });
    var finish = paper.text(31, 70, "Finish")//30, 30
    .attr({ "font-size": 20, "font-family": "Arial, Helvetica, sans-serif" });

    var c1 = paper.circle(572, 338, 30);
    var t1 = paper.text(572, 338, "1");

    c1.attr({ fill: 'white', "stroke-width": "2", stroke: '#000000' });
    c1.id = "1";
    c1.glow({
        color: "#D3D3D3",
        width: 20,
        opacity: 0.9,
    });

    c1.node.onclick = function () {
        c1.glow({
            color: "#FFFFFF",
            width: 30,
            opacity: 1,
        });
        if (selected == "") {
            selected = c1.id;
            selectedX = c1.attrs.cx;
            selectedY = c1.attrs.cy
        }
        else {
            var right = "0";
            if (right != selected) {
                blink(c1);
                blinkText(t1);
                if (selectedX === 0 && selectedY === 0) {
                    selectedX = 572;
                    selectedY = 338;
                }
                var pathNew = "M " + selectedX + " " + selectedY + " L " + c1.attrs.cx + " " + c1.attrs.cy;

                blinkLine(pathNew, paper);
            }
        }
    }

    t1.attr({ "font-size": 20, "font-family": "Arial, Helvetica, sans-serif" })
    t1.node.onclick = function () {
        c1.glow({
            color: "#FFFFFF",
            width: 20,
            opacity: 1.0,
        });
        if (selected == "") {
            selected = c1.id;
            selectedX = c1.attrs.cx;
            selectedY = c1.attrs.cy
        }

        else {
            var right = "0";
            if (right != selected) {
                blink(c1);
                blinkText(t1);
                if (selectedX === 0 && selectedY === 0) {
                    selectedX = 572;
                    selectedY = 338;
                }
                var pathNew = "M " + selectedX + " " + selectedY + " L " + c1.attrs.cx + " " + c1.attrs.cy;

                blinkLine(pathNew, paper);

            }
        }
    }

    var ca = new makeMyObj(2, 600, 500, 30, "A", "M 572 338  L 600 500")
    var c2 = new makeMyObj(3, 270, 540, 30, "2", "M 600 500  L 270 540,");
    var cb = new makeMyObj(4, 330, 150, 30, "B", "M 270 540  L 330 150");
    var c3 = new makeMyObj(5, 410, 240, 30, "3", "M 330 150  L 410 240");
    var cc = new makeMyObj(6, 500, 380, 30, "C", "M 410 240 L 500 380");
    var c4 = new makeMyObj(7, 420, 130, 30, "4", "M 500 380  L 420 130");
    var cd = new makeMyObj(8, 700, 85, 30, "D",  "M 420 130  L 700 85");
    var c5 = new makeMyObj(9, 700, 320, 30, "5", "M 700 85  L 700 320");
    var ce = new makeMyObj(10, 730, 580, 30, "E", "M 700 320  L 730 580");
    var c6 = new makeMyObj(11, 360, 570, 30, "6", "M 730 580  L 360 570");
    var cf = new makeMyObj(12, 170, 630, 30, "F", "M 360 570  L 170 630");
    var c7 = new makeMyObj(13, 270, 300, 30, "7", "M 170 630  L 270 300");
    var cg = new makeMyObj(14, 150, 440, 30, "G", "M 270 300  L 150 440");
    var c8 = new makeMyObj(15, 100, 80, 30, "8", "M 150 440  L 100 80");
    var ch = new makeMyObj(16, 170, 360, 30, "H", "M 100 80  L 170 360");
    var c9 = new makeMyObj(17, 210, 90, 30, "9", "M 170 360  L 210 90");
    var ci = new makeMyObj(18, 540, 60, 30, "I", "M 210 90  L 540 60");
    var c10 = new makeMyObj(19, 850, 50, 30, "10", "M 540 60  L 850 50");
    var cj = new makeMyObj(20, 780, 510, 30, "J", "M 850 50  L 780 510");
    var c11 = new makeMyObj(21, 820, 660, 30, "11", "M 780 510 L 820 660");
    var ck = new makeMyObj(22, 40, 660, 30, "K", "M 820 660 L 40 660");
    var c12 = new makeMyObj(23, 50, 380, 30, "12", "M 40 660  L 50 380");
    var cl = new makeMyObj(24, 105, 555, 30, "L", "M 50 380  L 105 555");
    var c13 = new makeMyObj(25, 30, 30, 30, "13", "M 105 555  L 30 30", true);

    function makeMyObj(id, x, y, rad, text, path, last) {

        var cName = "c" + id;
        var tName = "t" + id;
        var cName = paper.circle(x, y, rad);
        var tName = paper.text(x, y, text);

        cName.attr({ fill: 'white', "stroke-width": "2", stroke: '#000000' });
        cName.id = id;
        cName.node.onclick = function () {
            var right = id - 1;
            if (right == selected) {

                if (last) {

                    cName.glow({
                        color: "#D3D3D3",
                        width: 20,
                        opacity: 0.9,
                    });
                 
                    paper.remove;
               
                    makeLine(path, paper);
                    var finishTime = (new Date() - time);
                    passResultsB(finishTime / 1000);
                    finishIt();
                    //displayInstructions("The Test Has Finished");
                    //goToNextPage();
             
                }
                else {

                    selected = cName.id;
                    selectedX = cName.attrs.cx;
                    selectedY = cName.attrs.cy
                    makeLine(path, paper);
                }
            }
            else {
                blink(cName);
                blinkText(tName);
                if (selectedX === 0 && selectedY === 0) {
                    selectedX = 572;
                    selectedY = 338;
                }
                var pathNew = "M " + selectedX + " " + selectedY + " L " + cName.attrs.cx + " " + cName.attrs.cy;

                blinkLine(pathNew, paper);

            }
        }

        tName.attr({ "font-size": 20, "font-family": "Arial, Helvetica, sans-serif" })
        tName.node.onclick = function () {
            var right = id - 1;
            if (right == selected) {
                if (last) {

                    cName.glow({
                        color: "#D3D3D3",
                        width: 20,
                        opacity: 0.9,
                    });
                    makeLine(path, paper);
                    displayInstructions("The Test Has Finished Running.");
                    var finishTime = (new Date() - time);
                    passResultsB(finishTime / 1000);
                    finishIt();
                } else {
                    makeLine(path, paper);
                    selected = cName.id;
                    selectedX = cName.attrs.cx;
                    selectedY = cName.attrs.cy
                }
            }
            else {
                blink(cName);
                blinkText(tName);
                if (selectedX === 0 && selectedY === 0) {
                    selectedX = 572;
                    selectedY = 338;
                }
                var pathNew = "M " + selectedX + " " + selectedY + " L " + cName.attrs.cx + " " + cName.attrs.cy;

                blinkLine(pathNew, paper);

            }
        }
    }
};


function getMessage(type) {
    var message = ""
    switch (type) {
        case "test":
            message =
                ["You are going to see 8 circles containing",
    "the numbers from 1 to 8. I want you to begin",
    "by clicking the circle containing the number 1",
    "then click the circle containing the number 2.",
    "Continue clicking each circle in order until",
    "you have clicked all the circles from 1 to 8.",
    "  ",
    "Click anywhere on this message to begin."].join("\n");
            break;
        case "trailsA":
            message =
                ["Like the last time you are going to see some",
    "circles containing numbers, only this time there",
    "will be 25 circles containing the numbers from",
    "1 to 25. As you did on the last trial I want you",
    "to begin clicking the circle containing the",
    "number 1. Click on each circle in order until you",
    "reach the circle containing the number 25.",
    "Work as quickly and accurately as possible.",
    "Click anywhere on this message to begin."].join("\n");
            break;
        case "testB":
            message = ["Like the first trial, you are going to see 8",
     "circles. Only this time half of the circles",
"will contain numbers, the numbers from 1 to 4",
"and the other half will contain letters, the",
"letters 'A' to 'D'. I want you to begin by",
"the circle containing the number 1 then click",
"the circle containing the letter 'A'. Next",
"Next click the circle containing the number 2,",
"continue clicking the circles in ascending",
"order alternating between numbers and letters",
"until you have clicked all the circles.",
"Click anywhere on this message to begin."].join("\n");
            break;
        case "trailsB":
            message = ["You are going to see 25 circles. Some of the circles will contain numbers and",
     "the rest will contain letters.",
"I want you to begin by clicking the circle containing the number 1, ",
"then click the circle containing the letter 'A'.",
"Continue clicking the circles in ascending order altering between numbers and letters until you have clicked ",
"on all the circles.",
"Work as quickly and as accurately as possible.",
"Click anywhere on this message to begin."].join("\n");


    }
    return message;
}

function blink(object) {
    object.attr({ stroke: 'red' });
    setTimeout(function () { object.attr({ stroke: '#000000' }); }, 500);
}


function blinkText(object) {
    object.attr({ fill: 'red' });
    setTimeout(function () { object.attr({ fill: '#000000' }); }, 500);

}

function makeLine(string, paper) {
    var line = paper.path(string);
    line.toBack();
}

function blinkLine(string, paper) {
    var line = paper.path(string);
    line.attr("stroke", "red" )
    line.toBack();
    setTimeout(function () { line.remove(); }, 500);

}


function cleanDiv() {
    var ele = $("#canvas_container");
    ele.remove();
    $("#testArea").append("<div id = 'canvas_container' class='center'></div>");

}

function play() {
    //var audio = document.getElementById('audio1');
    //if (audio.paused) {
    //    audio.play();
    //} else {
    //    audio.currentTime = 0
    //}
}

function passResultsA(time) {
    jQuery.ajax({
        contentType: "application/json; charset=utf-8",
        dataType: "json",
        url: 'TrailsPage.aspx/Save_DataA',
        data: JSON.stringify({'time': time}),
        type: 'POST',
        success: function (resp) {
            //request sent and response received.
           
        }
    });
}

function passResultsB(timeB) {
    var timeA = timeTrailsA / 1000;
    var data = {
        'timeA': timeA,
        'timeB': timeB
    }
    jQuery.ajax({
        contentType: "application/json; charset=utf-8",
        dataType: "json",
        url: 'TrailsPage.aspx/Save_DataB',
        dataType: 'json',
        data: JSON.stringify(data),
        type: 'POST',
        success: function (resp) {
       
         
        }
    });
}

//}