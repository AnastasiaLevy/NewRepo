<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ADHD_Page.aspx.cs" Inherits="TestSite.Tests.ADHD_Page" %>
<!DOCTYPE html>

<%--<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>--%>

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
    <link rel="stylesheet" href="../web/css/fredcool/jquery-ui-1.8.4.custom.css" type="text/css"/>
    <link rel="stylesheet" href="../web/css/reset.css" type="text/css">
    <link rel="stylesheet" href="../web/css/960_12_10_10.css" type="text/css">
    <link rel="stylesheet" href="../web/css/style.css" type="text/css">
    <link href="../cogTest.css" rel="stylesheet" />
</head>
<body>
     <div class="wrapper">
            <div class="headcontainer">
                <div class="container_12">
                    <div class="grid_3 ">CPNI test</div>
                </div>
            </div>


        <div id="start">
            Please select who do you fill the test out for:
            <br />
            Insert patient ext id:
            <input type = "text" name = "api_patient_ext_id"><br>
<%--            Insert test id:
            <input type = "text" name = "api_test_id"><br>--%>
            Insert First name:
            <input type = "text" name = "fname"><br>
            Insert last name:
            <input type = "text" name = "lname"><br>

            Select gender:
		    <select name = "gender">
			    <option value = "M">M</option>
			    <option value = "F">F</option>
		    </select><br>
		    Select relationship:
		    <select name  = "relationship">
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
            <input id="Button1" type="button" value="Start the test" />
        </div>

        <div id="testText"></div>

        <input id="finishTest" type="button" value="Submit" />

		<div class="push">&nbsp;</div>
	</div>

	<div class="footer">

	</div>
</body>
</html>


<script src="../js/jquery.js"></script>
<script>

    $("#finishTest").hide();
    var num = 0;
    $('#Button1').on('click', function (e) {


        jQuery.ajax({
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            url: 'ADHD_Page.aspx/StartTest',
            data: JSON.stringify({
                //api_patient_ext_id: $('input[name="api_patient_ext_id"]').val(),
                //test_id: $('input[name="api_test_id"]').val();
                fname: $('input[name="fname"]').val(),
                lname: $('input[name="lname"]').val(),
                relationship: $('select[name="relationship"]').val(),
                gender: $('select[name="gender"]').val()


            //    "action": "read",
            //    "testValue": "3",
            //    "api_provider_id": "2",
            //    "api_test_id": "9",
            //    " api_relationship":"self"
            }),

            type: 'POST',
            success: function (resp) {

                var test = jQuery.parseJSON(resp.d);
                res.data = test.data[0];
                $("#testText").html(res.data);
                //addValidation();
                $("#finishTest").show();
                $("#start").hide();
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
            url: 'ADHD_Page.aspx/Call1',
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
            url: 'ADHD_Page.aspx/GetParams',

            data: JSON.stringify({
                testVal: "4",
                paramString: data,
                api_transaction_id: $('input[name="api_transaction_id"]').val(),
                api_patient_ext_id: $('input[name="api_patient_ext_id"]').val(),
                api_patient_id: $('input[name="api_patient_id"]').val(),
                sequence: $('input[name="sequence"]').val(),
                fname: $('input[name="fname"]').val(),
                lname: $('input[name="lname"]').val(),
                relationship: $('select[name="relationship"]').val(),
                gender: $('select[name="gender"]').val()
            }),
            type: 'POST',
            success: function (resp) {
                var test = jQuery.parseJSON(resp.d);
                res.data = test.data[0];
                $("#testText").html(res.data);

                num = $('input[name="sequence"]').val();
                alert(num);
                $("#finishTest").show();

            },
            error: function (resp) {
                alert("The results were not saved correctly");

            }
        });
    }
    //$(".fg-button").click(function (e) {

    //    for (i= 1; i < 50; i ++)
    //    {
    //        var name = "q" + i;
    //        alert($('input[name="' + name + '"]:checked').val())
    //        var t= isValidForm();
    //            e.preventDefault(); //prevent the default action


    //    }

    function isValidForm() {
        var clean = true;
        if (num == 0) {
            var i = 1;
            var max = 51;
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
