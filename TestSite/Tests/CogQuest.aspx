<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CogQuest.aspx.cs" Inherits="TestSite.Tests.CogQuest" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">


<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <meta name="description" content=" For Academics, Researchers, Practitioners and more. Cognitive test online, cognitive ability test online from CogQuiz." />
    <meta name="keywords" content="Keywords: Cognitive Style Questionnaire, Cognitive Test Online Practice, Cognitive Ability Test Online" />
    <meta name="author" content="CogQuiz" />
    <meta name="google-site-verification" content="GMj8owmZtkuKU0Fa_4Zg82VbKsQPO8VkZD_pHsRghA4" />
    <title>Psychological Questionnaire, Cognitive Test Online Practice, Cognitive Ability Test Online</title>
    <link rel="shortcut icon" href="../images/favicon.ico" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous" />
    <link href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.2.1/assets/owl.carousel.min.css" rel="stylesheet" />
    <link href="../cogTest.css" rel="stylesheet" />
    <link href="../css/style.css" rel="stylesheet" />
    <%--<link href="../css/previewer.css" rel="stylesheet" />--%>
    <script src="../js/jquery.js"></script>
    <%--<script src="../js/previewer.js"></script>--%>
    <script src="https://use.fontawesome.com/0138464303.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.2.1/owl.carousel.min.js"></script>
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
                    <a class="navbar-brand" href="../MainPage.aspx">
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
                            <asp:LinkButton ID="logOut" class="" type="submit" OnClick="logOut_Click" runat="server">Log Out</asp:LinkButton>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>

        <section id="about">
            <div class="container testDescription">
                <h1>CogQuest Simple Questionnaire</h1>
                <hr />
                <p>CogQuest Quesionnaire desktop tool allows to create a series of questions to gather any needed inforamtion from/about participants. It has 7 types of questions, including Date and Dropdown. CogQuest allows storing data in text file for printing or Excel Document for easy export to SPSS.</p>
                <p>You can create multiple choice questions, Likert scale questions, long open-ended questions, short answer questions, etc. This is ideal for research labs. You can email a demographic questionnaire to a scheduled participant and have it emailed back and thereby avoid loss of valuable laboratory testing time. A patient/client can fill out a questionnaire in the waiting room or mail it in prior to an appointment.</p>
                <asp:LinkButton ID="LinkButton2" class="btn btn-primary btn-lg btn-block" OnClick="LinkButton1_Click" runat="server" Style="display: inline-block; margin: 15px 0; width: auto;">View User Manual</asp:LinkButton>

                <div class="row">
                    <div class="col-md-12">
                        <h3>View Examples</h3>
                        <hr />
                        <div class="row">
                            <div class="col-md-6">
                                <h4>Lorem ipsum dolor sit amet</h4>
                                <ul class="exapmles-list">
                                    <li><span>Sed imperdiet eros nec tellus fringilla, id facilisis ex tempus.</span></li>
                                    <li><span>Lorem ipsum dolor sit amet</span></li>
                                    <li><span>Lorem ipsum dolor sit amet</span></li>
                                    <li><span>Sed imperdiet eros nec tellus fringilla..</span></li>
                                </ul>
                            </div>
                            <div class="col-md-6">
                                <img src="../images/quest1.png" alt="neuropsychological questionnaire" data-toggle="modal" data-target=".bs-modal-1" class="img-responsive" />
                            </div>
                        </div>
                        <hr />
                        <div class="row">
                            <div class="col-md-6">
                                <img src="../images/quest2.png" alt="neuropsychological questionnaire" data-toggle="modal" data-target=".bs-modal-2" class="img-responsive" />
                            </div>
                            <div class="col-md-6">
                                <h4>2. Lorem ipsum dolor sit amet</h4>
                                <p>Sed imperdiet eros nec tellus fringilla, id facilisis ex tempus. Nunc tincidunt, dui id fringilla suscipit, quam urna gravida augue, nec fermentum velit velit et risus. Praesent massa massa, porta vel justo ut, venenatis blandit metus. Fusce nec egestas erat. Etiam auctor neque nec sagittis dignissim. Duis sed sapien luctus orci elementum imperdiet. Duis maximus et lorem nec scelerisque. Vivamus ut elit ante. Proin ut sollicitudin nisl. Donec non enim ipsum.</p>
                            </div>
                        </div>
                        <hr />
                        <div class="row">
                            <div class="col-md-6">
                                <h4>3. Lorem ipsum dolor sit amet</h4>
                                <p>Nullam iaculis ex risus, eu consequat magna venenatis sit amet. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Aliquam condimentum varius elit non interdum. Nam euismod erat vel elit pretium facilisis eget eget lacus. Phasellus sodales vestibulum neque, quis egestas nisi eleifend non. Mauris id cursus ex. Praesent orci neque, pellentesque vulputate sagittis sed, scelerisque eget purus. Vivamus varius pretium metus eu tempor.</p>
                            </div>
                            <div class="col-md-6">
                                <img src="../images/quest3.png" alt="neuropsychological questionnaire" data-toggle="modal" data-target=".bs-modal-3" class="img-responsive" />
                            </div>
                        </div>
                        <hr />
                        <div class="row">
                            <div class="col-md-6">
                                <img src="../images/quest4.png" alt="neuropsychological questionnaire" data-toggle="modal" data-target=".bs-modal-4" class="img-responsive" />
                            </div>
                            <div class="col-md-6">
                                <h4>4. Lorem ipsum dolor sit amet</h4>
                                <p>Maecenas vel lacus in ligula gravida mollis placerat ut quam. Morbi magna tellus, condimentum nec mi et, pulvinar imperdiet ligula. Morbi maximus mi eget justo tristique feugiat. Suspendisse ultrices dolor in leo congue, faucibus luctus nisi pharetra. Vivamus dapibus pellentesque orci, a rutrum risus sodales a. Nulla tempor nunc et magna egestas fermentum. Nulla magna ante, mattis elementum ipsum et, lobortis luctus lacus. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.</p>
                            </div>
                        </div>
                        <hr />
                        <div class="row">
                            <div class="col-md-6">
                                <h4>5. Lorem ipsum dolor sit amet</h4>
                                <p>Nulla sagittis metus ac rutrum tempus. Fusce mollis lorem et velit fermentum rhoncus. In vestibulum fringilla odio, vitae tempus diam aliquam et. Nam vitae elementum purus. Nullam erat urna, porttitor ut risus mattis, vehicula tincidunt quam. Aliquam tempus ornare nulla at efficitur. In nec arcu sed nunc rutrum pellentesque. In hac habitasse platea dictumst. Aliquam vel rhoncus urna. Donec in purus ipsum. In non orci faucibus, ullamcorper augue vel, dignissim velit.</p>
                            </div>
                            <div class="col-md-6">
                                <img src="../images/quest5.png" alt="neuropsychological questionnaire" data-toggle="modal" data-target=".bs-modal-5" class="img-responsive" />
                            </div>
                        </div>
                        <hr />
                        <div class="row">
                            <div class="col-md-6">
                                <img src="../images/quest6.png" alt="neuropsychological questionnaire" data-toggle="modal" data-target=".bs-modal-6" class="img-responsive" />
                            </div>
                            <div class="col-md-6">
                                <h4>6. Lorem ipsum dolor sit amet</h4>
                                <p>Maecenas vel lacus in ligula gravida mollis placerat ut quam. Morbi magna tellus, condimentum nec mi et, pulvinar imperdiet ligula. Morbi maximus mi eget justo tristique feugiat. Suspendisse ultrices dolor in leo congue, faucibus luctus nisi pharetra. Vivamus dapibus pellentesque orci, a rutrum risus sodales a. Nulla tempor nunc et magna egestas fermentum. Nulla magna ante, mattis elementum ipsum et, lobortis luctus lacus. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.</p>
                            </div>
                        </div>
                        <hr />
                        <div class="row">
                            <div class="col-md-6">
                                <h4>7. Lorem ipsum dolor sit amet</h4>
                                <p>Nulla sagittis metus ac rutrum tempus. Fusce mollis lorem et velit fermentum rhoncus. In vestibulum fringilla odio, vitae tempus diam aliquam et. Nam vitae elementum purus. Nullam erat urna, porttitor ut risus mattis, vehicula tincidunt quam. Aliquam tempus ornare nulla at efficitur. In nec arcu sed nunc rutrum pellentesque. In hac habitasse platea dictumst. Aliquam vel rhoncus urna. Donec in purus ipsum. In non orci faucibus, ullamcorper augue vel, dignissim velit.</p>
                            </div>
                            <div class="col-md-6">
                                <img src="../images/quest7.png" alt="neuropsychological questionnaire" data-toggle="modal" data-target=".bs-modal-7" class="img-responsive" />
                            </div>
                        </div>
                        <!--<div class="owl-carousel owl-carousel-photos owl-theme">
                            <img src="../images/quest1.png" alt="neuropsychological questionnaire" data-toggle="modal" data-target=".bs-modal-1" class="item" />
                            <img src="../images/quest2.png" alt="psychological questionnaire maker"  data-toggle="modal" data-target=".bs-modal-2" class="item" />
                            <img src="../images/quest3.png" alt="scales questionnaire" data-toggle="modal" data-target=".bs-modal-3" class="item" />
                            <img src="../images/quest4.png" alt="likert scale" data-toggle="modal" data-target=".bs-modal-4" class="item" />
                            <img src="../images/quest5.png" alt="questionnaire tool" data-toggle="modal" data-target=".bs-modal-5" class="item" />
                            <img src="../images/quest6.png" alt="questionnaire create" data-toggle="modal" data-target=".bs-modal-6" class="item" />
                            <img src="../images/quest7.png" alt="open-ended questions" data-toggle="modal" data-target=".bs-modal-7" class="item" />
                        </div>-->
                        <div class="modal fade bs-modal-1" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel">
                            <div class="modal-dialog modal-lg" role="document">
                                <div class="modal-content">
                                    <img src="../images/quest1.png" alt="neuropsychological questionnaire" class="img-responsive" />
                                </div>
                            </div>
                        </div>
                        <div class="modal fade bs-modal-2" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel">
                            <div class="modal-dialog modal-lg" role="document">
                                <div class="modal-content">
                                    <img src="../images/quest2.png" alt="neuropsychological questionnaire" class="item" />
                                </div>
                            </div>
                        </div>
                        <div class="modal fade bs-modal-3" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel">
                            <div class="modal-dialog modal-lg" role="document">
                                <div class="modal-content">
                                    <img src="../images/quest3.png" alt="neuropsychological questionnaire" class="item" />
                                </div>
                            </div>
                        </div>
                        <div class="modal fade bs-modal-4" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel">
                            <div class="modal-dialog modal-lg" role="document">
                                <div class="modal-content">
                                    <img src="../images/quest4.png" alt="neuropsychological questionnaire" class="item" />
                                </div>
                            </div>
                        </div>
                        <div class="modal fade bs-modal-5" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel">
                            <div class="modal-dialog modal-lg" role="document">
                                <div class="modal-content">
                                    <img src="../images/quest5.png" alt="neuropsychological questionnaire" class="item" />
                                </div>
                            </div>
                        </div>
                        <div class="modal fade bs-modal-6" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel">
                            <div class="modal-dialog modal-lg" role="document">
                                <div class="modal-content">
                                    <img src="../images/quest6.png" alt="neuropsychological questionnaire" class="item" />
                                </div>
                            </div>
                        </div>
                        <div class="modal fade bs-modal-7" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel">
                            <div class="modal-dialog modal-lg" role="document">
                                <div class="modal-content">
                                    <img src="../images/quest7.png" alt="neuropsychological questionnaire" class="item" />
                                </div>
                            </div>
                        </div>
                        <h3>View video Examples</h3>
                        <hr />
                        <div class="owl-carousel owl-carousel-videos owl-theme">
                            <div class="item">
                                <iframe width="100%" height="200" src="https://www.youtube.com/embed/vXISacqBKXo?rel=0" frameborder="0" encrypted-media" allowfullscreen></iframe>
                            </div>
                            <div class="item">
                                <iframe width="100%" height="200" src="https://www.youtube.com/embed/pxrNcS9oqsw?rel=0" frameborder="0" encrypted-media" allowfullscreen></iframe>
                            </div>
                            <div class="item">
                                <iframe width="100%" height="200" src="https://www.youtube.com/embed/u25UdJHugK8?rel=0" frameborder="0" encrypted-media" allowfullscreen></iframe>
                            </div>
                            <div class="item">
                                <iframe width="100%" height="200" src="https://www.youtube.com/embed/yrzTbu5oLkI?rel=0" frameborder="0" encrypted-media" allowfullscreen></iframe>
                            </div>
                            <div class="item">
                                <iframe width="100%" height="200" src="https://www.youtube.com/embed/kTOrwuVgIpI?rel=0" frameborder="0" encrypted-media" allowfullscreen></iframe>
                            </div>
                            <div class="item">
                                <iframe width="100%" height="200" src="https://www.youtube.com/embed/jcmTJY6BSlI?rel=0" frameborder="0" encrypted-media" allowfullscreen></iframe>
                            </div>
                            <div class="item">
                                <iframe width="100%" height="200" src="https://www.youtube.com/embed/4PfM-GR23Sw?rel=0" frameborder="0" encrypted-media" allowfullscreen></iframe>
                            </div>
                            <div class="item">
                                <iframe width="100%" height="200" src="https://www.youtube.com/embed/5Y4cT_vzEDg?rel=0" frameborder="0" encrypted-media" allowfullscreen></iframe>
                            </div>
                        </div>
                    </div>
                </div>



                <div class="panel-group testDescription " id="accordion" role="tablist" aria-multiselectable="true">
                    <div class="row">
                        <div class="col-md-12 visible">
                            <p>
                                <%--<asp:LinkButton ID="LinkButton1" class="btn btn-primary btn-lg btn-block" OnClick="LinkButton1_Click" runat="server" Style="display: inline-block; margin: 15px 0; width: auto;">View User Manual</asp:LinkButton>--%>
                            </p>
                        </div>
                        <div class="col-md-12 visible">
                            <!--<p>
                                <button data-parent="#accordion" class="btn btn-primary btn-lg btn-block" type="button"
                                    data-toggle="collapse" data-target="#collapse1" aria-expanded="false" aria-controls="collapse4">
                                    View Examples
                                </button>
                            </p>
                            <p>
                                <button data-parent="#accordion" class="btn btn-primary btn-lg btn-block" type="button"
                                    data-toggle="collapse" data-target="#collapse2" aria-expanded="false" aria-controls="collapse4">
                                    View video Examples
                                </button>
                            </p>-->


                        </div>
                    </div>

                    <!--<div>
                        <div class="panel">
                            <div id="collapse1" class=" collapse col-md-12">
                                <h3>Examples:</h3>
                                <div class="gallery-wrapper">

                                    <img src="../images/quest1.png" alt="neuropsychological questionnaire" class="g-image" />
                                    <img src="../images/quest2.png" alt="psychological questionnaire maker" class="g-image" />
                                    <img src="../images/quest3.png" alt="scales questionnaire" class="g-image" />
                                    <img src="../images/quest4.png" alt="likert scale" class="g-image" />
                                    <img src="../images/quest5.png" alt="questionnaire tool" class="g-image" />
                                    <img src="../images/quest6.png" alt="questionnaire create" class="g-image" />
                                    <img src="../images/quest7.png" alt="open-ended questions" class="g-image" />

                                    <p class="clear"></p>
                                </div>
                            </div>
                        </div>

                        <div class="panel">
                            <div id="collapse2" class=" collapse col-md-12">
                                <h3>Examples:</h3>
                                <div class="gallery-wrapper">

                                    <iframe width="560" height="315" src="https://www.youtube.com/embed/vXISacqBKXo?rel=0" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>
                                    Block header
                                    <iframe width="560" height="315" src="https://www.youtube.com/embed/pxrNcS9oqsw?rel=0" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>
                                    dropDown
                                    <iframe width="560" height="315" src="https://www.youtube.com/embed/u25UdJHugK8?rel=0" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>
                                    Likert
                                    <iframe width="560" height="315" src="https://www.youtube.com/embed/yrzTbu5oLkI?rel=0" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>
                                    multiAnswer
                                    <iframe width="560" height="315" src="https://www.youtube.com/embed/kTOrwuVgIpI?rel=0" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>
                                    Paragraf
                                    <iframe width="560" height="315" src="https://www.youtube.com/embed/jcmTJY6BSlI?rel=0" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>
                                    single answer
                                    <iframe width="560" height="315" src="https://www.youtube.com/embed/4PfM-GR23Sw?rel=0" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>
                                    textbox
                                    <iframe width="560" height="315" src="https://www.youtube.com/embed/5Y4cT_vzEDg?rel=0" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>
                                    TextFormQuest

                                    <p class="clear"></p>
                                </div>
                            </div>
                        </div>
                    </div>-->
                </div>
                <div class="container right">
                    <asp:Label ID="existsMessage" CssClass="errorMessage" runat="server" Text=""></asp:Label>
                    <asp:LinkButton ID="runTest" runat="server" class="signup-btn" OnClick="runTest_Click">Download</asp:LinkButton>
                </div>
            </div>
        </section>

        <section class="container">
        </section>


        <section id="price" runat="server">
            <div id="wrapper">
                <div class="container">
                    <div class="row">
                        <div class="col-md-6">
                            <div class="circle c1 img-circle" style="float: right;">
                                <h4 class="blue">One Install</h4>
                                <span class="icon blue"><i class="fa fa-usd"></i></span>
                                <span class="price-large blue">45</span>
                                <span class="price-small">.00</span>
                                <p>Install on 1 computer</p>
                                <asp:Button ID="single" class="btn btn-info" runat="server" OnClick="single_Click" Text="Buy Now" />
                            </div>
                        </div>
                        <!-- .Col-md-3 ends here -->

                        <%--                        <div class="col-md-4">
                            <div class="circle c2 img-circle">
                                <h4 class="yellow">3 Installs</h4>
                                <span class="icon yellow"><i class="fa fa-usd"></i></span>
                                <span class="price-large yellow">100</span>
                                <span class="price-small">.00</span>
                                <p>Install on 3 computers</p>
                                <asp:Button ID="ten" class="btn btn-warning" runat="server" OnClick="ten_Click" Text="Buy Now" />
                            </div>
                        </div>--%>
                        <!-- .Col-md-3 ends here -->

                        <div class="col-md-6">
                            <div class="circle c3 img-circle">
                                <h4 class="green">Custom</h4>
                                <span class="price-large green">Call</span>
                                <span class="price-small">for<span class="icon green"><i class="fa fa-usd "></i></span></span>
                                <p>Call for custom order</p>
                                <asp:Button ID="hundred" class="btn btn-success" runat="server" Text="Buy Now" />
                            </div>
                        </div>
                        <!-- .Col-md-3 ends here -->

                        <%--            <div class="col-md-3">
                            <div class="circle c4 img-circle">
                                <h4 class="red">Unlimited Use</h4>
                                <span class="icon red"><i class="fa fa-usd "></i></span>
                                <span class="price-large red">600</span>
                                <span class="price-small">.00</span>
                                <p>
                                    Any Number of Participants
                                <p>

                                    <asp:Button ID="unlim" class="btn btn-danger" runat="server"  Text="Call Us" />
                            </div>
                        </div>--%>
                        <!-- .Col-md-3 ends here -->
                    </div>
                    <!-- .Container ends here -->
                </div>
                <!-- .Row ends here -->
            </div>
        </section>
    </form>
</body>
<script src="../js/bootstrap.min.js"></script>
<script>
    $(document).ready(function () {
        //$('.owl-carousel-photos').owlCarousel({
        //    loop: true,
        //    margin: 10,
        //    nav: true,
        //    navText: '',
        //    mouseDrag: false,
        //    responsive: {
        //        0: {
        //            items: 1
        //        },
        //        600: {
        //            items: 2
        //        },
        //        1000: {
        //            items: 3
        //        }
        //    }
        //});
        $('.owl-carousel-videos').owlCarousel({
            loop: true,
            margin: 10,
            nav: true,
            navText: '',
            mouseDrag: false,
            responsive: {
                0: {
                    items: 1
                },
                600: {
                    items: 2
                },
                1000: {
                    items: 3
                }
            }
        });
        $('.owl-next').addClass("glyphicon glyphicon-chevron-right");
        $('.owl-prev').addClass("glyphicon glyphicon-chevron-left");
        //$('.gallery-wrapper').previewer({});
        //$('.custom-menu a[href^="#"], .intro-scroller .inner-link').on('click', function (e) {
        //    e.preventDefault();

        //    var target = this.hash;
        //    var $target = $(target);

        //    $('html, body').stop().animate({
        //        'scrollTop': $target.offset().top
        //    }, 900, 'swing', function () {
        //        window.location.hash = target;
        //    });
        //});

        //$('a.page-scroll').bind('click', function (event) {
        //    var $anchor = $(this);
        //    $('html, body').stop().animate({
        //        scrollTop: $($anchor.attr('href')).offset().top
        //    }, 1500, 'easeInOutExpo');
        //    event.preventDefault();
        //});

        $(".nav a").on("click", function () {
            $(".nav").find(".active").removeClass("active");
            $(this).parent().addClass("active");
        });

        //$('body').append('<div id="toTop" class="btn btn-primary color1"><span class="glyphicon glyphicon-chevron-up"></span></div>');
        //$(window).scroll(function () {
        //    if ($(this).scrollTop() != 0) {
        //        $('#toTop').fadeIn();
        //    } else {
        //        $('#toTop').fadeOut();
        //    }
        //});
        //$('#toTop').click(function () {
        //    $("html, body").animate({ scrollTop: 0 }, 700);
        //    return false;
        //});

    });
</script>
</html>
