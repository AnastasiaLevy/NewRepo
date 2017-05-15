<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ErrorPage.aspx.cs" Inherits="TestSite.ErrorPage" %>


<!DOCTYPE html>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="neuropsychological testing error page">
    <meta name="keywords" content="Error page for psychological testing, neuro psych tests error page">
    <title>Error</title>
    <link rel="shortcut icon" href="../images/favicon.ico" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
    <link href="../fonts/font-awesome-4.6.3/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <link href="../cogTest.css" rel="stylesheet" />
    <link rel="shortcut icon" href="images/favicon.ico"/>
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
        <![endif]-->
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
</head>
<body data-spy="scroll" runat="server">
    <form runat ="server">
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
                <a class="navbar-brand" href="MainPage.aspx">
                    <i class="fa fa-cogs" aria-hidden="true">Quiz</i>

                </a>

            </div>
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav navbar-right custom-menu">
                    <li><a href="../MainPage.aspx">Home</a></li>
                </ul>
            </div>
        </div>
    </nav>

    <section id="">
        <div class="" style="padding-top:40px">
            <img src="images/giphy.gif" height ="300" width = "300"  />
        </div>
        <div class="center">Opps! Something went wrong. Please try again later. To report the error, call +1(719)888 9121 or email <a href="mailto:support@cogquiz.com" target="_top">support@cogquiz.com</a></div>
    </section>

    <section id="availableTests">
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
                        © Copyright CogQuiz 2016 
                    </div>
                </div>
                <div class="col-sm-6"> 
                </div>
            </div>
        </div>
    </footer>
</body>
</html>

