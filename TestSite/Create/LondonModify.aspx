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
        <div class="row ">
            <div class="box">
                <div class="col-lg-12">
                    <hr />
                    <h2 class="intro-text text-center">Set Up
                            <strong>Test:</strong>
                    </h2>
                    <hr />
                </div>

                <p class="min"><strong>Enter Test Instructions:</strong> </p>
                <div class="col-lg-12 font-larger">
                    <textarea id="instructions" style="width: 100%" rows="5"></textarea>
                </div>
                <div class="col-lg-4 font-larger">
                    <asp:CheckBox ID="cbTextSpeech" runat="server" Text="Use Text-To-Speech" />
                </div>
                <div class="col-lg-4 font-larger">
                    <asp:Label ID="Label1" runat="server" Text="Number of Practice Rounds:"></asp:Label>
                    <asp:DropDownList ID="ddlPractice" runat="server"></asp:DropDownList>
                </div>
                <div class="col-lg-4 font-larger">
                    <asp:Label ID="Label2" runat="server" Text="Number of Test Rounds:"></asp:Label>
                    <asp:DropDownList ID="ddlNumberGames" runat="server"></asp:DropDownList>
                </div>

                <div class="col-lg-4 font-larger">
                    <asp:Label ID="Label3" runat="server" Text="Calculate Results From:"></asp:Label>
                    <asp:DropDownList ID="ddlConuntFromRound" runat="server"></asp:DropDownList>
                </div>
                <%--      <div class="col-lg-4 font-larger">
                    <asp:Label ID="Label4" runat="server" Text="Bead size:"></asp:Label>
                    <asp:TextBox ID="radius" runat="server"></asp:TextBox>
                </div>--%>
                <div class="col-lg-4 font-larger">
                    <asp:Label ID="Label5" runat="server" Text="Time Out After (sec):"></asp:Label>
                    <asp:TextBox ID="timeOutAfter" runat="server"></asp:TextBox>
                </div>
                <div class="col-lg-4 font-larger">
                    <asp:Label ID="Label6" runat="server" Text="Max Moves Allowed"></asp:Label>
                    <asp:TextBox ID="maxMovesLimit" runat="server"></asp:TextBox>
                </div>
                <div class=" col-lg-4 font-larger ">
                    <asp:CheckBox ID="showFeedback" runat="server" Text="Show Feedback" />
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
                <div class="alert alert-danger" id="MovesError">
                </div>
                <div class="col-lg-12">
                    <h3 id="roundNumber"></h3>
                </div>

                <div class="col-md-4 col-sm-12 workArea" id="start">
                </div>
                <div class='col-md-1'>
                    <input id="colorBlue" class="col-lg-1 btn btn-labeled btn-primary" type="button" />
                    <input id="colorGreen" class=" col-lg-1 btn btn-labeled btn-success" type="button" />
                    <input id="colorRed" class=" col-lg-1 btn btn-labeled btn-danger" type="button" />
                </div>
                <div class="col-md-4  workArea" id="end">
                </div>
                <div class='col-md-2 col-sm-offset-1'>
                    <p>Number of Moves:</p>
                    <input type="text" id="numberOfMoves" />

                </div>
                <div class="col-lg-6">

                    <input id="save" class="btn  btn-success btn-xs" type="button" value="Save Round" />
                    <input id="goBack" class="btn btn-success btn-xs" type="button" value="Edit Previous" />
                    <input id="makeAnother" class="btn btn-success btn-xs" type="button" value="Set Up Next" />

                </div>
                <div class="col-lg-4 col-sm-offset-2">
                    <input class=" btn btn-info btn-xs" id="runTest" type="button" value="View" />
                    <input class=" btn btn-danger btn-xs" id="saveTest" type="button" value="Save" />
                </div>
                <div class="col-lg-12" id="pageNums">
                    
                </div>
            </div>
            <div class="clearfix"></div>
        </div>
    </section>
    <script>




        //=================================================================
        superObj = {
            arrStart: "",
            arrFinish: "",
            numMoves: 0
        }
        superArr = [];
        pageArrayStart = [];
        pageArrayEnd = [];
        var paperWidth = 300;
        var paperHeight = 370;
        roundCount = 1;

        //draw dase with 3 pegs
        var baseColor = '#7A5230';
        var pegColor = '#7A5230';
        var background = "#fff";
        var pegThick = 11;
        var r = 30;
        round = 0;
        prct = parseInt($('#<%=ddlPractice.ClientID %> option:selected').text());
        trl = parseInt($('#<%=ddlNumberGames.ClientID %> option:selected').text());


        var array = [];
        var arrayR = [];
        function data(id, value) {
            this.id = id
            this.color = value
        }
        $('#saveTest').click(function () {
            sendData = {
                testName: 'test',
                instructions: $('#instructions').val(),
                txtToSpeech: $('#<%=cbTextSpeech.ClientID %>').is(':checked'),
                prctRounds: $('#<%=ddlPractice.ClientID %> option:selected').text(),
                testRounds: $('#<%=ddlNumberGames.ClientID %> option:selected').text(),
                calcResFrom: $('#<%=ddlConuntFromRound.ClientID %> option:selected').text(),
                timeOut: $('#<%=timeOutAfter.ClientID%>').val(),
                maxMoves: $('#<%=maxMovesLimit.ClientID%>').val(),
                showFeedback: $('#<%=showFeedback.ClientID %>').is(':checked'),
                movesData: JSON.stringify(superArr)
            }
            alert(JSON.stringify(sendData))
            jQuery.ajax({
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                url: 'LondonModify.aspx/SaveResults',
                dataType: 'json',
                data: JSON.stringify(sendData),
                type: 'POST',
                success: function (resp) {

                    //request sent and response received.

                }
            });
        });
        $('#save').hide();
        $('#goBack').hide();
        $('#MovesError').hide()



        $('#save').click(function() {
            var error = "";

            if ($('#numberOfMoves').val().length < 1) {
                error = "! You need you set Number of moves for this round.<br />"
            }
            if (array.length != 3) {
                error += "! You need you set all 3 beads for Start positions. <br />"

            }
            if (arrayR.length != 3) {
                error += "! You need you set all 3 beads for End positions.<br />"

            }
            //var error = ""; //To Test
            if (error.length > 0) {
                $('#MovesError').show();
                $('#MovesError').html(error);
            }

            else {
                $('#MovesError').hide();
                superObj = {
                    arrStart: (JSON.stringify(array)),
                    arrFinish: (JSON.stringify(arrayR)),
                    numMoves : $('#numberOfMoves').val()
                }
                //superObj.arrStart = (JSON.stringify(array));
                //superObj.arrFinish = (JSON.stringify(arrayR));
                //superObj.numMoves = $('#numberOfMoves').val();
                //if (superArr.indexOf(superObj) == -1) {
                //    superArr.push(superObj);
                //}
                //else 
                //{
                //    superArr.pop();
                //    superArr.push(superObj);
                //}
                if (round != 0)
                    superArr[round] = superObj;
                else
                superArr[roundCount - 1] = superObj;
                var b = $('<input/>').attr({
                    type: "button",
                    id:  roundCount - 1,
                    value: roundCount - 1,
                    
                });

                function goBackClick() {
                    alert("Hi");
                }

                //$('#pageNums').append('<input type="button" value=' + (roundCount - 1) + ' onclick="goBackClick()"/>');
                $('#pageNums').append('<input type="button" value=' + (roundCount - 1) + ' class="booo"/>');
            }

            $('.booo').bind("click", function () {
                round = this.value;

                makeLabel(round);
                initFieldStart();
                initFieldEnd();
                superObj = superArr[round];
             
                var arr = superObj.arrStart.replace(/[\[\]']+/g, '').replace(/[\{\}']+/g, '').split(',');
                var arrR = superObj.arrFinish.replace(/[\[\]']+/g, '').replace(/[\{\}']+/g, '').split(',');
                var num = superObj.numMoves;

                $('#numberOfMoves').text(num);
                for (i = 0; i < arr.length; i++)
                {
                    if (i%2 == 0)
                    {
                        id = arr[i].substr(arr[i].indexOf('p'), 8);
                        p = paper.getById(id);
                    }
                    else {
                        color = arr[i].substr(8, arr[i].lastIndexOf('"')).replace(/['"']+/g, '');
                        p.attr({ fill: color, "stroke-width": "2", stroke: 'black' });
                        array.push(new data(id, color));
                    }
                }

                for (i = 0; i < arr.length; i++) {
                    if (i % 2 == 0) {
                        id = arrR[i].substr(arrR[i].indexOf('p'), 6);
                        p = paperR.getById(id);
                    }
                    else {
                        color = arr[i].substr(8, arr[i].lastIndexOf('"')).replace(/['"']+/g, '');
                        p.attr({ fill: color, "stroke-width": "2", stroke: 'black' });
                        arrayR.push(new data(id, color));
                    }
                }
                round = 0;

            });
          
        });

       

        $('#makeAnother').click(function () {
            makeLabel(roundCount);

            initFieldStart();
            initFieldEnd();

            $('#save').show();
            if (roundCount > 1)
                $('#goBack').show();
            if (roundCount == prct + trl)
                $('#makeAnother').hide();
            roundCount++;
        });


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

                array.push(new data(selected.id, "red"));
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
                    p = paperR.getById(result[0].id);
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
                    p = paperR.getById(result[0].id);
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
                    p = paperR.getById(result[0].id);
                    if (p.id != selectedR.id)
                        p.attr({ fill: "white", "stroke-width": "2", stroke: 'black' });

                }
                arrayR.push(new data(selectedR.id, "green"));
            }
        });

        function makeLabel(round) {
      
            if (roundCount <= prct) {
                $('#roundNumber').text('Set Up Practice Trial #' + roundCount);
            }
            else
                $('#roundNumber').text('Set Up Test Trial #' + (roundCount - prct));
        }

        function initFieldStart() {
            $('#start').empty();
            paper = new Raphael(document.getElementById('start'), paperWidth, paperHeight);

            var div = 'start';
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

            ps1 = null;
            ps2 = null;
            ps3 = null;
            ps4 = null;
            ps5 = null;
            ps6 = null;

            var color = "white";
            ps1 = makeBall(paper, p1x, p1y - 5 * r, r, color, "p1");//paperWidth/2  = 500, 100
            ps2 = makeBall(paper, p1x, p1y - 3 * r, r, color, "p2");
            ps3 = makeBall(paper, p1x, p1y - r, r, color, "p3");
            ps4 = makeBall(paper, p2x, p2y - 3 * r, r, color, "p4");
            ps5 = makeBall(paper, p2x, p2y - r, r, color, "p5");
            ps6 = makeBall(paper, p3x, p3y - r, r, color, "p6");

            selected = null;
        
            array = [];



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


            function deselectNode(node) {
                if (ps1 != node) {
                    ps1.attr({ "stroke-width": "2", stroke: 'black' });

                }
                if (ps2 != node) {
                    ps2.attr({ "stroke-width": "2", stroke: 'black' });
                }


                if (ps3 != node) {
                    ps3.attr({ "stroke-width": "2", stroke: 'black' });
                }

                if (ps4 != node) {

                    ps4.attr({ "stroke-width": "2", stroke: 'black' });
                }

                if (ps5 != node) {

                    ps5.attr({ "stroke-width": "2", stroke: 'black' });
                }

                if (ps6 != node) {

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

                return ball;
            }
        }

        function initFieldEnd() {
            $('#end').empty();
            paperR = new Raphael(document.getElementById('end'), paperWidth, paperHeight);

            var div = 'end';
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



            rect = makeBase(paperR, 20, 350, 260, 260, 5, baseColor, 40);
            peg1 = makeLine("peg1", paperR, p1x, p1y, p1l1, p1l2, pegColor, pegThick);
            peg2 = makeLine("peg2", paperR, p2x, p2y, p2l1, p2l2, pegColor, pegThick);
            peg3 = makeLine("peg3", paperR, p3x, p3y, p3l1, p3l2, pegColor, pegThick);



            var color = "white";
            var c1 = makeBall(paperR, p1x, p1y - 5 * r, r, color, "p1");//paperWidth/2  = 500, 100
            var c2 = makeBall(paperR, p1x, p1y - 3 * r, r, color, "p2");
            var c3 = makeBall(paperR, p1x, p1y - r, r, color, "p3");
            var c4 = makeBall(paperR, p2x, p2y - 3 * r, r, color, "p4");
            var c5 = makeBall(paperR, p2x, p2y - r, r, color, "p5");
            var c6 = makeBall(paperR, p3x, p3y - r, r, color, "p6");

            selected = null;
            selectedR = null;
            arrayR = [];
            pe1 = paperR.getById('p1-end');
            pe1.node.onclick = function () {
                selectedR = pe1;
                selected = null;
                arrayR = arrayR.filter(function (el) {
                    return el.id !== 'p1-end';
                });
                deselectNode(pe1);
                pe1.attr({ fill: color, "stroke-width": "3", stroke: 'blue' });

            }
            pe2 = paperR.getById('p2-end');
            pe2.node.onclick = function () {
                selectedR = pe2;
                selected = null;
                arrayR = arrayR.filter(function (el) {
                    return el.id !== 'p2-end';
                });
                pe2.attr({ fill: color, "stroke-width": "3", stroke: 'blue' });
                deselectNode(pe2);

            }
            pe3 = paperR.getById('p3-end');
            pe3.node.onclick = function () {
                selectedR = pe3;
                selected = null;
                arrayR = arrayR.filter(function (el) {
                    return el.id !== 'p3-end';
                });
                pe3.attr({ fill: color, "stroke-width": "3", stroke: 'blue' });
                deselectNode(pe3);
            }
            pe4 = paperR.getById('p4-end');
            pe4.node.onclick = function () {
                selectedR = pe4;
                selected = null;
                arrayR = arrayR.filter(function (el) {
                    return el.id !== 'p4-end';
                });
                pe4.attr({ fill: color, "stroke-width": "3", stroke: 'blue' });
                deselectNode(pe4);

            }
            pe5 = paperR.getById('p5-end');
            pe5.node.onclick = function () {
                selectedR = pe5;
                selected = null;
                arrayR = arrayR.filter(function (el) {
                    return el.id !== 'p5-end';
                });
                pe5.attr({ fill: color, "stroke-width": "3", stroke: 'blue' });
                deselectNode(pe5);

            }
            pe6 = paperR.getById('p6-end');
            pe6.node.onclick = function () {
                selectedR = pe6;
                selected = null;
                arrayR = arrayR.filter(function (el) {
                    return el.id !== 'p6-end';
                });
                pe6.attr({ fill: color, "stroke-width": "3", stroke: 'blue' });
                deselectNode(pe6);

            }



            function deselectNode(node) {
                if (ps1 != node) {
                    ps1.attr({ "stroke-width": "2", stroke: 'black' });

                }
                if (ps2 != node) {
                    ps2.attr({ "stroke-width": "2", stroke: 'black' });
                }


                if (ps3 != node) {
                    ps3.attr({ "stroke-width": "2", stroke: 'black' });
                }

                if (ps4 != node) {

                    ps4.attr({ "stroke-width": "2", stroke: 'black' });
                }

                if (ps5 != node) {

                    ps5.attr({ "stroke-width": "2", stroke: 'black' });
                }

                if (ps6 != node) {

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
