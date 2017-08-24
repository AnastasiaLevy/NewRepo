﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="TestSite.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Login</title>

    <!-- CSS -->
    <link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Roboto:400,100,300,500">
    <link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="assets/font-awesome/css/font-awesome.min.css">
    <link rel="stylesheet" href="assets/css/form-elements.css">
    <link rel="stylesheet" href="assets/css/style.css">
    <link rel="stylesheet" href="Style/style.css">


    <link href="cogTest.css" rel="stylesheet" />

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
            <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
            <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
        <![endif]-->

    <!-- Favicon and touch icons -->
    <link rel="shortcut icon" href="images/favicon.ico" />
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="assets/ico/apple-touch-icon-144-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="assets/ico/apple-touch-icon-114-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="assets/ico/apple-touch-icon-72-precomposed.png">
    <link rel="apple-touch-icon-precomposed" href="assets/ico/apple-touch-icon-57-precomposed.png">

    <script src="http://code.jquery.com/jquery-2.2.1.min.js"></script>
    <script src="js/sessionManager.js"></script>

</head>
<body>
    <nav class="navbar navbar-inverse navbar-fixed-top">
            <div class="container">

                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                      <a class="navbar-brand" href="MainPage.aspx">
                     <i class="fa fa-cogs" aria-hidden="true">Quiz</i>
                      </a> 
                </div>

                <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                    <ul class="nav navbar-nav navbar-right custom-menu">
                        <li class="active"><a href="MainPage.aspx">Home</a></li>
                    </ul>
                </div>
            </div>
        </nav>



    



    <form id="form1" runat="server">
        <div class="top-content">

            <div class="inner-bg">
                <div class="container">
                    <div class="row">
                        <div class="col-sm-5">

                            <div class="form-box">
                                <div class="form-top">
                                    <div class="form-top-left">
                                        <h3>Login</h3>
                                        <p>Enter username and password to log on:</p>
                                    </div>
                                    <div class="form-top-right">
                                        <i class="fa fa-lock"></i>
                                    </div>
                                </div>
                                <div class="form-bottom">
                                    
                                    <div role="form" class="login-form">
                                        <asp:Label ID="wrongLogin" class="errorMessage" runat="server" Text=""></asp:Label>
                                        <div class="form-group">
                                            <label class="sr-only" for="form-username">Username</label>
                                            <input type="text" name="form-username" placeholder="Username..." class="form-username form-control" id="userNameLg" required runat="server">
                                        </div>
                                        <div class="form-group">
                                            <label class="sr-only" for="form-password">Password</label>
                                            <input type="password" name="form-password" placeholder="Password..." class="form-password form-control" id="userPwLg" required runat="server" >
                                        </div>
                                        <asp:LinkButton class="btn btn-success" type="submit" runat="server" OnClick="clcLogin">Login</asp:LinkButton>
                                        <button type="submit" class="btn" runat="server" style="display: none" OnClick="javascript:__doPostBack('ctl16','')">Login</button>
                                    </div>
                                       
                                </div>
                            </div>

                        </div>

                        <div class="col-sm-1 middle-border"></div>
                        <div class="col-sm-1"></div>

                        <div class="col-sm-5">

                            <div class="form-box">
                                <div class="form-top">
                                    <div class="form-top-left">
                                        <h3>Sign up now</h3>
                                        <p>Fill in the form below to get instant access:</p>
                                    </div>
                                    <div class="form-top-right">
                                        <i class="fa fa-pencil"></i>
                                    </div>
                                </div>
                                <div class="form-bottom">
                                    <div role="form" class="registration-form">
                                        <asp:Label ID="wrong" class="errorMessage" runat="server" Text=""></asp:Label>
                                        <asp:Label ID="wrongPw" class="errorMessage" runat="server" Text=""></asp:Label>
                                        <div class="form-group">
                                            <label class="sr-only" for="form-email">Email</label>
                                            <input type="text" name="form-email" placeholder="Email..." class="form-email form-control" id="single_email" runat="server"/>
                                        </div>
                                        <div class="form-group">
                                            <label class="sr-only" for="form-first-name">User name</label>
                                            <input type="text" name="form-first-name" placeholder="User" class="form-first-name form-control" id="singleName" runat="server">
                                        </div>
                                        <%--                       <div class="form-group">
                                            <label class="sr-only" for="form-last-name">Last name</label>
                                            <input type="text" name="form-last-name" placeholder="Last name..." class="form-last-name form-control" id="form-last-name">
                                        </div>

                                        <div class="form-group">
                                            <label class="sr-only" for="form-email">Email</label>
                                            <input type="text" name="form-email" placeholder="Confirm Email..." class="form-email form-control" id="form-email-confirm">
                                        </div>--%>
                                        <div class="form-group">
                                            <label class="sr-only" for="singlePw">Password</label>
                                            <asp:TextBox ID="singlePw" runat="server" TextMode="Password" placeholder="password" class="form-email form-control"></asp:TextBox>
                                        </div>
                                        <div class="form-group">
                                        <label class="sr-only" for="s_confPw"">Confirm Password</label>
                                            <asp:TextBox ID="s_confPw" name="s_confPw" runat="server" TextMode="Password" placeholder="confirm password" class="form-email form-control"></asp:TextBox>
                                        </div>
                                        <div class="form-group">
                                        <label class="form-check-label" for="singleIsProvider" style="display:inline-flex; color:white; padding-left:0px">
                                            <input type="checkbox" name="form-checkbox" placeholder="User" class="form-first-name form-control form-check-input" id="checkboxProvider" runat="server" style="margin-right: 10px; ">Provider</label>
                                        </div>
                                        </div>
                                       <asp:LinkButton ID="regSingle" runat="server" class="btn btn-success" OnClick="Register_Single">REGISTER</asp:LinkButton>
                                    </div>
                                </div>
                            </div>

                        </div>
                    </div>

                </div>
            </div>

        </div>
    </form>

    <div>
        <div class="b-popup" id="popup1">
        <div class="b-popup-content" style="position: relative;">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce nec accumsan eros, non semper orci. Curabitur convallis in nulla commodo interdum. Proin tincidunt vulputate arcu sed bibendum. Etiam accumsan eleifend pharetra. Praesent vehicula mi consequat, scelerisque tellus quis, laoreet metus. Nam eget tristique mi, at bibendum neque. Curabitur aliquam vel neque blandit dignissim. Phasellus sed eros id purus consequat pulvinar. Proin tristique, mi et pulvinar sodales, turpis urna dignissim tellus, et dapibus sapien lectus et neque. Quisque nulla ante, fringilla id mattis aliquet, feugiat a augue. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Ut aliquam enim id augue volutpat, et fringilla elit tristique.</a>
            <button class="btn btn-success" style="position:absolute; bottom:10px; display:block" OnClick="PopUpHide()">Close</button>
        </div>
        </div>
    </div>

    <footer hidden>
        <div class="container">
            <div class="row">

                <div class="col-sm-8 col-sm-offset-2">
                    <div class="footer-border"></div>

                </div>

            </div>
        </div>
                <script>
                    (function (i, s, o, g, r, a, m) {
                        i['GoogleAnalyticsObject'] = r; i[r] = i[r] || function () {
                            (i[r].q = i[r].q || []).push(arguments)
                        }, i[r].l = 1 * new Date(); a = s.createElement(o),
                            m = s.getElementsByTagName(o)[0]; a.async = 1; a.src = g; m.parentNode.insertBefore(a, m)
                    })(window, document, 'script', 'https://www.google-analytics.com/analytics.js', 'ga');

                    ga('create', 'UA-89149772-1', 'auto');
                    ga('send', 'pageview');

</script>
    </footer>
       
<script>
                    $(document).ready(function () {
                        PopUpHide();
                    });
                    function PopUpShow() {
                        $("#popup1").show();
                    }
                    function PopUpHide() {
                        $("#popup1").hide();
                    }
</script>

</body>
</html>
<!-- Javascript -->
<script src="assets/js/jquery-1.11.1.min.js"></script>
<script src="assets/bootstrap/js/bootstrap.min.js"></script>
<script src="assets/js/jquery.backstretch.min.js"></script>
<script src="assets/js/scripts.js"></script>
<script>  


                    var eHasErrors = false;
                    var pwHasErrors = false;

                    $("#single_email").mouseout(function () {

                        var text = $("#single_email").val();
                        if (!validateEmail(text)) {
                            $("#wrong").text("Please enter a valid email *")
                            $("#regSingle").hide();
                            eHasErrors = true;
                        }

                        else {
                            if (pwHasErrors == false) {

                                $("#regSingle").show();

                            }
                            $("#wrong").text("");
                            eHasErrors = false;



                        }
                    });

                    $("#s_confPw").mouseout(function () {

                        var text1 = $("#s_confPw").val();
                        var text2 = $("#singlePw").val();
                        if (!comparePWs(text1, text2)) {
                            $("#wrongPw").text("Passwords do not match *")
                            $("#regSingle").hide();
                            pwHasErrors = true;
                        }

                        else {
                            if (eHasErrors == false) {

                                $("#regSingle").show();

                            }
                            $("#wrongPw").text("")
                            pwHasErrors = false;
                        }
                    });


                    function validateEmail(text) {
                        var emailReg = /^([\w-\.]+@([\w-]+\.)+[\w-]{2,4})?$/;
                        return emailReg.test(text);
                    }

                    function comparePWs(text1, text2) {
                        if (text1 != text2) {
                            return false;
                        }
                        else {
                            return true;
                        }
                    }
    </script>
<script>
        function showPopup() {

        }
</script>
<script type="text/javascript" language="javascript">
        var numOfClick = 0;
        $(document).ready(function () {
            $('#checkboxProvider').click(function () {
                numOfClick = numOfClick + 1;

                if (checkboxProvider.checked == true) {
                    
                    PopUpShow();
                }
            });
        });
</script>
<!--[if lt IE 10]>
            <script src="assets/js/placeholder.js"></script>
        <![endif]-->




