<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="adult_ADHD_Page.aspx.cs" Inherits="TestSite.Tests.adult_ADHD_Page" %>

<!DOCTYPE html>

<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Coolidge Tests  |  Online Psychological Assessments</title>
    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
    <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.8.16/jquery-ui.min.js"></script>
    <script type="text/javascript" src="../web/js/jquery.dataTables.min.js"></script>
    <script type="text/javascript" src="../web/js/slidedeck.jquery.lite.js"></script>
    <script src="../web/js/jquery.validationEngine-en.js" type="text/javascript"></script>
    <script src="../web/js/jquery.validationEngine.js" type="text/javascript"></script>
    <script src="../web/js/jquery.featureList.js" type="text/javascript"></script>
    <script src="../web/js/jquery.autotab.js" type="text/javascript"></script>
    <link rel="stylesheet" href="../web/css/slidedeck.skin.css" type="text/css" media="screen">

    <link href='http://fonts.googleapis.com/css?family=Arimo' rel='stylesheet' type='text/css'>
    <link rel="stylesheet" href="../web/css/validationEngine.jquery.css" type="text/css" media="screen" charset="utf-8" />
    <link rel="stylesheet" href="../web/css/fredcool/jquery-ui-1.8.4.custom.css" type="text/css" />
    <link rel="stylesheet" href="../web/css/reset.css" type="text/css">
    <link rel="stylesheet" href="../web/css/960_12_10_10.css" type="text/css">
    <link rel="stylesheet" href="../web/css/style.css" type="text/css">
    <link href="../cogTest.css" rel="stylesheet" />
    <link rel="stylesheet" href="../css/bootstrap.min.css" type="text/css">
</head>
<body>
    <div class="wrapper">
        <div class="headcontainer">
            <div class="container_12">
                <div class="grid_3 ">CCI test</div>
            </div>
        </div>


        <div id="start" runat="server">
            Please select who do you fill the test out for:

		    Select relationship:
		    <select name="relationship" runat="server" id="relationship">
                <option value="self">Select a relationship</option>
                <option value="self">Self</option>
                <option value="husband">Husband</option>
                <option value="wife">Wife</option>
                <option value="father">Father</option>
                <option value="mother">Mother</option>
                <option value="son">Son</option>
                <option value="daughter">Daughter</option>
                <option value="friend">Friend</option>
                <option value="Twin">Co-Twin</option>
                <option value="other">Other</option>
            </select>
            <br />
            <input id="Button1" runat="server" type="button" value="Start the test" />
        </div>

        <div id="testText"></div>
        <div class="row adhd-buttons">
            <input id="saveAndClose" type="button" class="btn btn-success adhd-button" value="Save And Close">
            <input id="finishTest" type="button" class="btn btn-success adhd-button" value="Submit" />
        </div>

        <div class="push">&nbsp;</div>
    </div>

    <div class="footer">
    </div>
</body>
</html>


<script src="../js/jquery.js"></script>
<script>
    $("#finishTest").hide();
    $("#saveAndClose").hide();
    var num = 0;
    $('#Button1').on('click', function (e) {


        jQuery.ajax({
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            url: 'adult_ADHD_Page.aspx/StartTest',
            data: JSON.stringify({
                relationship: $('select[name="relationship"]').val(),
                gender: $('select[name="gender"]').val()
            }),

            type: 'POST',
            success: function (resp) {

                var test = jQuery.parseJSON(resp.d);
                res.data = test.data[0];
                $("#testText").html(res.data);
                //addValidation();
                $("#finishTest").show();
                $("#saveAndClose").show();
                $("#start").hide();
                num = $('input[name="sequence"]').val();
                if (!$('input[name="last_page"]').length) {
                    window.location.href = "/Results/adult_ADHD_Result.aspx?api_transaction_id=" + test.params.api_transaction_id + "&api_test_id=9&showResults=true";
                }
            },
            error: function (resp) {
                alert("The results were not saved correctly")
            }
        });
    });

    $("#finishTest").on('click', function (e) {
        var paramString = "";

        e.preventDefault();
        if (!isValidForm()) {
            alert("Not all questins were filled.");

        }
        else {
            if (num == 0) {
                var i = 1;
                var max = 51;
            }
            else if (num == 1) {
                var i = 51;
                var max = 101;
            }
            else if (num == 2) {
                var i = 101;
                var max = 151;
            }
            else if (num == 3) {
                var i = 151;
                var max = 201;
            }
            else if (num == 4) {
                var i = 201;
                var max = 251;
            }

            for (i ; i < max; i++) {
                var name = "q" + i;
                var value = $('input[name="' + name + '"]:checked').val();

                paramString += name + ':' + value + ';';
            }
            $("#finishTest").hide();
            PostValues(paramString);
        }
    });
    var res = {
        data: "",
        params: "",
        success: ""
    };
    function GetData(e) {
        e.preventDefault();
        jQuery.ajax({
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            url: 'adult_ADHD_Page.aspx/Call1',
            //data : {
            //    "controller":"Testapi",
            //    "action": "read",
            //    "testValue": "3",
            //    "api_provider_id": "685",
            //    "api_test_id": "4",
            //    " api_relationship":"self"
            //},

            type: 'POST',
            success: function (resp) {

                var test = jQuery.parseJSON(resp.d);
                res.data = test.data[0];
                $("#testText").html(res.data);
                //$("#testText").html(resp.d);
                num = $('input[name="sequence"]').val();
            },
            error: function (resp) {
                alert("The results were not saved correctly");

            }
        });
    }

    function PostValues(data) {
        jQuery.ajax({
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            url: 'adult_ADHD_Page.aspx/GetParams',

            data: JSON.stringify({
                testVal: "4",
                paramString: data,
                api_transaction_id: $('input[name="api_transaction_id"]').val(),
                // api_patient_ext_id: $('input[name="api_patient_ext_id"]').val(),
                api_patient_id: $('input[name="api_patient_id"]').val(),
                providerId: $('input[name="api_provider_ext_id"]').val(),
                sequence: $('input[name="sequence"]').val(),
                //fname: $('input[name="fname"]').val(),
                //lname: $('input[name="lname"]').val(),
                relationship: $('select[name="relationship"]').val(),
                //gender: $('select[name="gender"]').val()
            }),
            type: 'POST',
            success: function (resp) {
                var test = jQuery.parseJSON(resp.d);
                res.data = test.data[0];
                $("#testText").html(res.data);
                if (!$('input[name="last_page"]').length) {
                    window.location.href = "/Results/ADHD_Result.aspx?api_transaction_id=" + test.params.api_transaction_id + "&api_test_id=9&showResults=true";
                }
                $("#finishTest").show();
                $("#saveAndClose").show();

            },
            error: function (resp) {
                alert("The results were not saved correctly");

            }
        });
    }

    $("#saveAndClose").on('click', function (e) {

        var paramString = "";
        if (!isValidForm()) {
            alert("Not all questins were filled.");

        }
        else {
            if (num == 0) {
                var i = 1;
                var max = 51;
            }
            else if (num == 1) {
                var i = 51;
                var max = 101;
            }
            else if (num == 2) {
                var i = 101;
                var max = 151;
            }
            else if (num == 3) {
                var i = 151;
                var max = 201;
            }
            else if (num == 4) {
                var i = 201;
                var max = 251;
            }

            for (i ; i < max; i++) {
                var name = "q" + i;
                var value = $('input[name="' + name + '"]:checked').val();

                paramString += name + ':' + value + ';';
            }

            jQuery.ajax({
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                url: 'adult_ADHD_Page.aspx/SaveAndClose',

                data: JSON.stringify({
                    testVal: "4",
                    paramString: paramString,
                    api_transaction_id: $('input[name="api_transaction_id"]').val(),
                    // api_patient_ext_id: $('input[name="api_patient_ext_id"]').val(),
                    api_patient_id: $('input[name="api_patient_id"]').val(),
                    providerId: $('input[name="api_provider_ext_id"]').val(),
                    sequence: $('input[name="sequence"]').val(),
                    //fname: $('input[name="fname"]').val(),
                    //lname: $('input[name="lname"]').val(),
                    relationship: $('select[name="relationship"]').val(),
                    //gender: $('select[name="gender"]').val()
                }),
                type: 'POST',
                success: function (resp) {
                    window.location.href = '/UserProfile.aspx';

                },
                error: function (resp) {
                    alert("The results were not saved correctly");

                }
            });
        }
    });



    function isValidForm() {
        var clean = true;
        alert(num);
        if (num == 0) {
            var i = 1;
            var max = 2;
        }
        else if (num == 1) {
            var i = 51;
            var max = 53;
        }
        else if (num == 2) {
            var i = 101;
            var max = 103;
        }
        for (i; i < max; i++) {
            var name = "q" + i;
            var value = $('input[name="' + name + '"]:checked').val();
            if (!value) {
                var field = $('#' + name).closest('tr');
                field.css('background-color', 'red');

                clean = false;
            }
        }
        return clean;
    }

    // function addValidation(){

</script>
