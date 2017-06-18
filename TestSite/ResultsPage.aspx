<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ResultsPage.aspx.cs" Inherits="TestSite.ResultsPage" %>

<!DOCTYPE html>

<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="Tower Of London test">
    <meta name="author" content="AnaLevy">
    <meta name="google-site-verification" content="GMj8owmZtkuKU0Fa_4Zg82VbKsQPO8VkZD_pHsRghA4" />
    <title>Test Results
    </title>
    <link rel="shortcut icon" href="images/favicon.ico" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
   <%-- <link href="font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">--%>
    <link href="assets/font-awesome/css/font-awesome.css" rel="stylesheet" />
   <%-- <link href="fonts/font-awesome-4.6.3/css/font-awesome.min.css" rel="stylesheet" type="text/css">--%>
    <link href="cogTest.css" rel="stylesheet" />
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
        <![endif]-->

    <script src="js/jquery.js"></script>
     <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <script src="assets/js/jquery.imgzoom.js"></script>
    <script src="js/sessionManager.js"></script>

</head>
<body data-spy="scroll" runat="server" style="font-size:larger">
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
                    <a class="navbar-brand" href="../MainPage.aspx">
                        <i class="fa fa-cogs" aria-hidden="true"></i>
                        Quiz
                    </a>

                </div>
                <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                    <ul class="nav navbar-nav navbar-right custom-menu">
                        <li><a href="../MainPage.aspx">Home</a></li>
                        <li class="active"><a href="#about">About</a></li>
                        <li id="profOpt" runat="server"><a href="../UserProfile.aspx">Profile</a></li>
                        <li id="login" runat="server"><a href="../Login.aspx">Login</a></li>
                        <li>
                            <asp:LinkButton ID="logOut" class="" type="submit" runat="server" OnClick="logOut_Click">Log Out</asp:LinkButton>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>

        <header>
        </header>

        <!-- Page Content -->
        <section id="content">

            <div class="resultImage">
                <img src="images/myImage.png" data-origin="images/myImage.png" />
            </div>
            <div class="resultGridView">
                <asp:Label class="chartTitle" ID="chartTitle" runat="server" Text="Label"></asp:Label>
                <asp:Panel ID="pResultPanel" runat="server" Width="100%"></asp:Panel>
            </div>
            <div id="interpretation">
                <p>
                    <asp:Literal ID="textStr" runat="server"></asp:Literal>
                </p>
            </div>
            <div id="movesMap" class="container" runat="server" visible="false">
            </div>
            <div>
              
                <%--<asp:Button runat="server" class="btn btn-success" ID="btnExport" Text="Export" OnClick="btnExport_Click" />--%>
               <div class="dropdown">
    <button class="btn btn-primary dropdown-toggle" type="button" data-toggle="dropdown">Export
    <span class="caret"></span></button>
    <ul class="dropdown-menu">
      <li><asp:Button runat="server"  ID="btnPrintR"     CssClass="selectBtn"    Text ="Print" OnClientClick="javascript:window.print();" /></li>
      <li><asp:Button runat="server"  ID="btnExportLine" CssClass="selectBtn"  Text="Export to Excel One Line" OnClick="btnExportLine_Click"/></li>
      <li><asp:Button runat="server"  ID="btnExportNorm" CssClass="selectBtn"  Text="Export to Excel Traditional" OnClick="btnExportNorm_Click" /></li>

    
    </ul>
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
                        © Copyright Cogquiz2016 
                    </div>
                </div>
                <div class="col-sm-6">
                    
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

    <script type="text/javascript">
        $('.resultImage').imgZoom({
            boxWidth: 400,
            boxHeight: 400,
            marginLeft: 5,
            origin: 'data-origin'
        });
    </script>

</body>
</html>


