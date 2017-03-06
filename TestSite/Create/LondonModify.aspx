<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="LondonModify.aspx.cs" Inherits="TestSite.Create.LondonModify" %>



<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>TowerOfLondon</title>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/raphael/2.2.1/raphael.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/raphael/2.2.1/raphael.min.js"></script>
    <script src="https://code.jquery.com/jquery-3.1.0.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section id="">

        <div class="box box1">
            <div class="col-lg-12">
                <hr />
                <h2 class="intro-text text-center">Tower of London
                       
                            <strong>Set Up</strong>
                </h2>
                <hr />

            </div>
        </div>
    </section>

    <section id="testInstructions">
        <div class="row">
            <div class="box">
                <div class="col-lg-12">
                    <hr />
                    <h2 class="intro-text text-center">Set Up
                            <strong>Instructions:</strong>
                    </h2>
                    <hr />

                </div>
                <p class="min"><strong>Enter Test Instructions:</strong> </p>
                <div class="col-lg-12">

                    <textarea id="instructions" style="width: 100%" rows="5"></textarea>
                </div>
                <asp:CheckBox ID="CheckBox1" runat="server" Text="Use Text-To-Speach" />
                <div class="clearfix"></div>
            </div>

        </div>
    </section>

    <section id="testGameNumber">
        <div class="row">
            <div class="box">
                <div class="col-lg-12">
                    <hr />
                    <h2 class="intro-text text-center">Set Up
                            <strong>Rounds:</strong>
                    </h2>
                    <hr />

                </div>
                <div class="col-lg-4">
                    <asp:Label ID="Label1" runat="server" Text="Number of Practice Rounds:"></asp:Label>
                    <asp:DropDownList ID="ddlPractice" runat="server"></asp:DropDownList>
                </div>

                <div class="col-lg-4">
                    <asp:Label ID="Label2" runat="server" Text="Number of Test Rounds:"></asp:Label>
                    <asp:DropDownList ID="ddlNumberGames" runat="server"></asp:DropDownList>
                </div>

                <div class="col-lg-4">
                    <asp:Label ID="Label3" runat="server" Text="Calculate Results From:"></asp:Label>
                    <asp:DropDownList ID="ddlConuntFromRound" runat="server"></asp:DropDownList>
                </div>
                <div>
                    <input id="testSetUp" type="button" value="button" />

                </div>

                <div class="clearfix"></div>
            </div>
        </div>
    </section>

    <section id="testPositions">
        <div class="row">
            <div class="box">
                <div class="col-lg-12">
                    <hr />
                    <h2 class="intro-text text-center">Set Up
                            <strong>Round Positions:</strong>
                    </h2>
                    <hr />
                </div>

                <div class="col-md-5 col-sm-12 workArea" id="start">
                
                  
                </div>
                <div class='col-md-1'>
                    <input id="colorBlue" class="col-lg-1 btn btn-labeled btn-primary" type="button" />
                    <input id="colorGreen" class=" col-lg-1 btn btn-labeled btn-success" type="button" />
                    <input id="colorRed" class=" col-lg-1 btn btn-labeled btn-danger" type="button" />
                </div>
                <div class="col-md-5  workArea" id="end">
                </div>
                <div id="colors" class="col-lg-1">

<%--                <input id="colorBlue" class="col-lg-1 btn btn-labeled btn-primary" type="button" />
                    <input id="colorGreen" class=" col-lg-1 btn btn-labeled btn-success" type="button" />
                    <input id="colorRed" class=" col-lg-1 btn btn-labeled btn-danger" type="button" />--%>
                </div>
                    <div class='col-md-1'>
                    <input id="colorBlueR" class="col-lg-1 btn btn-labeled btn-primary" type="button" />
                    <input id="colorGreenR" class=" col-lg-1 btn btn-labeled btn-success" type="button" />
                    <input id="colorRedR" class=" col-lg-1 btn btn-labeled btn-danger" type="button" />
                </div>
                  <input id="save" class=" col-lg-1 btn btn-labeled btn-danger" type="button" value ="Save"/>
                <div class="clearfix"></div>
            </div>
        </div>
    </section>
    <script>

    <%--    $('#testSetUp').click(function () {
            var prct = parseInt($('#<%=ddlPractice.ClientID %> option:selected').text());
            var trl = parseInt($('#<%=ddlNumberGames.ClientID %> option:selected').text());
            var total = prct + trl;
            for (i = 0; i < total; i++)
            {

            }
        })--%>
        //=================================================================
        var paperWidth = 300;
        var paperHeight = 370;

        //draw dase with 3 pegs
        var baseColor = '#7A5230';
        var pegColor = '#7A5230';
        var background = "#fff";
        var pegThick = 11;
        var r = 30;

        initField('start');
        initField('end');
        var array = [];
        var arrayR = [];
        function data(id, value) {
            this.id = id
            this.color = value
        }

        $('#save').click(function () {

            alert(JSON.stringify(array));
            alert(JSON.stringify(arrayR));
        });


        function initField(div) {

            var paper = new Raphael(document.getElementById(div), paperWidth, paperHeight);
         
            var p1x = 50;
            var p1y = 350;
            var p2x = 150;
            var p2y = 350;
            var p3x = 250;
            var p3y = 350;
            var p1l1 = 50;
            var p1l2 = 160;
            var p2l1 = 150;
            var p2l2 = 220;
            var p3l1 = 250;
            var p3l2 = 280;



            rect = makeBase(paper, 20, 350, 260, 260, 5, baseColor, 40);
            peg1 = makeLine("peg1", paper, p1x, p1y, p1l1, p1l2, pegColor, pegThick);
            peg2 = makeLine("peg2", paper, p2x, p2y, p2l1, p2l2, pegColor, pegThick);
            peg3 = makeLine("peg3", paper, p3x, p3y, p3l1, p3l2, pegColor, pegThick);



            var color = "white";
            var c1 = makeBall(paper, p1x, p1y - 5 * r, r, color, "p1");//paperWidth/2  = 500, 100
            var c2 = makeBall(paper, p1x, p1y - 3 * r, r, color, "p2");
            var c3 = makeBall(paper, p1x, p1y - r, r, color, "p3");
            var c4 = makeBall(paper, p2x, p2y - 3 * r, r, color, "p4");
            var c5 = makeBall(paper, p2x, p2y - r, r, color, "p5");
            var c6 = makeBall(paper, p3x, p3y - r, r, color, "p6");

             selected = null;
             selectedR = null;

            if (div == "start") {
                ps1 = paper.getById('p1-start');
                ps1.node.onclick = function () {
                    selected = ps1;
                    selectedR = null;
                    array = array.filter(function (el) {
                        return el.id !== 'p1-start';
                    });
                    deselectNode(ps1);
                    ps1.attr({ fill: color, "stroke-width": "3", stroke: 'blue' });



                }
                ps2 = paper.getById('p2-start');
                ps2.node.onclick = function () {
                    selected = ps2;
                    selectedR = null;
                    array = array.filter(function (el) {
                        return el.id !== 'p2-start';
                    });
                    ps2.attr({ fill: color, "stroke-width": "3", stroke: 'blue' });
                    deselectNode(ps2);

                }
                ps3 = paper.getById('p3-start');
                ps3.node.onclick = function () {
                    selected = ps3;
                    selectedR = null;
                    array = array.filter(function (el) {
                        return el.id !== 'p3-start';
                    });
                    ps3.attr({ fill: color, "stroke-width": "3", stroke: 'blue' });
                    deselectNode(ps3);
                }
                ps4 = paper.getById('p4-start');
                ps4.node.onclick = function () {
                    selected = ps4;
                    selectedR = null;
                    array = array.filter(function (el) {
                        return el.id !== 'p4-start';
                    });
                    ps4.attr({ fill: color, "stroke-width": "3", stroke: 'blue' });
                    deselectNode(ps4);

                }
                ps5 = paper.getById('p5-start');
                ps5.node.onclick = function () {
                    selected = ps5;
                    selectedR = null;
                    array = array.filter(function (el) {
                        return el.id !== 'p5-start';
                    });
                    ps5.attr({ fill: color, "stroke-width": "3", stroke: 'blue' });
                    deselectNode(ps5);

                }
                ps6 = paper.getById('p6-start');
                ps6.node.onclick = function () {
                    selected = ps6;
                    selectedR = null;
                    array = array.filter(function (el) {
                        return el.id !== 'p6-start';
                    });
                    ps6.attr({ fill: color, "stroke-width": "3", stroke: 'blue' });
                    deselectNode(ps6);

                }
            }
            else
            {
                pe1 = paper.getById('p1-end');
                pe1.node.onclick = function () {
                    selectedR = pe1;
                    selected = null;
                    arrayR = arrayR.filter(function (el) {
                        return el.id !== 'p1-end';
                    });
                    deselectNode(pe1);
                    pe1.attr({ fill: color, "stroke-width": "3", stroke: 'blue' });



                }
                pe2 = paper.getById('p2-end');
                pe2.node.onclick = function () {
                    selectedR = pe2;
                    selected = null;
                    arrayR = arrayR.filter(function (el) {
                        return el.id !== 'p2-end';
                    });
                    pe2.attr({ fill: color, "stroke-width": "3", stroke: 'blue' });
                    deselectNode(pe2);

                }
                pe3 = paper.getById('p3-end');
                pe3.node.onclick = function () {
                    selectedR = pe3;
                    selected = null;
                    arrayR = arrayR.filter(function (el) {
                        return el.id !== 'p3-end';
                    });
                    pe3.attr({ fill: color, "stroke-width": "3", stroke: 'blue' });
                    deselectNode(pe3);
                }
                pe4 = paper.getById('p4-end');
                pe4.node.onclick = function () {
                    selectedR = pe4;
                    selected = null;
                    arrayR = arrayR.filter(function (el) {
                        return el.id !== 'p4-end';
                    });
                    pe4.attr({ fill: color, "stroke-width": "3", stroke: 'blue' });
                    deselectNode(pe4);

                }
                pe5 = paper.getById('p5-end');
                pe5.node.onclick = function () {
                    selectedR = pe5;
                    selected = null;
                    arrayR = arrayR.filter(function (el) {
                        return el.id !== 'p5-end';
                    });
                    pe5.attr({ fill: color, "stroke-width": "3", stroke: 'blue' });
                    deselectNode(pe5);

                }
                pe6 = paper.getById('p6-end');
                pe6.node.onclick = function () {
                    selectedR = pe6;
                    selected = null;
                    arrayR = arrayR.filter(function (el) {
                        return el.id !== 'p6-end';
                    });
                    pe6.attr({ fill: color, "stroke-width": "3", stroke: 'blue' });
                    deselectNode(pe6);

                }
            }

            $('#colorRed').click(function () {
                if (selected != null) {
                    selected.attr({ fill: "red", "stroke-width": "2", stroke: 'black' });
                    var result = array.filter(function (obj) {
                        return obj.color == "red";
                    });
                    if (result.length != 0) {
                        array = array.filter(function (el) {
                            return el.id !== result[0].id;
                        });
                        p = paper.getById(result[0].id);
                        if (p.id != selected.id)
                        p.attr({ fill: "white", "stroke-width": "2", stroke: 'black' });
                    }
                  
                    array.push(new data (selected.id, "red"));
                }
                if (selectedR != null) {
                    selectedR.attr({ fill: "red", "stroke-width": "2", stroke: 'black' });
                    var result = arrayR.filter(function (obj) {
                        return obj.color == "red";
                    });
                    if (result.length != 0) {
                        arrayR = arrayR.filter(function (el) {
                            return el.id !== result[0].id;
                        });
                        p = paper.getById(result[0].id);
                        if (p.id != selectedR.id)
                            p.attr({ fill: "white", "stroke-width": "2", stroke: 'black' });
                    }

                    arrayR.push(new data(selectedR.id, "red"));
                }


            });
            $('#colorBlue').click(function () {
                if (selected != null) {
                    selected.attr({ fill: "blue", "stroke-width": "2", stroke: 'black' });
                    var result = array.filter(function (obj) {
                        return obj.color == "blue";
                    });
            
                    if (result.length != 0) {
                        array = array.filter(function (el) {
                            return el.id !== result[0].id;
                        });
                        p = paper.getById(result[0].id);
                        if (p.id != selected.id)
                        p.attr({ fill: "white", "stroke-width": "2", stroke: 'black' });

                    }
                    array.push(new data(selected.id, "blue"));
                }
                if (selectedR != null) {
                    selectedR.attr({ fill: "blue", "stroke-width": "2", stroke: 'black' });
                    var result = arrayR.filter(function (obj) {
                        return obj.color == "blue";
                    });

                    if (result.length != 0) {
                        arrayR = arrayR.filter(function (el) {
                            return el.id !== result[0].id;
                        });
                        p = paper.getById(result[0].id);
                        if (p.id != selectedR.id)
                            p.attr({ fill: "white", "stroke-width": "2", stroke: 'black' });

                    }
                    arrayR.push(new data(selectedR.id, "blue"));
                }
            });

            $('#colorGreen').click(function () {
                if (selected != null) {
                    selected.attr({ fill: "green", "stroke-width": "2", stroke: 'black' });
                    var result = array.filter(function (obj) {
                        return obj.color == "green";
                    });

                    if (result.length != 0) {
                        array = array.filter(function (el) {
                            return el.id !== result[0].id;
                        });
                        p = paper.getById(result[0].id);
                        if (p.id != selected.id)
                        p.attr({ fill: "white", "stroke-width": "2", stroke: 'black' });

                    }
                    array.push(new data(selected.id, "green"));
                }
                if (selectedR != null) {
                    selectedR.attr({ fill: "green", "stroke-width": "2", stroke: 'black' });
                    var result = arrayR.filter(function (obj) {
                        return obj.color == "green";
                    });

                    if (result.length != 0) {
                        arrayR = arrayR.filter(function (el) {
                            return el.id !== result[0].id;
                        });
                        p = paper.getById(result[0].id);
                        if (p.id != selectedR.id)
                            p.attr({ fill: "white", "stroke-width": "2", stroke: 'black' });

                    }
                    arrayR.push(new data(selectedR.id, "green"));
                }


            });

            function deselectNode(node) {
                if (ps1 != node) {
                    ps1.attr({ "stroke-width": "2", stroke: 'black' });

                }
                if (ps2 != node)
                {
                    ps2.attr({ "stroke-width": "2", stroke: 'black' });
                }
                    

                if (ps3 != node)
                {
                    ps3.attr({ "stroke-width": "2", stroke: 'black' });
                }
                    
                if (ps4 != node)
                {
                 
                    ps4.attr({ "stroke-width": "2", stroke: 'black' });
                }
                  
                if (ps5 != node)
                {
                  
                    ps5.attr({ "stroke-width": "2", stroke: 'black' });
                }
                    
                if (ps6 != node)
                {
                  
                    ps6.attr({ "stroke-width": "2", stroke: 'black' });
                }
                if (pe1 != node) {
                    pe1.attr({ "stroke-width": "2", stroke: 'black' });

                }
                if (pe2 != node) {
                    pe2.attr({ "stroke-width": "2", stroke: 'black' });
                }


                if (pe3 != node) {
                    pe3.attr({ "stroke-width": "2", stroke: 'black' });
                }

                if (pe4 != node) {

                    pe4.attr({ "stroke-width": "2", stroke: 'black' });
                }

                if (pe5 != node) {

                    pe5.attr({ "stroke-width": "2", stroke: 'black' });
                }

                if (pe6 != node) {

                    pe6.attr({ "stroke-width": "2", stroke: 'black' });
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
                return objName;

            }

            function makeBall(paper, p1, p2, r, color, id) {
                var ball = paper.circle(p1, p2, r);
                ball.attr({ fill: color, "stroke-width": "2", stroke: 'black' });
                if (color != null)
                    ball.id = id + "-" + div;

                ball.node.onclick = function () {

                }

                return ball;
            }
        }
        //function makeGreen(paper, p1, p2, r, color, move) {
        //    var green = paper.circle(p1, p2, r);
        //    green.id = color;
        //    green.attr({ fill: color, "stroke-width": "2", stroke: 'black' });
        //    if (move) {
        //        green.node.onclick = function () {
        //            onclickGreen(green);
        //        }
        //    }
        //    return green;
        //}

        //function makeBlue(paper, p1, p2, r, color, move) {
        //    var blue = paper.circle(p1, p2, r);
        //    blue.id = color;
        //    blue.attr({ fill: color, "stroke-width": "2", stroke: 'black' });
        //    if (move) {
        //        blue.node.onclick = function () {
        //            onclickBlue(blue)

        //        }
        //    }
        //    return blue;
        //}
    </script>
</asp:Content>
