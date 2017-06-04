<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="StroopWrapper.aspx.cs" Inherits="TestSite.Tests.StroopWrapper" %>

<!DOCTYPE html>

<html lang="en">
<head>
    <meta name="google-site-verification" content="GMj8owmZtkuKU0Fa_4Zg82VbKsQPO8VkZD_pHsRghA4" />
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="Stroop test: Check out more about your personality by taking our Psychological Test Online designed by CogQuiz, play the games to help you better understand who you are.">
    <meta name="author" content="CogQuiz">
    <meta name="keywords" content="Stroop Test: Psychological Test Online, CogQuiz">
    <title> Stroop Test Online, CogQuiz</title>
    <link rel="shortcut icon" href="../images/favicon.ico" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
    <link href="../cogTest.css" rel="stylesheet" />
    <link href="../css/style.css" rel="stylesheet" />

</head>

<body data-spy="scroll" runat="server">
    <form runat="server">
        <!-- Navigation -->
        <nav class="navbar navbar-inverse navbar-fixed-top">
            <div class="container">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="~/MainPage.aspx">
                        <i class="fa fa-cogs" aria-hidden="true">Quiz</i>
                    </a>

                </div>
                <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                    <ul class="nav navbar-nav navbar-right custom-menu">
                        <li><a href="../MainPage.aspx">Home</a></li>
                        <li class="active"><a href="#about">About</a></li>
                        <li id="profOpt" runat="server"><a href="../UserProfile.aspx">Profile</a></li>
                        <li id="login" runat="server"><a href="../Login.aspx">Login</a></li>
                        <li>
                            <asp:LinkButton ID="logOut" class="btn button" type="submit" runat="server" OnClick="logOut_Click">Log Out</asp:LinkButton>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>



        <!-- Page Content -->
        <section id="about">
            <div class="container testDescription">
                <h1>Stroop Effect</h1>
                <hr />
                <p>
                   In psychology, the Stroop effect is a demonstration of interference in 
                    the reaction time of a task. When the name of a color 
                    (e.g., "blue", "green", or "red") is printed in a color that is
                     not denoted by the name (e.g., the word "red" printed in blue 
                    ink instead of red ink), naming the color of the word takes longer and is 
                    more prone to errors than when the color of the ink matches the name of the 
                    color. The effect is named after John Ridley Stroop, who first published 
                    the effect in English in 1935. The effect had previously been published 
                    in Germany in 1929. The original paper has been one of the most 
                    cited papers in the history of experimental psychology, leading to more than 
                    701 replications. The effect has been used to create a psychological test 
                    (Stroop test) that is widely used in clinical practice and investigation.
                </p>
        <%--        <div class="panel-group testDescription " id="accordion" role="tablist" aria-multiselectable="true">
             
                    <div class="col-md-6 visible">
                        <p>
                            <button data-parent="#accordion" class="btn btn-primary btn-lg btn-block" type="button"
                                data-toggle="collapse" data-target="#collapse1" aria-expanded="false" aria-controls="collapse1">
                                About
                            </button>
                        </p>
                    </div>
                    <div class="col-md-6 visible">
                        <p>
                            <button data-parent="#accordion" class="btn btn-primary btn-lg btn-block" type="button" data-toggle="collapse" data-target="#collapse2" aria-expanded="false" aria-controls="collapse2">
                                Measure
                            </button>
                        </p>
                    </div>
                    <div class="col-md-6 visible">
                        <p>
                            <button data-parent="#accordion" class="btn btn-primary btn-lg btn-block" type="button" data-toggle="collapse" data-target="#collapse3" aria-expanded="false" aria-controls="collapse3">
                                Details
                            </button>
                        </p>
                    </div>
                           <div class="col-md-6 visible">
                        <p>
                            <button data-parent="#accordion" class="btn btn-primary btn-lg btn-block" type="button"
                                 data-toggle="collapse" data-target="#collapse4" aria-expanded="false" aria-controls="collapse4">
                                Research
                            </button>
                        </p>
                    </div>
                    <div class="panel">
                        <div id="collapse1" class=" collapse col-md-12">
                            <h3>About:</h3>
                            There are two main hypotheses for this weak correlation between the n-back task and other 
                    working memory assessments. One proposal is that the n-back task assesses different 
                    "sub-components" of working memory than do other assessments.
                        </div>
                    </div>
                    <div class="panel">

                        <div id="collapse2" class=" collapse col-md-12">
                            <h3>Measure:</h3>
                            A more critical explanation is 
                    that rather than primarily assessing working memory, performance on the n-back task depends on 
                    "familiarity- and recognition-based discrimination processes," whereas valid assessments of 
                    working memory demand "active recall."
                        </div>
                    </div>
                    <div class="panel">
                      <div id="collapse3" class="collapse col-md-12">
                            <h3>Details:</h3>
                            <p>
                                The test consists of two boards with pegs and several beads with different colors. The examiner (usually a clinical psychologist or a neuropsychologist) uses the beads and
                                 the boards to present the examinee with problem-solving tasks.
                            </p>
                        </div>
                    </div>
                    <div class="panel">

                        <div id="collapse4" class="collapse col-md-12">
                            <h3>Research:</h3>
                            <p>
                                Whatever the cause of the performance differences 
                    between the n-back and other assessments of working memory, some researchers stress the need 
                    for further exploration of the construct validity of the n-back task.
               
                            </p>
                        </div>
                    </div>
                </div>--%>
            </div>
        </section>
        <section>
            <div class="specifications container">
                <h3>Specifications:</h3>
                <p>
                    This test will take about 20 minutes to complete. 
                </p>
                <p>
                    Recommended minimum screen resolution is 1000 x 700. 
                </p>
            </div>
                                 
        </section>
        <div class ="container">
            <asp:LinkButton ID="runTest" runat="server" class="signup-btn" OnClick="runTest_Click">Run Test</asp:LinkButton>
        </div>

            <section>
            <div class="container right">

<%--                <asp:LinkButton ID="runTest" runat="server" class="signup-btn" OnClick="runTest_Click">Run Test</asp:LinkButton>--%>
                <div id="requestToReg" runat="server" visible="true">
                    <p>
                        <a href="../Login.aspx">Please Login </a>
                    </p>
                    <p>OR</p>
                    <p>
                        <a href="../Login.aspx">Register</a>
                    </p>
                </div>
            </div>
        </section>
   
         

        <section id="follow-us">
            <div class="container">
                <div class="text-center height-contact-element">
                    <h3>Follow Us</h3>
                         <p>+1(719)888 9121</p> 
                </div>
                <img class="img-responsive displayed" src="../images/line-separator.png" alt="short" />
                <div class="text-center height-contact-element">
                    <ul class="list-unstyled list-inline list-social-icons">
                        <li class="active"><a href="https://www.facebook.com/CogQuiz-1644904339158958/"><i class="fa fa-facebook social-icons"></i></a></li>
                        <li><a href="https://twitter.com/cogquizcom"><i class="fa fa-twitter social-icons"></i></a></li>
                        <li><a href="https://plus.google.com/u/3/113821050703373361140?hl=en"><i class="fa fa-google-plus social-icons"></i></a></li>
                        <li><a href="https://www.linkedin.com/company-beta/13213074/"><i class="fa fa-linkedin social-icons"></i></a></li>
                    </ul>
                </div>
            </div>
        </section>

    </form>
    <footer id="footer">
        <div class="container">
            <div class="row myfooter">
                <div class="col-sm-6">
                    <div class="pull-left">
                        © Copyright Coquiz 2016 
                    </div>
                </div>
                <div class="col-sm-6">
                    
                </div>
            </div>
        </div>
            <script src="https://use.fontawesome.com/0138464303.js"></script>
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
        <script src="../js/jquery.js"></script>
    <!-- Bootstrap Core JavaScript -->
    <script src="../js/bootstrap.min.js"></script>
    <script>

        $(document).ready(function () {

            $('.custom-menu a[href^="#"], .intro-scroller .inner-link').on('click', function (e) {
                e.preventDefault();

                var target = this.hash;
                var $target = $(target);

                $('html, body').stop().animate({
                    'scrollTop': $target.offset().top
                }, 900, 'swing', function () {
                    window.location.hash = target;
                });
            });

            $('a.page-scroll').bind('click', function (event) {
                var $anchor = $(this);
                $('html, body').stop().animate({
                    scrollTop: $($anchor.attr('href')).offset().top
                }, 1500, 'easeInOutExpo');
                event.preventDefault();
            });

            $(".nav a").on("click", function () {
                $(".nav").find(".active").removeClass("active");
                $(this).parent().addClass("active");
            });

            $('body').append('<div id="toTop" class="btn btn-primary color1"><span class="glyphicon glyphicon-chevron-up"></span></div>');
            $(window).scroll(function () {
                if ($(this).scrollTop() != 0) {
                    $('#toTop').fadeIn();
                } else {
                    $('#toTop').fadeOut();
                }
            });
            $('#toTop').click(function () {
                $("html, body").animate({ scrollTop: 0 }, 700);
                return false;
            });

        });
    </script>
</body>
</html>

