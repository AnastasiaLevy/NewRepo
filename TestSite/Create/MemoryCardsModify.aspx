<%@ Page Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="MemoryCardsModify.aspx.cs" Inherits="TestSite.Create.MemoryCardsModify" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>MemoryCards</title>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/raphael/2.2.1/raphael.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/raphael/2.2.1/raphael.min.js"></script>
    <script src="https://code.jquery.com/jquery-3.1.0.js"></script>
    <style>
        .wrapper{
            border: 1px black solid;
            display: inline-block;
            padding-bottom: 0px;
            height: 50px;
            width:50px;
            margin-right: 5px;
        }
        .testbutton {
            width: 10em;
            height: 4em;
        }
        .uppercase{
            text-transform:capitalize;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section id="">

        <div class="box box1">
            <div class="col-lg-12">
                <hr />
                <h2 class="intro-text text-center">Memory Cards 
                            <strong>Set Up</strong>
                </h2>
                <hr />
                <div>
                         <%--<asp:Button ID="btnManual" runat="server" Text="TOL Set Up Instructions"  class="btn btn-labeled btn-info"  onClick="btnManual_Click"/>--%>
                                 <%--<asp:Button ID="btnVideo" runat="server" Text="Video"  class="btn btn-labeled btn-info"  onClick="btnVideo_Click"/>--%>

                </div>
            </div>
            
        </div>
    </section>
  

    <section id="buttons" style="position:relative;left:35%">
    </section>

    <section id="testInstructions">
        <div class="row ">
            <div class="box">
                <div class="col-lg-12">
                    <hr />
                    <h2 class="intro-text text-center">Set Up
                            <strong>Trial Instructions For <span id="headName"></span>:</strong>
                    </h2>
                    <hr />
                </div>
                <div class="col-lg-12 font-larger">
                    <p class="min"><strong>Enter Trial Name:</strong> </p>
                    <input type="text" id="testName" class="text-capitalize" style="width:60%" />
                </div>

                <div class="col-lg-12 font-larger">
                    <p class="min"><strong>Enter Trial Instructions to display in the beginning of the test:</strong> </p>
                    <textarea id="testText"  rows="5" style="width:60%" ></textarea>
                </div>
                <%--<div class="col-lg-12 font-larger">
                    <p class="min"><strong>Enter Feedback Text:</strong> </p>
                    <textarea id="feedback" style="width: 100%" rows="5" runat="server"></textarea>
                </div>--%>
                <div class="col-lg-12 font-larger" id="matrix">
                    <p class="min"><strong>Game Matrix:</strong> </p>
                    <input type="button" id="smallMatrix" class="btn btn-default" style="color:dimgray;width:7em;"  value="4x3" />
                    <input type="button" id="mediumMatrix" class="btn btn-default" style="color:dimgray;width:7em;"  value="6x4"/>
                </div>
                <div class="col-lg-12 font-larger">
                    <p class="min"><strong>Enter Over Time Limit:</strong> </p>
                    <input id="overTime"  />
                </div>

                
                <div class="col-lg-7 font-larger" ">
                    <p class="min"><strong>Choose images for test:</strong> </p>
                    <div class="" id="imagesDiv" >
                        <select id="imgSelector" class="btn btn-facebook uppercase selector"  >
                        </select>
                    </div>
                    
                </div>
                
                <div class="clearfix"></div>
                <button type="button" class="btn btn-danger" id="buttonSave" value="SaveTrial" style="display:block;margin:0 auto;">Save Trial</button>
            </div>
            
        </div>
    </section>
    <script>
        var structure = [];
        var texts = [];
        var images = [];
        var tests = [];


        jQuery.ajax({
            contentType: "application/json; charset=utf-8",
            url: 'MemoryCardsModify.aspx/GetAllData',
            dataType: 'json',
            type: 'GET',
            success: function (resp) {
                console.log(resp.d.MemoryCardsStructure);
                console.log(resp.d.MemoryCardsTexts);
                console.log(resp.d.MemoryCardsImages);
                console.log(resp.d.MemoryCardsTests)
                structure = resp.d.MemoryCardsStructure;
                texts = resp.d.MemoryCardsTexts;
                images = resp.d.MemoryCardsImages;
                tests = resp.d.MemoryCardsTests;
                defaultValues();
            },
            error: function (resp) {
                alert("Could not load the correct test. Please try again later.");
            }
        });

        $('#matrix input').click(function () {
            $('#matrix input').removeClass('btn-success');
            $(this).addClass('btn-success');
            updateScheme($(this).val());
        });

        $('#buttonSave').click(function () {
            saveResult();
        });

        $('.selector').change(function () {
            removeImages();
            selectImage(this.value);
        })

        
        

        $('#buttons').on('click', 'input.testbutton', function () {
            var testNumber = $(this).attr('id');
            result.Id = testNumber;
            removeImages();
            setOptions(tests[testNumber-1].Images);
            setTestName(testNumber);
            setTestText(testNumber);
            setMatrix(testNumber);
            setTimerValue(testNumber);
            selectImage(tests[testNumber - 1].Images);
        })


        function defaultValues() {
            result.Id = 1;
            createButtons();
            setOptions(tests[0].Images);
            setTestName(1);
            setTestText(1);
            setMatrix(1);
            setTimerValue(1);
            selectImage(tests[0].Images);
        }

        
        //BUTTONS
        function createButtons() {
            tests.forEach(function (obj) {
                var $button = $('<input>', {
                    type: 'button',
                    class: 'btn btn-success testbutton',
                    id: obj.Id,
                    value: obj.Name,
                }).appendTo('#buttons');
            });
        }

        //OPTIONS
        function setOptions(imageName) {
            $('#imgSelector option').remove();
            var array = GetUniqueImages(images);
            for (var i= 0; i < array.length;i++)
            {
                var $option = $('<option>', {
                    value: array[i],
                    text: array[i],
                    class:"uppercase"
                }).appendTo('#imgSelector');
                if (array[i] == imageName)
                {
                    $option.attr("selected", "selected");
                }
            }
        }


        //Images
        function selectImage(testImage) {
            images.forEach(function (element) {
                if (element.Name == testImage) {
                    var $wrapper = $('<div>', {
                        'class': 'wrapper'
                    }).appendTo('#imagesDiv');
                    $('<img>', {
                        'src': element.Path,
                        'height': 50,
                        'width': 50
                    }).appendTo($wrapper);
                }
            }, this);
        }


        //TEST NAME
        function setTestName(testNumber)
        {
            tests.forEach(function (obj) {
                if (obj.Id == testNumber) {
                    $("#testName").val(obj.Name);
                    $("#headName").text(obj.Name);
                    testImage = obj.Images;
                }
            });
        }

        //MATRIX
        function setMatrix(testNumber)
        {
            structure.forEach(function (obj) {
                if (obj.TestNumber == testNumber && obj.Name.toLowerCase().indexOf("matrix") !== -1) {
                    if (obj.Structure == "6;4") {
                        $('#mediumMatrix').addClass('btn-success');
                        updateScheme("6x4");
                    }
                    else if (obj.Structure == "4;3") {
                        $('#smallMatrix').addClass('btn-success');
                        updateScheme("4x3");
                    }

                }
            });
        }

        //TEST TEXT
        function setTestText(testNumber)
        {
            texts.forEach(function (obj) {
                if (obj.TestNumber == testNumber) {
                    $('#testText').val(obj.Text);
                }
            });
        }

        //OVERTIME
        function setTimerValue(testNumber) {
            structure.forEach(function (obj) {
                if (obj.TestNumber == testNumber && obj.Name.toLowerCase().indexOf("timetest") === 0) {
                    $("#overTime").val(obj.Structure);
                }
            });
        }


        //NEW SCHEME AND MATRIX
        function updateScheme(matrix) {
            if (matrix == "4x3") {
                result.Scheme = "1;2;3;4;5;6;1;2;3;4;5;6";
                result.Matrix = "4;3";
            }
            else if (matrix == "6x4") {
                result.Scheme = "1;2;3;4;5;6;7;8;9;10;11;12;1;2;3;4;5;6;7;8;9;10;11;12";
                result.Matrix = "6;4";
            }
        }









        

       

           
            
        

        function removeImages()
        {
            $('.wrapper').remove();
        }

        function GetUniqueImages(obj) {
            var array = [];
            obj.forEach(function (obj) {
                array.push(obj.Name);
            });
            array = $.unique(array);
            return array;
        }



        function saveResult()
        {
            result.TestName = $("#testName").val();
            result.TestText = $("#testText").val();
            result.Overtime = $("#overTime").val();
            result.ImagesName = $(".selector option:selected").text().toLowerCase();

            jQuery.ajax({
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                url: 'MemoryCardsModify.aspx/SaveResults',
                dataType: 'json',
                data: JSON.stringify({ 'result': result }),
                type: 'POST',
                success: function (resp) {

                    //request sent and response received.
                    var message = "Success! The Trial was saved."
                    $("#success").show();
                    $("#success").html(message);
                },
                error: function () {
                    alert("error saving the test; try again later")
                }
            });

            //reload page to update values.
            setTimeout("location.reload(true);", 3000);
        }
        var result = { Id:0, TestName:"",TestText:"",Matrix:"",Scheme:"",Overtime:0,ImagesName:""};
        var testImage = "";

   </script>

    

    
</asp:Content>