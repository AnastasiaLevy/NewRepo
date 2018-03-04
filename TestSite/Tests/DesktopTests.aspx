<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DesktopTests.aspx.cs" Inherits="TestSite.Tests.DesktopTests" %>

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
    <title>Tower Of London</title>
    <link rel="shortcut icon" href="../images/favicon.ico" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous" />
    <link href="../cogTest.css" rel="stylesheet" />
    <link href="../css/style.css" rel="stylesheet" />
    <link href="../css/previewer.css" rel="stylesheet" />
    <script src="../js/jquery.js"></script>

    <script src="../js/previewer.js"></script>
    <script src="https://use.fontawesome.com/0138464303.js"></script>

</head>

<body data-spy="scroll" runat="server" class="desktop-test-page">
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
                        <li class=""><a href="#contact">Order Form</a></li>
                        <li id="profOpt" runat="server"><a href="../UserProfile.aspx">Profile</a></li>
                        <li id="login" runat="server"><a href="../Login.aspx">Login</a></li>
                        <li>
                            <asp:LinkButton ID="logOut" class="" type="submit" OnClick="logOut_Click" runat="server">Log Out</asp:LinkButton>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>

        <div class="sidebar-nav" style="position: fixed; margin-top: 10%">
            <div class="well" style="width: 120px; padding: 8px 0;">
                <ul class="nav nav-list">

                    <li class=""><a href="#london">Tower Of London</a></li>
                    <li class=""><a href="#cardSort">Card Sort</a></li>
                    <li class=""><a href="#CPT">CPT</a></li>
                    <li class=""><a href="#hanoi">Tower of Hanoi</a></li>
                    <li class=""><a href="#reaction">Reaction Time</a></li>
                    <li class=""><a href="#trails">Trails</a></li>

                </ul>
            </div>
        </div>

        <section id="about">
            <div class="container testDescription">
                <h1>Desktop Tests Collection</h1>
                <hr />
                <img src="../images/desktops/backgr.png" style="width: 100%;"/>

                <p>
                    The CogQuiz Test Collection offers flexible tests for your desktop. It offeres one database for all test, Normed data, and the ability to make your own tests. 
                    
                    
                </p>

            </div>

            <div class="container">
                <asp:Label ID="existsMessage" CssClass="errorMessage" runat="server" Text=""></asp:Label>

                <%--   <asp:LinkButton ID="runTest" runat="server" class="signup-btn" OnClick="runTest_Click">Download</asp:LinkButton>--%>

                <section id="deskTopList">
                    <div class="row">
                        <div class="box btn-wrapper">
                            <div class="col-lg-12">
                                <hr />
                                <h2 class="intro-text text-center">Available
                            <strong>Tests</strong>
                                </h2>
                                <hr />
                            </div>
                            <div class="col-sm-2 text-center">
                                <a href="#london" class="btn btn-labeled btn-info">
                                    <span><strong>Tower of London </strong></span>
                                </a>
                            </div>
                            <div class="col-sm-2 text-center">
                                <a href="#hanoi" class="btn btn-labeled btn-info">
                                    <span><strong>Tower of Hanoi</strong></span>
                                </a>

                            </div>
                            <div class="col-sm-2 text-center">
                                <a href="#trails" class="btn btn-labeled btn-info">
                                    <span><strong>Trail Making Test</strong></span>
                                </a>
                            </div>
                            <div class="col-sm-2 text-center">
                                <a href="#reaction" class="btn btn-labeled btn-info">
                                    <span><strong>Reaction Time</strong></span>
                                </a>

                            </div>
                            <div class="col-sm-2 text-center">
                                <a href="#CPT" class="btn btn-labeled btn-info">
                                    <span><strong>Continious Performance</strong></span>
                                </a>
                            </div>
                            <div class="col-sm-2 text-center">
                                <a href="#cardSort" class="btn btn-labeled btn-info">
                                    <span><strong>Card Sort Test</strong></span>
                                </a>
                            </div>
                            <div class="clearfix"></div>
                        </div>
                    </div>

                </section>

            </div>

        </section>

        <section class="container margin testDescription" id="london">
            <h1>Tower of London</h1>
            <hr />
            <div class="gallery-wrapper">

                <img src="../images/desktops/lnd_1.png" alt="neuropsychological questionnaire" class="g-image" />
                <img src="../images/desktops/lnd_2.png" alt="neuropsychological questionnaire" class="g-image" />
                <img src="../images/desktops/lnd_3.png" alt="neuropsychological questionnaire" class="g-image" />
                <img src="../images/desktops/lnd_4.png" alt="neuropsychological questionnaire" class="g-image" />
                <img src="../images/desktops/lnd_5.png" alt="neuropsychological questionnaire" class="g-image" />
                <img src="../images/desktops/lnd_6.png" alt="neuropsychological questionnaire" class="g-image" />
                <img src="../images/desktops/lnd_7.png" alt="neuropsychological questionnaire" class="g-image" />
                <img src="../images/desktops/lnd_1.png" alt="neuropsychological questionnaire" class="g-image" />
                <p class="clear"></p>
            </div>
            <%--            <p>
                The Tower of London (TOL) is a commonly used tower transfer task originally designed by Timothy Shallice to detect and measure planning deficits in individuals with frontal lobe lesions. In the manual TOL, participants are shown two identical stimulus boards containing three colored spheres; red, white, and green, mounted on three wooden pegs of varying size able to hold up to one, two, or three spheres. You have purchased the computerized CogQuiz version of the Tower of London. This computerized version allows you to determine the number of beads, the number of pegs, and you can set virtually and of the typical problem arrangements. You can follow any of the manual versions where typically at the beginning of each trial, the participant’s board is reset to the same start arrangement while the experimenter’s board displays the goal arrangement. The participant’s goal is to match their arrangement (start state), to the arrangement displayed on the experimenter’s board (goal state). Measures of performance on the TOL vary between studies, but the most commonly used metrics of success are trial completion (creating the correct arrangement), total number of moves, and total completion time (Berg & Byrd, 2002; Berg, Byrd, McNamara, & Macdonald, 2006). You program allows additional measures of performance will be collected.

The TOL was adapted from another tower transfer task, the Tower of Hanoi (TOH) (Shallice, 1982). Both of these tests are similar in the sense that the participant must use their planning abilities to find and execute the most efficient means of moving a series of spheres or discs from a starting state to a goal state that has been specified by the examiner (Berg & Byrd, 2002). However, in recent years, the TOL has become a much more commonly used test than the TOH due to its wider and more versatile problem set and the greater number of testing parameters that are measured in the TOL.

The TOL has a diverse problem set that exposes participants to a wide variety of different tower arrangements. There is no universal iterative strategy underlying successful solution of TOL problems. Thus, the individual must utilize a greater assortment of different strategies for each trial. There may be some overlap in the strategies used to solve TOL problems. Some problem sets utilize “problem nesting,” which is the process of embedding moves from a 3 move problem into a 5 move problem later in the test (Berg & Byrd, 2002). As well as controlling for difficulty, the experimenter can create a wider variety of qualitatively different problems (Berg & Byrd, 2002; Shallice & Burgess, 1991). Having a wider variety of potential problems allows greater applicability to a variety of populations with varying levels of impairment. Since there are numerous arrangements of spheres and pegs available, experimenters are able to control the difficulty of their test as the problem sequence progresses. This allows experimenters to tailor the test specifically to the population of interest (Kaller et al., 2012; Unterrainer & Owen, 2006)..

There are many different forms of the TOL and we have followed the suggestions of leading researchers in devising the problem sets included in the Tower of London.
            </p>--%>


            <p>
                The most significant improvement in the CogQuiz TOL is the timing and record keep that can be obtained with a computerized test, and most notably, the ability to create a number of tests for varying populations. The relative low cost of the TOL, the ability to reliably collect various test parameters, and standardizing the procedure, researchers are able to investigate the same cognitive processes with different populations, showing how various conditions can differentially affect planning ability.
            </p>

            <p>While the TOL was developed as a manual test to be implemented using wooden stimulus boards, there is an increasing amount of evidence to support the use of computerized methods of testing. Using computerized testing methods allows for greater standardization of testing procedures and can reduce experimenter biases that may come out during an in person testing session.</p>

            <p>
                Additionally, since the test has been standardized, experimenters do not need to be as highly trained as would be necessary in a traditional testing format (Zygouris & Tsolaki, 2015). Since the experimenters do not need to be trained as thoroughly, overall cost and time of the experiment can be reduced. Research assistants do not need to be trained compensated. As well as ease of administration, computerized testing simplifies the data gathering process and, in many cases, can increase the accuracy of the measurement. Since the administration and data gathering and analysis all take place on the same platform, the data can be stored between tests and changes in performance can be easily tracked over time (Cambridge Cognition, 2012; CNS Vital Signs, 2012; Neurotrax Corporation, 2003;).
            </p>
            <p>
                Since its creation as a means of assessing planning ability, the TOL has been implemented as a tool for measuring various domains of executive functioning (Bottari et al., 2009; Köstering et al., 2015; Owen, 2005) as well as spatial planning (Berg & Byrd, 2005; Berg, Byrd, McNamara, & MacDonald, 2006; Kaller, Unterrainer, & Stahl, 2012; Pulos & Denzine, 2005; Shallice, 1982; Unterrainer & Owen, 2006), working memory (Albert & Steinberg, 2011; Berg & Byrd, 2002; Pulos & Denzine, 2005), inhibition (Albert & Steinberg, 2011; Berg & Byrd, 2002; Shallice, 1982), and task shifting (Pulos & Denzine, 2005).

In addition to Shallice’s (1982) original findings of deficits in individuals with frontal lobe lesions, there have emerged several additional populations that frequently show deficits in their performance on the TOL; those with neurological and psychiatric conditions such as depression or Parkinson’s (Jacobs & Anderson, 2002), individuals who have suffered a traumatic brain injury (TBI), Alzheimer’s and related dementias (Carlin et al., 2000), ADHD (Culbertson & Zillmer, 1998), Autism (Wisley & Howlin, 2009), and schizophrenia (Landua & Morris, 2011)
                    
            </p>


            <section id="price" runat="server">
                <div>
                    <div class="container">
                        <div class="row">
                            <div class="col-md-4">
                                <div class="circle c1 img-circle">
                                    <h4 class="blue">Install</h4>
                                    <span class="icon blue"><i class="fa fa-usd"></i></span>
                                    <span class="price-large blue">499</span>
                                    <span class="price-small">.00</span>
                                    <p><a href="#contact" class="btn btn-info">Order Now</a></p>
                                    <%--       <asp:Button ID="single" class="btn btn-info" runat="server" OnClick="single_Click" Text="Buy Now" />--%>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>

            <hr />
            <br />
            <section id="cardSort" class="margin testDescription">
                <h1>Card Sort</h1>
                <hr />
                <div class="gallery-wrapper">

                    <img src="../images/desktops/cs_1.png" alt="neuropsychological questionnaire" class="g-image" />
                    <img src="../images/desktops/cs_2.png" alt="neuropsychological questionnaire" class="g-image" />
                    <img src="../images/desktops/cs_3.png" alt="neuropsychological questionnaire" class="g-image" />
                    <img src="../images/desktops/cs_4.png" alt="neuropsychological questionnaire" class="g-image" />
                    <img src="../images/desktops/cs_5.png" alt="neuropsychological questionnaire" class="g-image" />
                    <img src="../images/desktops/cs_6.png" alt="neuropsychological questionnaire" class="g-image" />
                    <img src="../images/desktops/cs_7.png" alt="neuropsychological questionnaire" class="g-image" />
                    <img src="../images/desktops/cs_1.png" alt="neuropsychological questionnaire" class="g-image" />
                    <p class="clear"></p>
                </div>
                <p>
                    Card Sorting task provides considerable flexibility in task definition. The number of stimulus cards can range from two to five and the number of sort dimensions, from two to five. One of the categories can be user defined, allowing for the definition of classes of stimuli. The card definition tool allows test authors to create their own stimulus and response card definitions. Cards can display alpha/numeric characters, any image that can be realized as a “dingbat” or words. Response card decks can be of any size and their presentation can be controlled either by the participant or the computer. Category (stage) shifts can be either signaled or unsignaled. All test messages and instructions can be tailored to meet the needs of the test author. Participant response modalities include “point and click” and touch.
Tests can be analyzed using any one of three analysis protocols or the test user can print a basic analysis sheet displaying basic participant performance for “hand” analysis. The package comes with normative data collected on 2875 participants grouped in age cohorts from five to nine years, 10 to 14 years, 15 to 19 years and in 10 year groups from the 20 to >80 years on the Canonical 128 Test. As Tien, et al., 1996, Feldstein, et al., 1999, and Steinmetz, 2010 have all shown significant outcome differences between manually administered card sorting tests and tests administered using a computer, this normative data set represents a considerable step forward in computer based card sorting tasks.
                    
                </p>

            </section>
            <section id="Section2" runat="server">
                <div>
                    <div class="container">
                        <div class="row">
                            <div class="col-md-4">
                                <div class="circle c1 img-circle">
                                    <h4 class="blue">Install</h4>
                                    <span class="icon blue"><i class="fa fa-usd"></i></span>
                                    <span class="price-large blue">499</span>
                                    <span class="price-small">.00</span>
                                    <p><a href="#contact" class="btn btn-info">Order Now</a></p>
                                    <%--     <asp:Button ID="Button2" class="btn btn-info" runat="server" OnClick="single_Click" Text="Buy Now" />--%>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>

            <hr />
            <br />
            <section id="CPT" class="margin testDescription">
                <h1>CPT</h1>
                <hr />
                <div class="gallery-wrapper">

                    <img src="../images/desktops/cpt_1.png" alt="neuropsychological questionnaire" class="g-image" />
                    <img src="../images/desktops/cpt_2.png" alt="neuropsychological questionnaire" class="g-image" />
                    <img src="../images/desktops/cpt_3.png" alt="neuropsychological questionnaire" class="g-image" />
                    <img src="../images/desktops/cpt_4.png" alt="neuropsychological questionnaire" class="g-image" />
                    <img src="../images/desktops/cpt_5.png" alt="neuropsychological questionnaire" class="g-image" />
                    <img src="../images/desktops/cpt_6.png" alt="neuropsychological questionnaire" class="g-image" />
                    <img src="../images/desktops/cpt_7.png" alt="neuropsychological questionnaire" class="g-image" />
                    <img src="../images/desktops/cpt_8.png" alt="neuropsychological questionnaire" class="g-image" />
                    <p class="clear"></p>
                </div>
                <p>
                    Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus tincidunt, mauris non sodales feugiat, turpis elit accumsan nisi, et commodo metus mi ultrices nunc. 
                    Duis ac pellentesque tortor. Maecenas feugiat velit erat, ac molestie nisl suscipit eget. Nam ultricies rutrum nibh, sed venenatis tellus tempor in. 
                    Phasellus rhoncus vel libero nec lacinia. Suspendisse in varius libero. Suspendisse semper turpis ut leo commodo, et pretium mi placerat. Nullam nec sapien dui. 
                    Nam ac lorem et dui porta facilisis. Quisque ut bibendum magna. Donec orci ex, porta vitae fringilla sed, porta eu elit.
                    
                </p>

            </section>
            <section id="Section3" runat="server">
                <div>
                    <div class="container">
                        <div class="row">
                            <div class="col-md-4">
                                <div class="circle c1 img-circle">
                                    <h4 class="blue">Install</h4>
                                    <span class="icon blue"><i class="fa fa-usd"></i></span>
                                    <span class="price-large blue">299</span>
                                    <span class="price-small">.00</span>
                                    <p><a href="#contact" class="btn btn-info">Order Now</a></p>
                                    <%--    <asp:Button ID="Button3" class="btn btn-info" runat="server" OnClick="single_Click" Text="Buy Now" />--%>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
            <hr />
            <br />
            <section id="hanoi" class="margin testDescription">
                <h1>Tower of Hanoi</h1>
                <hr />
                <div class="gallery-wrapper">

                    <img src="../images/desktops/toh_1.png" alt="neuropsychological questionnaire" class="g-image" />
                    <img src="../images/desktops/toh_2.png" alt="neuropsychological questionnaire" class="g-image" />
                    <img src="../images/desktops/toh_3.png" alt="neuropsychological questionnaire" class="g-image" />
                    <img src="../images/desktops/toh_4.png" alt="neuropsychological questionnaire" class="g-image" />
                    <img src="../images/desktops/toh_5.png" alt="neuropsychological questionnaire" class="g-image" />
                    <img src="../images/desktops/toh_6.png" alt="neuropsychological questionnaire" class="g-image" />
                    <img src="../images/desktops/toh_7.png" alt="neuropsychological questionnaire" class="g-image" />
                    <img src="../images/desktops/toh_8.png" alt="neuropsychological questionnaire" class="g-image" />

                    <p class="clear"></p>
                </div>
                <p>
                    Flexibility in problem design allowing for 3 to 6 rings to be used in the problem with complete control over the starting configuration of the rings and the "goal" peg
Storage of all participant information in the unified Participant database.
Extensive age-stratified norms for included tests, broken out in ten year cohorts.
Trials can be specified as either timed (i.e., the trial is terminated after a predetermined amount of time has elapsed) or untimed
Trials can be set to terminate after a specified number of moves.
 Playback feature allows the user to view the exact moves of any test taken and facilitates the examination of participant problem solving strategies.
Response modalities include both touch screen and mouse -- the latter offering either a point and click option or a slide bar option.
Text-to-speech support for instructions.
Custom instructions and test captions can be written for each trial (in any language that utilizes the Roman alphabet).
Variety of in-depth analyses can be performed and data can be exported to external tools (e.g., spreadsheets, statistical package, etc. for custom analysis).
Standard test anaysis as well as access to the "real time" data record (i.e. , a record of all salient events and their time of occurance in milliseconds including the time between events, total time to complete a trial, and the number of correct and incorrect responses).
                    
                </p>

            </section>
            <section id="Section4" runat="server">
                <div>
                    <div class="container">
                        <div class="row">
                            <div class="col-md-4">
                                <div class="circle c1 img-circle">
                                    <h4 class="blue">Install</h4>
                                    <span class="icon blue"><i class="fa fa-usd"></i></span>
                                    <span class="price-large blue">399</span>
                                    <span class="price-small">.00</span>
                                    <p><a href="#contact" class="btn btn-info">Order Now</a></p>
                                    <%--     <asp:Button ID="Button4" class="btn btn-info" runat="server" OnClick="single_Click" Text="Buy Now" />--%>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>

            <hr />
            <br />
            <section id="reaction" class="margin">
                <h1>Reaction Time</h1>
                <hr />
                <div class="gallery-wrapper">

                    <img src="../images/DesktopTests1.png" alt="neuropsychological questionnaire" class="g-image" />
                    <img src="../images/DesktopTests2.png" alt="neuropsychological questionnaire" class="g-image" />
                    <img src="../images/DesktopTests3.png" alt="neuropsychological questionnaire" class="g-image" />
                    <img src="../images/DesktopTests4.png" alt="neuropsychological questionnaire" class="g-image" />
                    <img src="../images/DesktopTests5.png" alt="neuropsychological questionnaire" class="g-image" />
                    <img src="../images/DesktopTests6.png" alt="neuropsychological questionnaire" class="g-image" />
                    <img src="../images/DesktopTests7.png" alt="neuropsychological questionnaire" class="g-image" />
                    <img src="../images/DesktopTests8.png" alt="neuropsychological questionnaire" class="g-image" />
                    <p class="clear"></p>
                </div>
                <p>
                    Designed to assess subjects’ speed of processing on three relatively simple tasks. which, following Teng (1990), include:  a simple reaction time test; a choice test; and a conditional choice test.  The inclusion of the simple reaction time test allows the investigator to partial out performance variations due to both motor and cognitive components.  
Participant response can be via the "trigger" on a standard "game pad; a keyboard; or a numeric keypad.   
In addition to the tasks to be used in the test, the average inter-stimulus interval (a minimum and maximum range), and the number of stimuli presented for each task (as well as the mode of response) can all be set by the investigator. 
The analysis includes means and standard deviations for response latencies for single sessions, as well as both the participant’s reaction time and the trigger pulled.    
Analysis also includes a running record of all test events, with a unique timestamp for each event.
Analyses can be printed or exported to clipboard.
Unique instructions can be written for each task within a test (in any language utilizing the Roman alphabet), as well as a unique “Thank You” message to be displayed at the end of the test.
A “Speak Instructions” option directs the program to speak the instructions to the participant while the written instructions are being displayed on the screen
                    
                </p>

            </section>
            <section id="Section5" runat="server">
                <div>
                    <div class="container">
                        <div class="row">
                            <div class="col-md-4">
                                <div class="circle c1 img-circle">
                                    <h4 class="blue">Install</h4>
                                    <span class="icon blue"><i class="fa fa-usd"></i></span>
                                    <span class="price-large blue">99</span>
                                    <span class="price-small">.00</span>
                                    <p><a href="#contact" class="btn btn-info">Order Now</a></p>
                                    <%--          <asp:Button ID="Button5" class="btn btn-info" runat="server" OnClick="single_Click" Text="Buy Now" />--%>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>

            <hr />
            <br />
            <section id="trails" class="margin">
                <h1>Trails</h1>
                <hr />
                <div class="gallery-wrapper">

                    <img src="../images/desktops/tnt_1.png" alt="neuropsychological questionnaire" class="g-image" />
                    <img src="../images/desktops/tnt_2.png" alt="neuropsychological questionnaire" class="g-image" />
                    <img src="../images/desktops/tnt_3.png" alt="neuropsychological questionnaire" class="g-image" />
                    <img src="../images/desktops/tnt_4.png" alt="neuropsychological questionnaire" class="g-image" />
                    <img src="../images/desktops/tnt_5.png" alt="neuropsychological questionnaire" class="g-image" />
                    <img src="../images/desktops/tnt_6.png" alt="neuropsychological questionnaire" class="g-image" />
                    <img src="../images/desktops/tnt_7.png" alt="neuropsychological questionnaire" class="g-image" />
                    <img src="../images/desktops/tnt_1.png" alt="neuropsychological questionnaire" class="g-image" />
                    <p class="clear"></p>

                </div>
                <p>
                    The Trail Making Test (TMT) is a widely used neuropsychological assessment (Rabin, Barr, & Burton, 2005) that was originally devised in 1938. The TMT was originally known as the “Partington’s Pathways Test,” or “Divided Attention Test” (Partington & Leiter, 1949) and was initially part of a battery of tests (Army Individual Test Battery) used to assess “a variety of intellectual functions different from those measured by the Wechsler-Bellevue Intelligence Scale.” (Spreen & Strauss, 1998). While the test is most  
typically administered in its original form, alternative forms have been developed to meet the  
testing needs of either alternative clinical populations or cognitive science research agendas. The desktop version of the TMT you have purchased will allow you to produce computerized version of virtually all the commercial paper and pencil Trail Making Tests.  
 
For example, the Color Trails Test (CTT), was developed as part of a neuropsychological test battery  
for the World Health Organization’s cross-cultural study of HIV-1 infection (Maj, et al., 1991).  
The test was subsequently modified for use with children (Williams et al., 1995). In both cases  
the modifications are presumed to minimize the cultural bias introduced by the use of Roman  
letters in part B of the more traditional TMT (Maj, et al., 1991). Your CogQuiz desktop version allows you to make a computerized version of the CTT and if you so desired create norms for different populations.  
 
Additionally, if you are doing repeated administrations of the TMT you can make inverted, reflected, and inverted/reflected versions that contain the same number of bubbles to be connected with equivalent spacing. This reduces the problem of enhanced performance when the TMT is repeatedly administered. 
 
You will find the TMT part A useful if you are attempting to obtain some assessment of attention, visual scanning, speed of eye-hand coordination and information processing. The TMT part B assesses the ability to alternate between stimulus sets and as such is a measure of “executive function” (Mitrushina,  
et al., 1999). 
                    
                </p>

            </section>
            <section id="Section1" runat="server">
                <div>
                    <div class="container">
                        <div class="row">
                            <div class="col-md-4">
                                <div class="circle c1 img-circle">
                                    <h4 class="blue">Call or Email to activate</h4>
                                    <span class="icon blue"><i class="fa fa-usd"></i></span>
                                    <span class="price-large blue">299</span>
                                    <span class="price-small">.00</span>
                                    <p><a href="#contact" class="btn btn-info">Order Now</a></p>
                                    <%--    <asp:Button ID="Button1" class="btn btn-info" runat="server" OnClick="single_Click" Text="Activate" />--%>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>

            <hr />
        </section>

        <section id="contact">
            <div class="container" style="height: 300px">
                <h4>Please fill out the order form:</h4>
                <h4 id="contactError" runat="server"></h4>
                <asp:Label class="label" ID="name" runat="server" Text="Your Name:"></asp:Label>
                <input id="emailName" class="email" type="text" runat="server" />
                <asp:Label class="label" ID="Label2" runat="server" Text="Your Email:"></asp:Label>
                <input id="emailFrom" class="email" type="text" runat="server" />
                <asp:Label class="label" ID="Label3" runat="server" Text="Message:"></asp:Label>
                <textarea id="emailText" class="email" cols="20" rows="5" runat="server"></textarea>

                <asp:LinkButton class="bnt btn-sm btn-success" type="submit" runat="server" OnClick="clcSendButton">Send Email</asp:LinkButton>

            </div>
        </section>
    </form>

</body>

<script src="../js/bootstrap.min.js"></script>
<script>

    $(document).ready(function () {
        $('.gallery-wrapper').previewer({});
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

</html>

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
