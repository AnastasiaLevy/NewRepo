<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="adult_ADHD_Result.aspx.cs" Inherits="TestSite.Results.adult_ADHD_Result" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
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
                    <div class="grid_3 ">CCI test</div>
                </div>
            </div>


<%--        <div id="start">
            Insert provider ext id:
            <input type = "text" name = "api_provider_ext_id"><br>

            <input id="Button1" type="button" value="Get results" /><br>

            Insert patient ext id:
            <input type = "text" name = "api_patient_ext_id"><br>
            <input id="Button2" type="button" value="Get results 2" /><br>
            Insert transaction id:
            <input type = "text" name = "api_transaction_id"><br>
            Insert test id:
            <input type = "text" name = "api_test_id"><br>
            <input id="Button3" type="button" value="Get results 3" /><br>

        </div>--%>

        <div id="testText" runat="server"></div>

        <!--<input id="finishTest" type="button" value="Submit" />-->

		<div class="push">&nbsp;</div>
	</div>

	<div class="footer">

	</div>
</body>
</html>
<script>

    var res = {
        data: "",
        _params: "",
        success: ""
    };

    $('#Button1').on('click', function (e) {

        jQuery.ajax({
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            url: 'ADHD_Result.aspx/GetClientTests',
            data: JSON.stringify({
                api_provider_ext_id: $('input[name="api_provider_ext_id"]').val(),
            }),

            type: 'POST',
            success: function (resp) {

                var test = jQuery.parseJSON(resp.d);
                res.data = test.data[0];
                $("#testText").html(res.data);
                //addValidation();
                //$("#finishTest").show();
                $("#start").hide();
            },
            error: function (resp) {
                alert("The results were not saved correctly")
            }
        });
    });

    $('#Button2').on('click', function (e) {

        jQuery.ajax({
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            url: 'ADHD_Result.aspx/TestInfo',
            data: JSON.stringify({
                api_provider_ext_id: $('input[name="api_provider_ext_id"]').val(),
                api_patient_ext_id: $('input[name="api_patient_ext_id"]').val(),
            }),

            type: 'POST',
            success: function (resp) {

                var test = jQuery.parseJSON(resp.d);
                res.data = test.data[0];
                $("#testText").html(res.data);
                //addValidation();
                //$("#finishTest").show();
                $("#start").hide();
            },
            error: function (resp) {
                alert("The results were not saved correctly")
            }
        });
    });

    $('#Button3').on('click', function (e) {

        jQuery.ajax({
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            url: 'ADHD_Result.aspx/ReadTest',
            data: JSON.stringify({
                api_transaction_id: $('input[name="api_transaction_id"]').val(),
                api_test_id: $('input[name="api_test_id"]').val(),
            }),

            type: 'POST',
            success: function (resp) {

                var test = jQuery.parseJSON(resp.d);
                res.data = test.data[0];
                $("#testText").html(res.data);
                //addValidation();
                //$("#finishTest").show();
                $("#start").hide();
            },
            error: function (resp) {
                alert("The results were not saved correctly")
            }
        });

    });

     function GetData(e) {

        jQuery.ajax({
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            url: 'ADHD_Result.aspx/PrintTest',
            data: JSON.stringify({
                api_transaction_id: $('input[name="transaction_id"]').val(),
                api_test_id: $('input[name="test_id"]').val(),
                api_print_id: $('input[name="print_id"]').val(),
            }),

            type: 'POST',
            success: function (resp) {

                var test = jQuery.parseJSON(resp.d);
                res.data = test.data[0];
                $("#testText").html(res.data);
                //addValidation();
                //$("#finishTest").show();
                $("#start").hide();
            },
            error: function (resp) {
                alert("The results were not saved correctly")
            }
        });
    };
</script>