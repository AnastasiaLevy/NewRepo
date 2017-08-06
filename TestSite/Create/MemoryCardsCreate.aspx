<%@ Page Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="MemoryCardsCreate.aspx.cs" Inherits="TestSite.Create.MemoryCardsCreate" %>
<%@ Reference Control="~/UserControls/MemoryCardsModifyPanel.ascx" %>
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
                    <p class="min"><strong>Enter test name:</strong> </p>
                    <input type="text" runat="server" id="testNameId" Value="0" style="display:none"/>
                    <input type="text" class="form-group-sm" id="testName" value="" runat="server"/>
                </div>
                <asp:
                <div style="display:inline-block;">
                    <br />
                    <p class="min" runat="server" id="headParagraph"><strong>Set up number of trials:</strong> </p>
                    <asp:TextBox ID="txtTrialNumber" runat="server" placeholder="Set Number of Trials"/>
                    <asp:Button OnClick="addTrial_Click" CssClass="btn btn-facebook" ID="addTrial" runat="server" style="display:block;margin:0 auto;" Text="Add New Trial" />
                         <%--<asp:Button ID="btnManual" runat="server" Text="TOL Set Up Instructions"  class="btn btn-labeled btn-info"  onClick="btnManual_Click"/>--%>
                                 <%--<asp:Button ID="btnVideo" runat="server" Text="Video"  class="btn btn-labeled btn-info"  onClick="btnVideo_Click"/>--%>

                </div>
            </div>
            
        </div>
    </section>
  

    <section id="buttons" style="position:relative;left:35%">
        
    </section>
    
    

    <asp:PlaceHolder runat="server" ID="panelPlaceholder" ></asp:PlaceHolder>
    <input type="button" class="btn btn-facebook" id="saveResult"  style="display:block;margin:0 auto;" value="Save"/>
    <script>
        var structure = [];
        var texts = [];
        var images = [];
        var tests = [];
        var saveResult = {};
        var trialResult = {};

        
        $('#saveResult').click(function () {
            saveResult.testName = $('input[id$="testName"]').val();
            saveResult.testNameId = $('input[id$="testNameId"]').val();
            var array = [];
            
            $('.formInputs').each(function () {
                updateScheme($(this).find('.btn-success').val());
                var trialResult = {};
                trialResult.trialName = $(this).find('input[id$="trialName"]').val();
                trialResult.trialNameId = $(this).find('input[id$="trialNameId"]').val();
                trialResult.testText = $(this).find('textarea[id$="testText"]').val();
                trialResult.matrix = matrix;
                trialResult.scheme = scheme;
                trialResult.time = $(this).find('input[id$="overTime"]').val();
                trialResult.image = $(this).find("option:selected").text().toLowerCase();
                array.push(trialResult);
                console.log(trialResult);
            });
            saveResult.result = array;
            saveTest(saveResult);
        });
        function saveTest(result)
        {
            jQuery.ajax({
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                url: 'MemoryCardsCreate.aspx/SaveResults',
                dataType: 'json',
                data: JSON.stringify(saveResult),
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
        }



        jQuery.ajax({
            contentType: "application/json; charset=utf-8",
            url: 'MemoryCardsCreate.aspx/GetAllData',
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

            $(this).closest('#matrix').find('.btn-success').addClass('btn-default').removeClass('btn-success');
            $(this).addClass('btn-success');
            updateScheme($(this).val());
        });

        $('#buttonSave').click(function () {
            saveResult();
        });

        $('.selector').change(function () {
            var currentSelector = $(this);
            removeImages(currentSelector);
            var parentDiv = currentSelector.closest(".imagesDiv");
            selectImage(this.value, parentDiv);
        })

        

        
        

        


        function defaultValues() {

            
            setOptions("flag");

            selectImage("face");
            
        }

        

        //OPTIONS
        function setOptions(imageName) {
            $('.imgSelector option').remove();
            var array = GetUniqueImages(images);
            for (var i= 0; i < array.length;i++)
            {
                var $option = $('<option>', {
                    value: array[i],
                    text: array[i],
                    class:"uppercase"
                }).appendTo('.imgSelector');
                if (array[i] == images)
                {
                    $option.attr("selected", "selected");
                }
            }
        }


        //Images
        function selectImage(testImage, parent) {
            var divSelector = parent || $('.imagesDiv');
            images.forEach(function (element) {
                if (element.Name == testImage) {
                    var $wrapper = $('<div>', {
                        'class': 'wrapper'
                    }).appendTo(divSelector);
                    $('<img>', {
                        'src': element.Path,
                        'height': 50,
                        'width': 50
                    }).appendTo($wrapper);
                }
            }, this);
        }


        //TEST NAME
        

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
        function updateScheme(matri) {
            if (matri == "4x3") {
                scheme = "1;2;3;4;5;6;1;2;3;4;5;6";
                matrix = "4;3";
            }
            else if (matri == "6x4") {
                scheme = "1;2;3;4;5;6;7;8;9;10;11;12;1;2;3;4;5;6;7;8;9;10;11;12";
                matrix = "6;4";
            }
        }

        var scheme = "";
        var matrix = "";








        

       

           
            
        

        function removeImages(currentSelector)
        {
            if (currentSelector) {
                currentSelector.nextAll('.wrapper').remove();
            } else {
                $('.wrapper').remove();
            }
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
            result.TestId = resp.
            result.TestText = $("#testText").val();
            result.Overtime = $("#overTime").val();
            result.ImagesName = $(".selector option:selected").text().toLowerCase();

            jQuery.ajax({
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                url: 'MemoryCardsCreate.aspx/SaveResults',
                dataType: 'json',
                data: JSON.stringify({ 'result': result }),
                type: 'POST',
                success: function (resp) {

                    //request sent and response received.
                    var message = "Success! The Trial was saved."
                    $("#success").show();
                    $("#success").html(message);
                    //reload page to update values.
                    setTimeout("location.reload(true);", 3000);
                },
                error: function () {
                    alert("error saving the test; try again later")
                }
            });

            
            
        }

        var testImage = "";

   </script>

    

    
</asp:Content>