<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="LondonModify.aspx.cs" Inherits="TestSite.Create.LondonModify" 
    culture="auto" uiculture="auto" %>



<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title><asp:Localize meta:resourcekey="pagetitle"  runat="server" ID="Localize48" Text="" /></title>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/raphael/2.2.1/raphael.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/raphael/2.2.1/raphael.min.js"></script>
    <script src="https://code.jquery.com/jquery-3.1.0.js"></script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section id="">

        <div class="box box1">
            <div class="col-lg-12">
                <hr />
                <h2 class="intro-text text-center"><asp:Localize meta:resourcekey="content1_title"  runat="server" ID="Localize1" Text="" /> 
                            <strong><asp:Localize meta:resourcekey="content1_strong"  runat="server" ID="Localize2" Text="" /></strong>
                </h2>
                <hr />
                <div>
                         <asp:Button ID="btnManual" runat="server" Text=""  class="btn btn-labeled btn-info"  onClick="btnManual_Click" meta:resourcekey="content1_btnManual"/>
                                 <asp:Button ID="btnVideo" runat="server" Text=""  class="btn btn-labeled btn-info"  onClick="btnVideo_Click" meta:resourcekey="content1_btnVideo"/>

                </div>
            </div>
        </div>
    </section>
  
    

    <section id="testInstructions">
        
            <div class="box">
                <div class="col-lg-12">
                    <hr />
                    <h2 class="intro-text text-center"><asp:Localize meta:resourcekey="testInstructions_title"  runat="server" ID="Localize3" Text="" />
                            <strong><asp:Localize meta:resourcekey="testInstructions_strong"  runat="server" ID="Localize4" Text="" /></strong>
                    </h2>
                    <hr />
                </div>
                <div class="col-lg-12 font-larger">
                    <p class="min"><strong><asp:Localize meta:resourcekey="testInstructions_paragraph1"  runat="server" ID="Localize5" Text="" /></strong> </p>
                    <input type="text" id="testName" style="width: 100%" runat="server" />
                </div>

                <div class="col-lg-12 font-larger">
                    <p class="min"><strong><asp:Localize meta:resourcekey="testInstructions_paragraph2"  runat="server" ID="Localize6" Text="" /></strong> </p>
                    <textarea id="instructions" style="width: 100%" rows="5" runat="server"></textarea>
                </div>
                <div class="col-lg-12 font-larger">
                    <p class="min"><strong><asp:Localize meta:resourcekey="testInstructions_paragraph3"  runat="server" ID="Localize7" Text="" /></strong> </p>
                    <textarea id="feedback" style="width: 100%" rows="5" runat="server"></textarea>
                </div>
                <div class="col-lg-12 font-larger">
                    <p class="min"><strong><asp:Localize meta:resourcekey="testInstructions_paragraph4"  runat="server" ID="Localize8" Text="" /></strong> </p>
                    <textarea id="overMoves" style="width: 100%" rows="5" runat="server"></textarea>
                </div>

                <div class="col-lg-12 font-larger">
                    <p class="min"><strong><asp:Localize meta:resourcekey="testInstructions_paragraph5"  runat="server" ID="Localize9" Text="" /></strong> </p>
                    <textarea id="overTime" style="width: 100%" rows="5" runat="server"></textarea>
                </div>

                <div class="col-lg-7 font-larger">
                    <p class="min"><strong><asp:Localize meta:resourcekey="testInstructions_paragraph6"  runat="server" ID="Localize10" Text="" /></strong> </p>
                    <textarea id="instructionsFinish" style="width: 80%" rows="5" runat="server"></textarea>
                </div>

                <div class="col-lg-3 font-larger">
                    <p class="min"><strong><asp:Localize meta:resourcekey="testInstructions_paragraph7"  runat="server" ID="Localize11" Text="" /></strong> </p>
                    <input type="text" id="txtButton" style="width: 100%" runat="server" />

                    <p class="min"><strong><asp:Localize meta:resourcekey="testInstructions_paragraph8"  runat="server" ID="Localize12" Text="" /></strong> </p>
                    <input type="text" id="workArea" style="width: 100%" runat="server" />

                    <p class="min"><strong><asp:Localize meta:resourcekey="testInstructions_paragraph9"  runat="server" ID="Localize13" Text="" /></strong> </p>
                    <input type="text" id="endArea" style="width: 100%" runat="server" />
                </div>


                <div class="clearfix"></div>
            </div>
        
    </section>

    <section id="params">
        
            <div class="box font-larger">
                <div class="col-lg-12">
                    <hr />
                    <h2 class="intro-text text-center"><asp:Localize meta:resourcekey="params_title"  runat="server" ID="Localize14" Text="" />
                            <strong><asp:Localize meta:resourcekey="params_strong"  runat="server" ID="Localize15" Text="" /></strong>
                    </h2>
                    <hr />
                </div>
                <div class="myForm">
                    <div class="col-lg-4 font-larger">
                        <asp:Label ID="Label1" runat="server" Text="" meta:resourcekey="params_label1"></asp:Label>
                        <asp:DropDownList ID="ddlPractice" runat="server"></asp:DropDownList>
                    </div>

                    <div class="col-lg-4 font-larger">
                        <asp:Label ID="Label2" runat="server" Text="" meta:resourcekey="params_label2"></asp:Label>
                        <asp:DropDownList ID="ddlNumberGames" runat="server"></asp:DropDownList>
                    </div>

                    <div class="col-lg-4 font-larger">
                        <asp:Label ID="Label3" runat="server" Text="" meta:resourcekey="params_label3"></asp:Label>
                        <asp:DropDownList ID="ddlConuntFromRound" runat="server"></asp:DropDownList>

                    </div>
                </div>
                <div class="col-lg-4 font-larger">
                    <asp:Label ID="Label5" runat="server" Text="" meta:resourcekey="params_label4"></asp:Label>
                    <asp:TextBox ID="timeOutAfter" runat="server"></asp:TextBox>
                </div>
                <div class="col-lg-4 font-larger">
                    <asp:Label ID="Label6" runat="server" Text="" meta:resourcekey="params_label5"></asp:Label>
                    <asp:TextBox ID="maxMovesLimit" runat="server"></asp:TextBox>
                </div>
                <div class="col-lg-4 font-larger">
                    <asp:Label ID="Label9" runat="server" Text="" meta:resourcekey="params_label6"></asp:Label>
                    <asp:TextBox ID="countDown" runat="server"></asp:TextBox>
                </div>
                <div class="col-lg-4 font-larger">
                    <asp:Label ID="Label10" runat="server" Text="" meta:resourcekey="params_label7"></asp:Label>
                    <asp:TextBox ID="countDownText" runat="server"></asp:TextBox>
                </div>

                <div class=" col-lg-4 font-larger ">
                    <asp:Label ID="Label7" runat="server" Text="" meta:resourcekey="params_label8"></asp:Label>
                    <asp:CheckBox ID="showFeedback" runat="server" />
                </div>
                <div class=" col-lg-4 font-larger ">
                    <asp:Label ID="Label8" runat="server" Text="" meta:resourcekey="params_label9"></asp:Label>
                    <asp:CheckBox ID="displayResultPage" runat="server" />
                </div>
                <div class="col-lg-4 font-larger">
                    <asp:Label ID="Label4" runat="server" Text="" meta:resourcekey="params_label10"></asp:Label>
                    <asp:CheckBox ID="cbTextSpeech" runat="server" Text="" />
                    <select id="select" runat="server"> </select>
                </div>


            </div>
        
    </section>

    <section id="testPositions">
        
            <div class="box">
                <div class="col-lg-12">
                    <hr />
                    <h2 class="intro-text text-center"><asp:Localize meta:resourcekey="testPositions_title"  runat="server" ID="Localize16" Text="" />
                            <strong><asp:Localize meta:resourcekey="testPositions_strong"  runat="server" ID="Localize17" Text="" /></strong>
                    </h2>
                    <hr />
                </div>
                <div class="alert alert-danger" id="MovesError"></div>

                <div class="alert alert-success" id="success">
                </div>
                <input id="SetupUpdate" class="btn  btn-success btn-xs" type="button" value="Set Moves" />


                <div class="col-lg-12">
                    <%--//<h3 id="roundNumber"></h3>--%>


                    <div class="input-group input-group-lg " id="title">
                        <span class="input-group-addon" id="roundNumber"></span>
                        <input type="text" class="form-control" id="roundValue" style="width: 50px" />
                    </div>

                </div>
                <%--  <input id="roundValue" type="text"  />--%>



                <div class="col-md-4 col-sm-12 workArea  font-larger" id="start">
                    <asp:Localize meta:resourcekey="testPositions_start"  runat="server" ID="Localize18" Text="" />
                </div>
                <div class='col-md-1'>
                    <input id="colorBlue" class="col-lg-1 btn btn-labeled btn-primary" type="button" />
                    <input id="colorGreen" class=" col-lg-1 btn btn-labeled btn-success" type="button" />
                    <input id="colorRed" class=" col-lg-1 btn btn-labeled btn-danger" type="button" />

                </div>

                <div class="col-md-4  workArea  font-larger" id="end">
                    <asp:Localize meta:resourcekey="testPositions_end"  runat="server" ID="Localize19" Text="" />
                </div>

                <div class='col-md-2 col-sm-offset-1'>
                    <p><asp:Localize meta:resourcekey="testPositions_numOfMoves"  runat="server" ID="Localize20" Text="" /></p>
                    <input type="text" id="numberOfMoves" style="width: 50px" />


                </div>
                <div class="col-lg-6">

                    <input id="save" class="btn  btn-success btn-xs" type="button" value="Save" meta:resourcekey="testPositions_save"/>
                    <input id="delete" class="btn  btn-success btn-xs" type="button" value="Delete" meta:resourcekey="testPositions_delete"/>
                    <input id="makeAnother" class="btn btn-success btn-xs" type="button" value="Create" meta:resourcekey="testPositions_makeAnother"/>

                </div>
                <div class="col-lg-4 col-sm-offset-2">
                    <input class=" btn btn-info btn-xs" id="viewTest" type="button" value="View Test" meta:resourcekey="testPositions_viewTest"/>
                    <input class=" btn btn-danger btn-xs" id="saveTest" type="button" value="Save Test" meta:resourcekey="testPositions_saveTest"/>

                </div>
                <div class="col-lg-12" id="pageNums">
                </div>
            </div>
            <div class="clearfix"></div>
        
    </section>

    <textarea id="movesText" rows="5" runat="server"></textarea>
    <script>
        //=================================================================
        $(document).ready(function () {
            $('#viewTest').hide();
            $('#<%=movesText.ClientID%>').hide();
            var value = $('#<%=movesText.ClientID%>').val();
            if (value.length > 0) {
                $('#SetupUpdate').hide();
                setUpdateValues(value);
            }


            $('.edit').bind("click", function () {
                $("#success").hide();
                checkForChange();
                update = true;
                round = this.value;
                test(superArr, round);
                $('#save').show();
            });

        });

        window.speechSynthesis.onvoiceschanged = function () {
            var voiceSelect = $("#<%=select.ClientID %>");
            var synth = speechSynthesis;
            var voices = synth.getVoices();

            for (i = 0; i < voices.length; i++) {
                var option = document.createElement('option');
                option.textContent = voices[i].name + ' (' + voices[i].lang + ')';
                option.setAttribute('data-lang', voices[i].lang);
                option.setAttribute('data-name', voices[i].name);
                voiceSelect.append(option);
            }
        };

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
        update = false;
        idItems = [];
        currPrct = 0;
        currTrl = 0;
        //draw dase with 3 pegs
        var baseColor = '#7A5230';
        var pegColor = '#7A5230';
        var background = "#fff";
        var pegThick = 11;
        var r = 30;
        round = 0;
        what = "";
        prct = parseInt($('#<%=ddlPractice.ClientID %> option:selected').text());
        trl = parseInt($('#<%=ddlNumberGames.ClientID %> option:selected').text());
        $('#makeAnother').hide();
        $("#success").hide();
        // $('#title').hide();

        var array = [];
        var arrayR = [];

        function data(id, value) {
            this.id = id
            this.color = value
        }
        $("#<%=ddlPractice.ClientID %>").change(function () {
            checkForChange("prct")
            //if (!update);
            //what = "prct";

        });
        $("#<%=ddlNumberGames.ClientID %>").change(function () {
            checkForChange("trl")
            //if (!update);
            //what = "trl";

        });

        hideNumGrp();
        $('#delete').hide();
        function hideNumGrp() {
            $('#roundNumber').hide();
            $('#roundValue').hide();
        }

        function showNumGrp() {
            $('#roundNumber').show();
            $('#roundValue').show();
        }

        function checkForChange(str) {
            if (idItems.length <= 0)
                return;
            updateValues();
            var compare = 0;
            if (str != null)
                what = str

            if (update == true) {
                compare = idItems.length - 1;
            }
            else compare = roundCount - 1;

            if ((prct + trl) > compare) {

                $('#makeAnother').show();

                showNumGrp();
                $('#delete').hide();

            }
            else {

                $('#makeAnother').hide();
                if ((prct + trl) < compare) $('#delete').show();
                else $('#delete').hide()
            }

        }

        function updateValues() {
            prct = parseInt($('#<%=ddlPractice.ClientID %> option:selected').text());
            trl = parseInt($('#<%=ddlNumberGames.ClientID %> option:selected').text());
        }


        function setUpdateValues(value) {
            moves = JSON.parse(value);

            update = true;
            round = roundCount = moves.length + 1;

            //checkForChange();
            updateValues();
            jQuery.each(moves, function (index, value) {
                superObj = {
                    arrStart: moves[index].RoundStart,
                    arrFinish: moves[index].RoundFinish,
                    numMoves: moves[index].NumberOfMoves
                }
                superArr[moves[index].GameRound] = superObj; //{"red": "p2", "green":"p3", "blue": "p5"}

                if ((moves[index].GameRound) <= prct) {
                    currPrct++;
                    $('#pageNums').append('<input type="button" value=' + (moves[index].GameRound) + ' id=' + (moves[index].GameRound) + ' class="edit prct"/>');
                }
                else {
                    $('#pageNums').append('<input type="button" value=' + (moves[index].GameRound) + ' id=' + (moves[index].GameRound) + ' class="edit trl"/>');
                    currTrl++;
                }
                idItems[(moves[index].GameRound)] = (moves[index].GameRound);
            });



        }

        $('#SetupUpdate').click(function () {
            $('#SetupUpdate').hide();
            $('#delete').hide();

            var value = $('#<%=movesText.ClientID%>').val();
            if (value.length == 0) {
                what = "";
                updateValues();
                $('#MovesError').hide();
                if (prct == 0 && trl == 0) {
                    var error = "<%= GetLocalResourceObject("MovesErrorMeassage")%>";
                    $('#MovesError').show();
                    $('#MovesError').html(error);
                    $('#SetupUpdate').show();
                    return;
                }
                update = true;
                $('#save').show();
                $('#makeAnother').hide();
                //return;
                moves = [];
                for (i = 1; i <= prct; i++) {
                    moves[i - 1] = i;
                    idItems[i] = i;
                    $('#pageNums').append('<input type="button" value=' + i + ' id=' + i + ' class="edit prct"/>');
                }
                for (i = (prct + 1); i <= (trl + prct); i++) {

                    $('#pageNums').append('<input type="button" value=' + i + ' id=' + i + ' class="edit trl"/>');
                    moves[i - 1] = i;
                    idItems[i] = i;
                }
                round = roundCount = moves.length;
            }
            else {
                setUpdateValues(value);

            }

            $('.edit').bind("click", function () {
                $("#success").hide();
                checkForChange();
                update = true;
                round = this.value;
                test(superArr, round);
                $('#save').show();
            });

        });

        $('#saveTest').click(function () {
            <%--    var voiceSelect = $("#select option:selected");
            var voiceSelect = $("#<%=select.ClientID%>").val();
            alert(voiceSelect);--%>

            error = "";

            error = checkIfEmpty($('#<%=testName.ClientID%>').val(), "<%= GetLocalResourceObject("error_testname")%>", error)
            error = checkIfEmpty($('#<%=instructions.ClientID%>').val(), "<%= GetLocalResourceObject("error_instructions")%>", error)
            error = checkIfEmpty($('#<%=overMoves.ClientID%>').val(), "<%= GetLocalResourceObject("error_overMoves")%>", error)
            error = checkIfEmpty($('#<%=overTime.ClientID%>').val(), "<%= GetLocalResourceObject("error_overTime")%>", error)
            error = checkIfEmpty($('#<%=txtButton.ClientID%>').val(), "<%= GetLocalResourceObject("error_txtButton")%>", error)
            error = checkIfEmpty($('#<%=feedback.ClientID%>').val(), "<%= GetLocalResourceObject("error_feedback")%>", error)
            error = checkIfEmpty($('#<%=instructionsFinish.ClientID%>').val(), "<%= GetLocalResourceObject("error_instructionsFinish")%>", error)
            error = checkIfEmpty($('#<%=ddlPractice.ClientID %> option:selected').text(), "<%= GetLocalResourceObject("error_ddlPractice")%>", error)
            error = checkIfEmpty($('#<%=ddlNumberGames.ClientID %> option:selected').text(), "<%= GetLocalResourceObject("error_ddlNumberGames")%>", error)
            error = checkIfEmpty($('#<%=ddlConuntFromRound.ClientID %> option:selected').text(), "<%= GetLocalResourceObject("error_ddlConuntFromRound")%>", error)
            error = checkIfEmpty($('#<%=countDown.ClientID%>').val(), "<%= GetLocalResourceObject("error_countDown")%>", error)
            error = checkIfEmpty($('#<%=timeOutAfter.ClientID%>').val(), "<%= GetLocalResourceObject("error_timeOutAfter")%>", error)
            error = checkIfEmpty($('#<%=maxMovesLimit.ClientID%>').val(), "<%= GetLocalResourceObject("error_maxMovesLimit")%>", error)
            error = checkIfEmpty($("#<%=workArea.ClientID%>").val(), "<%= GetLocalResourceObject("error_workArea")%>", error)
            error = checkIfEmpty($("#<%=endArea.ClientID%>").val(), "<%= GetLocalResourceObject("error_endArea")%>", error)
            error = checkIfEmpty($("#<%=countDownText.ClientID%>").val(), "<%= GetLocalResourceObject("error_countDownText")%>", error)
            if (superArr.length == 0)
                error += "<%= GetLocalResourceObject("error_notAnyMoves")%>";
            //checkIfEmpty(string, dataName, error)
            //checkIfEmpty(string, dataName, error)
            //checkIfEmpty(string, dataName, error)
            //checkIfEmpty(string, dataName, error)

            if (error != "") {
                $('#MovesError').show();
                $('#MovesError').html(error);
            }
            else {
                $('#MovesError').html("");
                $('#MovesError').hide();


                sendData = {
                    testName: $('#<%=testName.ClientID%>').val(),
                instructions: $('#<%=instructions.ClientID%>').val(),
                overMoves: $('#<%=overMoves.ClientID%>').val(),
                overTime: $('#<%=overTime.ClientID%>').val(),
                txtButton: $('#<%=txtButton.ClientID%>').val(),
                txtFeedback: $('#<%=feedback.ClientID%>').val(),
                instructionsFinish: $('#<%=instructionsFinish.ClientID%>').val(),
                txtToSpeech: $('#<%=cbTextSpeech.ClientID %>').is(':checked'),
                displayResultPage: $('#<%=displayResultPage.ClientID %>').is(':checked'),
                prctRounds: $('#<%=ddlPractice.ClientID %> option:selected').text(),
                testRounds: $('#<%=ddlNumberGames.ClientID %> option:selected').text(),
                calcResFrom: $('#<%=ddlConuntFromRound.ClientID %> option:selected').text(),
                countDownFrom: $('#<%=countDown.ClientID%>').val(),
                timeOut: $('#<%=timeOutAfter.ClientID%>').val(),
                maxMoves: $('#<%=maxMovesLimit.ClientID%>').val(),
                showFeedback: $('#<%=showFeedback.ClientID %>').is(':checked'),
                movesData: JSON.stringify(superArr),
                language: $("#<%=select.ClientID%>").val(),
                workTag: $("#<%=workArea.ClientID%>").val(),
                goalTag: $("#<%=endArea.ClientID%>").val(),
                countDownText: $("#<%=countDownText.ClientID%>").val()

                }
                //alert(JSON.stringify(sendData))
                jQuery.ajax({
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    url: 'LondonModify.aspx/SaveResults',
                    dataType: 'json',
                    data: JSON.stringify(sendData),
                    type: 'POST',
                    success: function (resp) {

                        //request sent and response received.
                        var message = "<%= GetLocalResourceObject("successTest")%>"
                        $("#success").show();
                        $("#success").html(message);
                    },
                    error: function () {
                        alert("<%= GetLocalResourceObject("errorsaving")%>")
                    }
                });
            }
        });

        function checkIfEmpty(string, dataName, error) {
            if (string == "") {
                error += "<%= GetLocalResourceObject("Pleasefillout")%>" + " " + dataName + "\n\r";
            }
            return error;
        }

        $('#save').hide();
        $('#MovesError').hide()

        $('#save').click(function () {
            error = "";

            if ($('#numberOfMoves').val().length < 1) {
                error = "<%= GetLocalResourceObject("error_numberOfMoves")%>"
            }
            if (array.length != 3) {
                error += "<%= GetLocalResourceObject("error_array")%>"

            }
            if (arrayR.length != 3) {
                error += "<%= GetLocalResourceObject("error_arrayR")%>"

            }
            //var error = ""; //To Test
            if (error.length > 0) {
                $('#makeAnother').hide();
                $('#MovesError').show();
                $('#MovesError').html(error);
            }

            else {
                $('#MovesError').hide();
                // checkForChange();
                superObj = {
                    arrStart: (JSON.stringify(array)),
                    arrFinish: (JSON.stringify(arrayR)),
                    numMoves: $('#numberOfMoves').val()
                }
                var num; //Set Num;
                if (what != "") {
                    if (what == "prct") {
                        num = parseInt($('#roundValue').val());
                    }
                    else if (what == "trl") {
                        num = parseInt($('#roundValue').val()) + prct;
                    }

                    idItems.splice(num, 0, num);
                    superArr.splice(num, 0, superObj);
                    updateEditRow(idItems);
                }

                else {
                    if (round != 0 || update == true) {

                        num = round;
                    }
                    else {
                        //superArr[roundCount - 1] = superObj;  //TODO: for test
                        num = roundCount - 1;

                    }
                    superArr[num] = superObj;


                    if (!$('#' + num + '').length) {
                        if (num <= prct) {
                            $('#pageNums').append('<input type="button" value=' + num + ' id=' + num + ' class="edit prct"/>');
                            currPrct++;

                        }

                        else {
                            $('#pageNums').append('<input type="button" value=' + num + ' id=' + num + ' class="edit trl"/>');
                            currTrl++;
                        }

                        idItems.push(num);
                        roundCount++;
                    }
                }

                $("#success").show();
                var message = "<%= GetLocalResourceObject("successsaving")%>"
                $("#success").html(message);

                checkForChange();
            }


            $('.edit').bind("click", function () {
                $("#success").hide();
                round = this.value;
                test(superArr, round);
            });


        });

        $('#delete').click(function () {
            if (round > 0) {
                updateValues();
                superArr.splice(round, 1);
                idItems.splice(round, 1);

                //superArr.splice(num, 0, superObj);

                updateEditRow(idItems);

                roundCount -= 1;
                if (update)
                    // alert(moves.length);
                    checkForChange();

                $('.edit').bind("click", function () {
                    round = this.value;
                    test(superArr, round);
                    $("#success").hide();
                });

            }
            else {
                // alert(roundCount)
            }

        });

        function updateEditRow(arr) {
            $(".edit").remove();
            $.each(arr, function (index, value) {
                if (index > 0) {
                    if (index <= prct) {
                        $('#pageNums').append('<input type="button" value=' + index + ' id=' + index + ' class="edit prct"/>');
                        currPrct++;
                    }
                    else {
                        $('#pageNums').append('<input type="button" value=' + index + ' id=' + index + ' class="edit trl"/>');
                        currTrl++;
                    }


                }
            });
        }

        function test(superArr, round) {

            makeLabel(round);
            initFieldStart();
            initFieldEnd();
            superObj = superArr[round];
            what = "";
            if (superObj != null) {
                var arr = superObj.arrStart.replace(/[\'[\]']+/g, '').replace(/[\'{\}']+/g, '').split(',');
                var arrR = superObj.arrFinish.replace(/[\'[\]']+/g, '').replace(/[\'{\}']+/g, '').split(',');
                var num = superObj.numMoves;


                $('#numberOfMoves').val(num);
                for (i = 0; i < arr.length; i++) {
                    if (i % 2 == 0) {
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
                        color = arrR[i].substr(8, arr[i].lastIndexOf('"')).replace(/['"']+/g, '');
                        p.attr({ fill: color, "stroke-width": "2", stroke: 'black' });
                        arrayR.push(new data(id, color));
                    }
                }
            }
            else
                $('#numberOfMoves').val("");

        }

        $('#makeAnother').click(function () {
            checkForChange();
            //update = false;
            //round = 0;
            makeLabel(idItems.length);

            initFieldStart();
            initFieldEnd();
            $('#numberOfMoves').val("");
            $('#save').show();
            updateValues();

            if (idItems.length >= prct + trl)
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
            updateValues();
            //$('#title').show();
            showNumGrp();
            if (what == "") {
                if (round <= prct) {
                    $('#roundNumber').text('<%= GetLocalResourceObject("SetUpPractice")%>');
                    $('#roundValue').val(round);
                }
                else {

                    $('#roundNumber').text('<%= GetLocalResourceObject("SetUpTest")%>');
                    $('#roundValue').val((round - prct));
                }
            }
            else if (what == "prct") {
                $('#roundNumber').text('<%= GetLocalResourceObject("SetUpPractice")%>');
                updateValues();
                var total = prct + trl;

                var currPrct = round - trl;


                $('#roundValue').val(prct);
                $('#roundValue').focus();
            }
            else {
                $('#roundNumber').text('<%= GetLocalResourceObject("SetUpTest")%>');
                $('#roundValue').val(trl);
                $('#roundValue').focus();
            }
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
            var p1l2 = 170;
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
