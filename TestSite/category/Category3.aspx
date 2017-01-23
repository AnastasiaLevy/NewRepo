<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Category3.aspx.cs" Inherits="TestSite.blogPosts.Category3" %>

<!DOCTYPE html>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="Memory Tests">
    <title>Processing Speed</title>
    <link rel="shortcut icon" href="../images/favicon.ico"/>
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
                <a class="navbar-brand" href="MainPage.aspx">
                    <i class="fa fa-cogs" aria-hidden="true">Quiz</i>

                </a>

            </div>
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav navbar-right custom-menu">
                    <li><a href="../MainPage.aspx">Home</a></li>
                    <li class="active"><a href="#about">Executive Function</a></li>
                    <li id="profOpt" runat="server"><a href="../UserProfile.aspx">Profile</a></li>
                    <li id="login" runat="server"><a href="../Login.aspx">Login</a></li>
                    <%-- <li>
                        <button id="login" class="btn button" onclick="document.getElementById('id01').style.display='block'" runat="server">Login</button></li>--%>

                    <li>

                        <asp:LinkButton ID="logOut" class="btn button" type="submit" runat="server" OnClick="logOut_Click">Log Out</asp:LinkButton>
                    </li>
                    <!-- 	<li><a href="blog.html">Blog</a></li>
                        <li><a href="single-post.html">Single</a></li> -->
                </ul>
            </div>
        </div>
    </nav>

    <header id="home">
        <div class="category3">
            <div id="tag-cloud"></div>
        </div>
    </header>

    <section id="category3">
        <div class="container MemoryBlock">
            <h2 class="middle">Processing Speed</h2>
            <img class="img-responsive displayed" src="../images/line-separator.png" alt="short" />
            <h3>About:</h3>
            <p>
                Speed of processing has been a major explantory varialbe for enhanced cognitive performace during development. 
                Specifically, there is a exponential increase in the speed of processing from early childhood up through the teenage 
                years. This speed of processing is associated with enhanced cognitive performance. For example, imagine how the
                number of words in a recall test might increase if increased speed of processing allowed for more word rehersal.
            </p>
            <h3></h3>
              <p>
                 Speed of processing increases from early childhood up into the twenties and begins to show a significant decline 
                by the fifties.
            </p>
                <h3></h3>
              <p>
                Similarly, there are reported medium sized correlations between speed of processing and fluid intelligence.
                Currently, the first part of the Trails test can be considered to provide an assessment of speed of processing.
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
                 <li data-type="memory" data-id="id-1" class="port3">
                       <a href="../TrailsWrapper.aspx" id="webdesign1">
                            <img src="../images/trails.jpg" alt=""></a>
                    </li>
                    <li data-type="mobileapps" data-id="id-6" class="port3">
                        <a href="#" id="mobileapps2">
                            <img src="../images/Coming_soon.jpg" alt=""></a>
                    </li>
                 
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
        
         <section id="services">
            <div class="blueback">
                <div class="container" id="boxCat">
                    <div class="text-center homeport2">
                        <h2>Test Categories</h2>
                    </div>
                    <div class="row" >
                        <div class="col-md-12 homeservices1 blueFont row-centered">
                            <div class="col-md-3 portfolio-item col-centered">
                                <div class="text-center">
                                    <a href="javascript:void(0);">
                                        <a href="Category1.aspx"><span class="fa-stack fa-lg">
                                            <i class="fa fa-circle fa-stack-2x"></i>
                                            <i class="fa fa-medium fa-stack-1x "></i>
                                        </span></a>
                                    </a>
                                    <h3><a href="Category1.aspx">Memory</a></h3>

                                </div>
                            </div>
                            <div class="col-md-3 portfolio-item col-centered">
                                <div class="text-center">
                                    <a href="javascript:void(0);">
                                        <a href="Category2.aspx"><span class="fa-stack fa-lg">
                                            <i class="fa fa-circle fa-stack-2x"></i>
                                            <i class="fa fa-book fa-stack-1x"></i>
                                        </span></a>
                                    </a>
                                    <h3><a href="Category2.aspx">Executive function</a></h3>
                                </div>
                            </div>
                            <div class="col-md-3 portfolio-item col-centered">
                                <div class="text-center">
                                    <a href="javascript:void(0);">
                                        <a href="Category4.aspx"><span class="fa-stack fa-lg">
                                            <i class="fa fa-circle fa-stack-2x"></i>
                                            <i class="fa fa-lightbulb-o fa-stack-1x"></i>
                                        </span></a>

                                    </a>
                                    <h3><a href="Category4.aspx">Intelligence</a></h3>
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
            </div>
            <img class="img-responsive displayed" src="../images/line-separator.png" alt="short" />
            <div class="text-center height-contact-element">
                <ul class="list-unstyled list-inline list-social-icons">
                    <li class="active"><a href="https://www.facebook.com/CogQuiz-1644904339158958/"><i class="fa fa-facebook social-icons"></i></a></li>
                    <li><a href="https://twitter.com/cogquizcom"><i class="fa fa-twitter social-icons"></i></a></li>
                    <li><a href="https://plus.google.com/u/3/113821050703373361140?hl=en"><i class="fa fa-google-plus social-icons"></i></a></li>
                    <li><a href="https://www.linkedin.com/in/hasker-davis-8849a914"><i class="fa fa-linkedin social-icons"></i></a></li>
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
                        © Copyright CogQuiz 2016 | <a href="#">Privacy Policy</a> | <a href="#">Terms of Use</a>
                    </div>
                </div>
                <div class="col-sm-6">
                    <div class="pull-right">Designed by <a href="http://www.adldenver.com">ADL</a></div>
                </div>
            </div>
        </div>
    </footer>

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
                bgColor: '#5A7E27',
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

<%--    <script type="text/javascript">

        var _gaq = _gaq || [];
        _gaq.push(['_setAccount', 'UA-36251023-1']);
        _gaq.push(['_setDomainName', 'jqueryscript.net']);
        _gaq.push(['_trackPageview']);

        (function () {
            var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
            ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
            var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
        })();

</script>--%>


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
