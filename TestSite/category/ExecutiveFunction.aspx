﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ExecutiveFunction.aspx.cs" Inherits="TestSite.blogPosts.ExecutiveFunction" %>

<!DOCTYPE html>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="Discover various neuropsychological tests for assessing executive functions in aging by taking tests of executive function, executive function test online at CogQuiz. Visit us!">
    <meta name="keywords" content="Tests of Executive Function, Executive Function Test Online, CogQuiz">
    <meta name="google-site-verification" content="GMj8owmZtkuKU0Fa_4Zg82VbKsQPO8VkZD_pHsRghA4" />
    <title>Tests of Executive Function, Executive Function Test Online – CogQuiz</title>
    <link rel="shortcut icon" href="../images/favicon.ico" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
    <link href="../fonts/font-awesome-4.6.3/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <link href="../cogTest.css" rel="stylesheet" />
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
        <![endif]-->
    <script src="https://use.fontawesome.com/0138464303.js"></script>

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
                <a class="navbar-brand" href="../MainPage.aspx">
                    <i class="fa fa-cogs" aria-hidden="true">Quiz</i>

                </a>

            </div>
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav navbar-right custom-menu">
                    <li><a href="../MainPage.aspx">Home</a></li>
                    <li class="active"><a href="#about">Executive Function</a></li>
                    <li id="profOpt" runat="server"><a href="../UserProfile.aspx">Profile</a></li>
                    <li id="login" runat="server"><a href="..\Login.aspx">Login</a></li>
                    <%--   <li>
                            <button id="login" class="btn button" onclick="document.getElementById('id01').style.display='block'" runat="server">Login</button></li>--%>
                    <li>
                        <asp:LinkButton ID="logOut" class="" type="submit" runat="server" OnClick="logOut_Click">Log Out</asp:LinkButton>
                    </li>
                    <!-- 	<li><a href="blog.html">Blog</a></li>
                        <li><a href="single-post.html">Single</a></li> -->
                </ul>
            </div>
        </div>
    </nav>

    <header id="home">
        <div class="ExecutiveFunction">
            <div id="tag-cloud"></div>
        </div>
    </header>

    <section id="ExecutiveFunction">
        <div class="container MemoryBlock">
            <h2 class="middle">Executive Function</h2>
            <img class="img-responsive displayed" src="../images/line-separator.png" alt="short" />
            <h1>Executive Function</h1>
            <p>
               Executive functions are a set of cognitive processes that monitor, guide, and control our behavior.  These processes facilitate our successful navigation of the world. There is no agreed concensus on the number and nature of these components. However, there is general agreement that these processes are involved in working memory (actively holding and manipulating several bits of information in conscious awareness), inhibition (witholding a response), shifting strategies, attention, and problem solving. For example, imagine the processes a drone pilot has to engage in when flying.  A future Amazon drone pilot has a number of instruments he must monitor and attend to (working memory and attention), be able to switch back and forth between activates (shifting), not drop a package at the wrong address (inhibition), and plan a route to the correct address (problem solving).

            </p>
            <h3>Tests of Executive Function</h3>
            <p>
                The Card Sorting Test available in CogQuiz is thought to measure several different processes of Executive Function. However, it is most prominently associated with an assessment of be able to switch strateges. Secondarly, the Card Sort is associated with working memory where one must hold in awareness the strategy associated with successful performance. The Tower of London is associated primarily with the planning strategy necessary for problem solving. Additionally, working memory will play a role in holding a successful set of moves in conscious awareness when solving a particular problem. The Trails tests has both a speed of processing component and a switching component. The Stroop test has a strong inhibition component. One must overcome the prepotent tendency to read words rather than state their color. 
              
            </p>
                <h3></h3>
            <p>
                
            </p>
        </div>
    </section>
  
        <section id="availableTests">
        <div class="container">
            <div class="row">
                <div class="text-center">
                    <h2>Executive Function Tests:</h2>
                    <img class="img-responsive displayed" src="../images/line-separator.png" alt="about">
                </div>


                <ul class="port2">
                   <li data-type="executive" data-id="id-5" class="port3">
                        <a href="../LondonWrapper.aspx" id="webdesign2">
                            <img src="../images/tower.jpg" alt=""></a>
                    </li>
                    <li data-type="mobileapps" data-id="id-6" class="port3">
                        <a href="../WCSTWrapper.aspx" id="mobileapps2">
                            <img src="../images/coming_soon.jpg" alt=""></a>
                    </li>
                      <li data-type="memory" data-id="id-1" class="port3">
                        <a href="../Tests/NbackWrapper.aspx" id="memory1">
                            <img src="../images/Nback.jpg" alt=""></a>
                    </li>
                 
                </ul>
            </div>
        </div>
    </section>

   
            <section id="services">
            <div class="blueback">
                <div class="container">
                    <div class="text-center homeport2">
                        <h2>Test Categories</h2>
                    </div>
                    <div class="row" >
                        <div class="col-md-12 homeservices1 blueFont row-centered">
                       <div class="col-md-3 portfolio-item col-centered"">
                                <div class="text-center">
                                    <a href="javascript:void(0);">
                                        <a href="Memory.aspx"><span class="fa-stack fa-lg">
                                            <i class="fa fa-circle fa-stack-2x"></i>
                                            <i class="fa fa-medium fa-stack-1x "></i>
                                        </span></a>
                                    </a>
                                    <h3><a href="Memory.aspx">Memory</a></h3>
                                 
                                </div>
                            </div>
                            <div class="col-md-3 portfolio-item col-centered">
                                <div class="text-center">
                                    <a href="javascript:void(0);">
                                        <a href="ProcessingSpeed.aspx"><span class="fa-stack fa-lg">
                                            <i class="fa fa-circle fa-stack-2x"></i>
                                            <i class="fa fa-cogs fa-stack-1x"></i>
                                        </span></a>

                                    </a>
                                    <h3><a href="ProcessingSpeed.aspx">Processing Speed</a></h3>
                                </div>
                            </div>
                            <div class="col-md-3 portfolio-item col-centered">
                                <div class="text-center">
                                    <a href="javascript:void(0);">
                                        <a href="IntelligenceTest.aspx"><span class="fa-stack fa-lg">
                                            <i class="fa fa-circle fa-stack-2x"></i>
                                            <i class="fa fa-lightbulb-o fa-stack-1x"></i>
                                        </span></a>

                                    </a>
                                    <h3><a href="IntelligenceTest.aspx">Intelligence</a></h3>
                                </div>
                            </div>
                        </div>
                    </div>
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

        <div id="id01" class="modal">
   
            <%--  <form class="modal-content animate" runat="server">--%>
            <div class="modal-content animate">
            <div class="imgcontainer">
                <span onclick="document.getElementById('id01').style.display='none'" class="close" title="Close Modal">&times;</span>
                <img src="../images/avatar.png" alt="Avatar" class="avatar">
            </div>

            <div class="containerLogin">
                <asp:Label ID="wrongLogin" runat="server" Text=""></asp:Label>
                </br>
                <label><b>Username</b></label>
                <input class="login" id="userNameLg" type="text" placeholder="Enter Username" name="uname" required runat="server">
                </br>
                <label><b>Password </b></label>
                <input class="login" id="userPwLg" type="password" placeholder="Enter Password" name="psw" required runat="server">
                </br>
                <asp:LinkButton class="btn button" type="submit" runat="server" OnClick="clcLogin">Login</asp:LinkButton>
                <button type="button" onclick="document.getElementById('id01').style.display='none'" class="btn cancelbtn">Cancel</button>
                   <br />
                 <span class=""><a href="../MainPage.aspx#register">Create Account</a></span>
                <br />
                <span class="">Forgot <a href="#">password?</a></span>
            </div>
        </div>
</div>
        <script>
            // Get the modal
            var modal = document.getElementById('id01');

            // When the user clicks anywhere outside of the modal, close it
            window.onclick = function (event) {
                if (event.target == modal) {
                    modal.style.display = "none";
                }
            }

        </script>

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
    </form>
    <!-- jQuery -->
    <script src="../js/jquery.js"></script>
    <!-- Bootstrap Core JavaScript -->
    <script src="../js/bootstrap.min.js"></script>
    <script src="../js/jquery.quicksand.js"></script>

     <script src="http://code.jquery.com/jquery-2.2.1.min.js"></script>
         <script src="../Scripts/jquery.svg3dtagcloud.js"></script>

    <script>

        $(document).ready(function () {

            var entries = [

                { label: 'Psych Today', url: 'https://www.psychologytoday.com/basics/memory', target: '_top' },
                { label: 'Wiki', url: 'https://en.wikipedia.org/wiki/Memory', target: '_top' },
                { label: 'Simply Psych', url: 'http://www.simplypsychology.org/memory.html', target: '_top' },
                { label: 'MIT', url: 'https://www.technologyreview.com/s/513681/memory-implants/', target: '_top' },
                { label: 'Human', url: 'http://www.human-memory.net/intro_what.html', target: '_top' },
                { label: 'Study', url: 'http://www.human-memory.net/intro_study.html', target: '_top' },
                { label: 'Adaptive', url: 'https://en.wikipedia.org/wiki/Adaptive_memory', target: '_top' },
                { label: 'Genetic', url: 'https://en.wikipedia.org/wiki/Genetic_memory_(psychology)', target: '_top' },
                { label: 'BBC', url: 'http://www.bbc.com/news/health-25156510', target: '_top' },
                { label: 'Memory', url: 'http://www.cerebromente.org.br/n01/memo/memory.htm', target: '_top' },
                { label: 'Types', url: 'http://www.human-memory.net/types.html', target: '_top' },
                { label: 'Psych Today', url: 'https://www.psychologytoday.com/basics/memory', target: '_top' },
                { label: 'Wiki', url: 'https://en.wikipedia.org/wiki/Memory', target: '_top' },
                { label: 'Simply Psycho', url: 'http://www.simplypsychology.org/memory.html', target: '_top' },
                { label: 'MIT', url: 'https://www.technologyreview.com/s/513681/memory-implants/', target: '_top' },
                { label: 'Human', url: 'http://www.human-memory.net/intro_what.html', target: '_top' },
                { label: 'Study', url: 'http://www.human-memory.net/intro_study.html', target: '_top' },
                { label: 'Adaptive', url: 'https://en.wikipedia.org/wiki/Adaptive_memory', target: '_top' },
                { label: 'Genetic', url: 'https://en.wikipedia.org/wiki/Genetic_memory_(psychology)', target: '_top' },
                { label: 'BBC', url: 'http://www.bbc.com/news/health-25156510', target: '_top' },
                { label: 'Memory', url: 'http://www.cerebromente.org.br/n01/memo/memory.htm', target: '_top' },
                { label: 'Types', url: 'http://www.human-memory.net/types.html', target: '_top' }


            ];

            var settings = {

                entries: entries,
                width: 640,
                height: 450,
                radius: '70%',
                radiusMin: 80,
                bgDraw: true,
                bgColor: '#FFDB99',
                opacityOver: 1.00,
                opacityOut: 0.05,
                opacitySpeed: 6,
                fov: 800,
                speed: 2,
                fontFamily: 'Oswald, Arial, sans-serif',
                fontSize: '15',
                fontColor: '#fff',
                fontWeight: 'normal',//bold
                fontStyle: 'normal',//italic 
                fontStretch: 'normal',//wider, narrower, ultra-condensed, extra-condensed, condensed, semi-condensed, semi-expanded, expanded, extra-expanded, ultra-expanded
                fontToUpperCase: true

            };

            //var svg3DTagCloud = new SVG3DTagCloud( document.getElementById( 'holder'  ), settings );
            $('#tag-cloud').svg3DTagCloud(settings);

        });

    </script>

    <script type="text/javascript">

        var _gaq = _gaq || [];
        _gaq.push(['_setAccount', 'UA-36251023-1']);
        _gaq.push(['_setDomainName', 'jqueryscript.net']);
        _gaq.push(['_trackPageview']);

        (function () {
            var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
            ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
            var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
        })();

</script>


    <!--Jquery Smooth Scrolling-->
    <script>
        $(document).ready(function () {
            //$('#login').on('click', function (e) {
            //    e.preventDefault();

            //});
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

    <script>
        function gallery() { };

        var $itemsHolder = $('ul.port2');
        var $itemsClone = $itemsHolder.clone();
        var $filterClass = "";
        $('ul.filter li').click(function (e) {
            e.preventDefault();
            $filterClass = $(this).attr('data-value');
            if ($filterClass == 'all') { var $filters = $itemsClone.find('li'); }
            else { var $filters = $itemsClone.find('li[data-type=' + $filterClass + ']'); }
            $itemsHolder.quicksand(
              $filters,
              { duration: 1000 },
              gallery
              );
        });

        $(document).ready(gallery);
    </script>

</body>
</html>
