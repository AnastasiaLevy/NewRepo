<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CogQuest.aspx.cs" Inherits="TestSite.Tests.CogQuest" MasterPageFile="~/Layout.Master"
    Culture="auto" UICulture="auto"  Title="" meta:resourcekey="pagetitle"%>




<asp:Content ContentPlaceHolderID="HeadContent" runat="server">
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <meta name="description" content=" For Academics, Researchers, Practitioners and more. Cognitive test online, cognitive ability test online from CogQuiz." />
    <meta name="keywords" content="Keywords: Cognitive Style Questionnaire, Cognitive Test Online Practice, Cognitive Ability Test Online" />
    <meta name="author" content="CogQuiz" />
    <meta name="google-site-verification" content="GMj8owmZtkuKU0Fa_4Zg82VbKsQPO8VkZD_pHsRghA4" />
    <link rel="shortcut icon" href="../images/favicon.ico" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous" />
    <link href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.2.1/assets/owl.carousel.min.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.5.2/animate.min.css">
    <link href="../cogTest.css" rel="stylesheet" />
    <link href="../css/style.css" rel="stylesheet" />
    <%--<link href="../style/style.css" rel="stylesheet" />--%>
    <%--<link href="../css/previewer.css" rel="stylesheet" />--%>
    <%--<script src="../js/previewer.js"></script>--%>


    <script src="../js/jquery.js"></script>
    <script src="https://use.fontawesome.com/0138464303.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.2.1/owl.carousel.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/waypoints/4.0.1/jquery.waypoints.min.js"></script>

</asp:Content>

<asp:Content ContentPlaceHolderID="MenuItemLi" runat="server">
<li class="active"><a href="#about"><asp:Localize meta:resourcekey="navbar_about"  runat="server" ID="Localize49" Text="" /></a></li>
</asp:Content>

<asp:Content ContentPlaceHolderID="MainContent" runat="server">
        
<div>
    <div class="v-popup" id="popup1" style="display: none;">
        <div class="v-popup-content" style="position: relative; height: 383px;">
            <button class="v-popup-close" onclick="closeVideo1();"><i class="fa fa-close"></i></button>
            <div id="player"></div>
            <div style="display: block; margin: 0 auto;">
                <div>
                </div>
                <%--<button class="btn btn-success" style="position:absolute; bottom:10px; display:block" OnClick="PopUpHide()">Close</button>--%>
            </div>
        </div>
    </div>
</div>

<div>
    <div class="v-popup" id="popup2" style="display: none;">
        <div class="v-popup-content" style="position: relative; height: 383px;">
            <button class="v-popup-close" onclick="closeVideo2();"><i class="fa fa-close"></i></button>
            <div id="player2"></div>
            <div style="display: block; margin: 0 auto;">
                <div>
                </div>
                <%--<button class="btn btn-success" style="position:absolute; bottom:10px; display:block" OnClick="PopUpHide()">Close</button>--%>
            </div>
        </div>
    </div>
</div>

<div>
    <div class="v-popup" id="popup3" style="display: none;">
        <div class="v-popup-content" style="position: relative; height: 383px;">
            <button class="v-popup-close" onclick="closeVideo3();"><i class="fa fa-close"></i></button>
            <div id="player3"></div>
            <div style="display: block; margin: 0 auto;">
                <div>
                </div>
                <%--<button class="btn btn-success" style="position:absolute; bottom:10px; display:block" OnClick="PopUpHide()">Close</button>--%>
            </div>
        </div>
    </div>
</div>

<div>
    <div class="v-popup" id="popup4" style="display: none;">
        <div class="v-popup-content" style="position: relative; height: 383px;">
            <button class="v-popup-close" onclick="closeVideo4();"><i class="fa fa-close"></i></button>
            <div id="player4"></div>
            <div style="display: block; margin: 0 auto;">
                <div>
                </div>
                <%--<button class="btn btn-success" style="position:absolute; bottom:10px; display:block" OnClick="PopUpHide()">Close</button>--%>
            </div>
        </div>
    </div>
</div>

<div>
    <div class="v-popup" id="popup5" style="display: none;">
        <div class="v-popup-content" style="position: relative; height: 383px;">
            <button class="v-popup-close" onclick="closeVideo5();"><i class="fa fa-close"></i></button>
            <div id="player5"></div>
            <div style="display: block; margin: 0 auto;">
                <div>
                </div>
                <%--<button class="btn btn-success" style="position:absolute; bottom:10px; display:block" OnClick="PopUpHide()">Close</button>--%>
            </div>
        </div>
    </div>
</div>

<div>
    <div class="v-popup" id="popup6" style="display: none;">
        <div class="v-popup-content" style="position: relative; height: 383px;">
            <button class="v-popup-close" onclick="closeVideo6();"><i class="fa fa-close"></i></button>
            <div id="player6"></div>
            <div style="display: block; margin: 0 auto;">
                <div>
                </div>
                <%--<button class="btn btn-success" style="position:absolute; bottom:10px; display:block" OnClick="PopUpHide()">Close</button>--%>
            </div>
        </div>
    </div>
</div>

<div>
    <div class="v-popup" id="popup7" style="display: none;">
        <div class="v-popup-content" style="position: relative; height: 383px;">
            <button class="v-popup-close" onclick="closeVideo7();"><i class="fa fa-close"></i></button>
            <div id="player7"></div>
            <div style="display: block; margin: 0 auto;">
                <div>
                </div>
                <%--<button class="btn btn-success" style="position:absolute; bottom:10px; display:block" OnClick="PopUpHide()">Close</button>--%>
            </div>
        </div>
    </div>
</div>

<div>
    <div class="v-popup" id="popup8" style="display: none;">
        <div class="v-popup-content" style="position: relative; height: 383px;">
            <button class="v-popup-close" onclick="closeVideo8();"><i class="fa fa-close"></i></button>
            <div id="player8"></div>
            <div style="display: block; margin: 0 auto;">
                <div>
                </div>
                <%--<button class="btn btn-success" style="position:absolute; bottom:10px; display:block" OnClick="PopUpHide()">Close</button>--%>
            </div>
        </div>
    </div>
</div>


<%--<form runat="server">--%>
<!-- Navigation -->
<%--<nav class="navbar navbar-inverse navbar-fixed-top">
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
                    <li><a href="../MainPage.aspx"><asp:Localize meta:resourcekey="navbar_home"  runat="server" ID="Localize48" Text="" /></a></li>
                    <li class="active"><a href="#about"><asp:Localize meta:resourcekey="navbar_about"  runat="server" ID="Localize49" Text="" /></a></li>
                    <li id="profOpt" runat="server"><a href="../UserProfile.aspx"><asp:Localize meta:resourcekey="navbar_profile"  runat="server" ID="Localize50" Text="" /></a></li>
                    <li id="profile" runat ="server" class="dropdown"> 

                        <%--<asp:DropDownList ID="LanguageList"
                            AutoPostBack="True"
                            OnSelectedIndexChanged="LanguageList_SelectedIndexChanged"
                            runat="server">

                            <asp:ListItem Selected="True" Value="en"> EN </asp:ListItem>
                            <asp:ListItem Value="ru"> RU </asp:ListItem>

                        </asp:DropDownList>
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">language<span class="caret"></span></a>
                        <ul class="dropdown-menu">
                            <li><asp:LinkButton ID="LinkButton2" class="" OnClick="Set_En" runat="server">EN</asp:LinkButton></li>
                            <li><asp:LinkButton ID="LinkButton3" class="" OnClick="Set_Ru" runat="server">RU</asp:LinkButton></li>
                        </ul>


                    </li>
                    <li id="login" runat="server"><a href="../Login.aspx"><asp:Localize meta:resourcekey="navbar_login"  runat="server" ID="Localize51" Text="" /></a></li>
                    <li>
                        <asp:LinkButton ID="logOut" class="" type="submit" OnClick="logOut_Click" runat="server"><asp:Localize meta:resourcekey="navbar_logOut"  runat="server" ID="Localize52" Text="" /></asp:LinkButton>
                    </li>
                </ul>
            </div>
        </div>
    </nav>--%>

<section id="about">
    <div class="container testDescription">
        <h1>
            <asp:Localize meta:resourcekey="mainTitle" runat="server" ID="mainTitle" Text="Welcome!" /></h1>
        <hr />
        <p>
            <asp:Localize meta:resourcekey="mainDescription" runat="server" ID="Localize1" Text="" /></p>


        <asp:LinkButton ID="LinkButton1" class="btn btn-primary btn-lg btn-xs-block" OnClick="LinkButton1_Click" runat="server">
            <asp:Localize meta:resourcekey="btnManual" runat="server" ID="Localize2" Text="" /></asp:LinkButton>


        <asp:LinkButton ID="runTest" runat="server" class="btn btn-primary btn-lg btn-xs-block" OnClick="runTest_Click">
            <asp:Localize meta:resourcekey="downloadBtn" runat="server" ID="Localize3" Text="" /></asp:LinkButton>

        <%--<asp:Label ID="existsMessage" CssClass="errorMessage" runat="server" Text=""></asp:Label>
            <asp:LinkButton ID="runTest" runat="server" class="signup-btn" OnClick="runTest_Click">Download</asp:LinkButton>--%>



        <div class="row">
            <div class="col-lg-12 col-md-12">


                <div class="input-group" ID="IdentifierGroup" Visible="false" runat="server">
                  <input ID="IdentifierInput" type="text" class="form-control form-control-custom" placeholder="Enter identifier from your desktop application" runat="server"/>
                  <span class="input-group-btn">
                    <asp:LinkButton ID="GenerateLicenseBtn" class="btn btn-default btn-inp-group" OnClick="GenerateLicenseBtn_Click" runat="server">
                        <asp:Localize meta:resourcekey="generateKeyBtn" runat="server" ID="Localize48" Text="Generate license" />
                    </asp:LinkButton>
                  </span>
                </div>


            </div>
        </div>

        <div>
            <span id="KeyValue" class="text-success" runat="server" style="word-wrap: break-word;"><span>
                <asp:Localize meta:resourcekey="key" runat="server" ID="Localize4" Text="" />:</span> <%# Key %></span>
            <asp:Label ID="existsMessage" CssClass="errorMessage" runat="server" Text=""></asp:Label>
        </div>
        <br />


        <div class="row">
            <div class="col-md-12">
                <h3>
                    <asp:Localize meta:resourcekey="examplesTitle" runat="server" ID="Localize47" Text="" /></h3>
                <%--<hr />
                    <div class="row">
                        <div class="col-md-6" id="left1">
                            <h4>Make your own questionnaire. As many as you would like</h4>
                            <ul class="exapmles-list">
                                <li><span>Create questionnaire in any language</span></li>
                                <li><span>Select from 8 types of questions</span></li>
                                <li><span>Update your header color</span></li>
                                <li><span>Set fonts</span></li>
                                <li><span>Email as an attachment to anybody in the world</span></li>
                            </ul>
                        </div>
                        <div class="col-md-6" id="right1">
                            <img src="../images/quest1.jpg" alt="neuropsychological questionnaire" data-toggle="modal" data-target=".bs-modal-1" class="img-responsive" />
                        </div>
                    </div>--%>
                <hr />

                <div class="text-justify video-btns">
                    <a href="javascript:void(0);" onclick="playVideo1()">DropDown <i class="fa fa-youtube"></i></a>
                    <a href="javascript:void(0);" onclick="playVideo2()">Likert <i class="fa fa-youtube"></i></a>
                    <a href="javascript:void(0);" onclick="playVideo3()">Multi answer <i class="fa fa-youtube"></i></a>
                    <a href="javascript:void(0);" onclick="playVideo4()">Paragraph <i class="fa fa-youtube"></i></a>
                    <a href="javascript:void(0);" onclick="playVideo5()">Single answer <i class="fa fa-youtube"></i></a>
                    <a href="javascript:void(0);" onclick="playVideo6()">Text box <i class="fa fa-youtube"></i></a>
                    <a href="javascript:void(0);" onclick="playVideo7()">TextFormQuest <i class="fa fa-youtube"></i></a>
                    <a href="javascript:void(0);" onclick="playVideo8()">Block header <i class="fa fa-youtube"></i></a>
                    <span></span>
                </div>

                <div class="row">
                    <div class="col-md-6" id="left2">
                        <h4>
                            <asp:Localize meta:resourcekey="img1Title" runat="server" ID="Localize5" Text="" /></h4>
                        <ul class="exapmles-list">
                            <li><span>
                                <asp:Localize meta:resourcekey="img1DescrSpan1" runat="server" ID="Localize6" Text="" /></span></li>
                            <li><span>
                                <asp:Localize meta:resourcekey="img1DescrSpan2" runat="server" ID="Localize7" Text="" /></span></li>
                            <li><span>
                                <asp:Localize meta:resourcekey="img1DescrSpan3" runat="server" ID="Localize8" Text="" /></span></li>
                            <li><span>
                                <asp:Localize meta:resourcekey="img1DescrSpan4" runat="server" ID="Localize9" Text="" /></span></li>
                            <li><span>
                                <asp:Localize meta:resourcekey="img1DescrSpan5" runat="server" ID="Localize10" Text="" /></span></li>
                        </ul>
                    </div>
                    <div class="col-md-6" id="right2">
                        <img src="../images/quest2.jpg" alt="neuropsychological questionnaire" data-toggle="modal" data-target=".bs-modal-2" class="img-responsive" />
                    </div>
                </div>
                <hr class="cogquest-hr" />
                <div class="row">
                    <div class="col-md-6" id="left3">
                        <img src="../images/quest3.jpg" alt="neuropsychological questionnaire" data-toggle="modal" data-target=".bs-modal-3" class="img-responsive" />
                    </div>
                    <div class="col-md-6" id="right3">
                        <h4>
                            <asp:Localize meta:resourcekey="img2Title" runat="server" ID="Localize11" Text="" /></h4>
                        <ul class="exapmles-list">
                            <li><span>
                                <asp:Localize meta:resourcekey="img2DescrSpan1" runat="server" ID="Localize12" Text="" /></span></li>
                            <li><span>
                                <asp:Localize meta:resourcekey="img2DescrSpan2" runat="server" ID="Localize13" Text="" /></span></li>
                            <li><span>
                                <asp:Localize meta:resourcekey="img2DescrSpan3" runat="server" ID="Localize14" Text="" /></span></li>
                            <li><span>
                                <asp:Localize meta:resourcekey="img2DescrSpan4" runat="server" ID="Localize15" Text="" /></span></li>
                        </ul>
                    </div>
                </div>
                <%--<hr class="cogquest-hr"/>
                    <div class="row">
                        <div class="col-md-6" id="left4">
                            <h4>3. Lorem ipsum dolor sit amet</h4>
                            <p>Nulla sagittis metus ac rutrum tempus. Fusce mollis lorem et velit fermentum rhoncus. In vestibulum fringilla odio, vitae tempus diam aliquam et. Nam vitae elementum purus. Nullam erat urna, porttitor ut risus mattis, vehicula tincidunt quam. Aliquam tempus ornare nulla at efficitur. In nec arcu sed nunc rutrum pellentesque. In hac habitasse platea dictumst. Aliquam vel rhoncus urna. Donec in purus ipsum. In non orci faucibus, ullamcorper augue vel, dignissim velit.</p>
                        </div>
                        <div class="col-md-6" id="right4">
                            <img src="../images/quest4.jpg" alt="neuropsychological questionnaire" data-toggle="modal" data-target=".bs-modal-4" class="img-responsive" />
                        </div>
                    </div>--%>
                <hr class="cogquest-hr" />
                <div class="row">
                    <div class="col-md-6" id="left5">
                        <h4>
                            <asp:Localize meta:resourcekey="img3Title" runat="server" ID="Localize16" Text="" /></h4>
                        <ul class="exapmles-list">
                            <li><span>
                                <asp:Localize meta:resourcekey="img3DescrSpan1" runat="server" ID="Localize17" Text="" /></span></li>
                            <li><span>
                                <asp:Localize meta:resourcekey="img3DescrSpan2" runat="server" ID="Localize18" Text="" /></span></li>
                            <li><span>
                                <asp:Localize meta:resourcekey="img3DescrSpan3" runat="server" ID="Localize19" Text="" /></span></li>
                            <li><span>
                                <asp:Localize meta:resourcekey="img3DescrSpan4" runat="server" ID="Localize20" Text="" /></span></li>
                        </ul>
                    </div>
                    <div class="col-md-6" id="right5">
                        <img src="../images/quest5.jpg" alt="neuropsychological questionnaire" data-toggle="modal" data-target=".bs-modal-5" class="img-responsive" />
                    </div>
                </div>
                <%--<hr class="cogquest-hr"/>
                    <div class="row">
                        <div class="col-md-6" id="left6">
                            <img src="../images/quest6.jpg" alt="neuropsychological questionnaire" data-toggle="modal" data-target=".bs-modal-6" class="img-responsive" />
                        </div>
                        <div class="col-md-6" id="right6">
                            <h4>6. Lorem ipsum dolor sit amet</h4>
                            <p>Nulla sagittis metus ac rutrum tempus. Fusce mollis lorem et velit fermentum rhoncus. In vestibulum fringilla odio, vitae tempus diam aliquam et. Nam vitae elementum purus. Nullam erat urna, porttitor ut risus mattis, vehicula tincidunt quam. Aliquam tempus ornare nulla at efficitur. In nec arcu sed nunc rutrum pellentesque. In hac habitasse platea dictumst. Aliquam vel rhoncus urna. Donec in purus ipsum. In non orci faucibus, ullamcorper augue vel, dignissim velit.</p>
                        </div>
                    </div>--%>
                <hr class="cogquest-hr" />
                <div class="row">
                    <div class="col-md-6" id="left7">
                        <img src="../images/quest7.jpg" alt="neuropsychological questionnaire" data-toggle="modal" data-target=".bs-modal-7" class="img-responsive" />
                    </div>
                    <div class="col-md-6" id="right7">
                        <h4>
                            <asp:Localize meta:resourcekey="img4Title" runat="server" ID="Localize21" Text="" /></h4>
                        <ul class="exapmles-list">
                            <li><span>
                                <asp:Localize meta:resourcekey="img4DescrSpan1" runat="server" ID="Localize22" Text="" /></span></li>
                            <li><span>
                                <asp:Localize meta:resourcekey="img4DescrSpan2" runat="server" ID="Localize23" Text="" /></span></li>
                            <li><span>
                                <asp:Localize meta:resourcekey="img4DescrSpan3" runat="server" ID="Localize24" Text="" /></span></li>
                        </ul>
                    </div>
                </div>
                <hr class="cogquest-hr" />
                <div class="row">
                    <div class="col-md-6" id="left8">
                        <h4>
                            <asp:Localize meta:resourcekey="img5Title" runat="server" ID="Localize25" Text="" /></h4>
                        <ul class="exapmles-list">
                            <li><span>
                                <asp:Localize meta:resourcekey="img5DescrSpan1" runat="server" ID="Localize26" Text="" /></span></li>
                            <li><span>
                                <asp:Localize meta:resourcekey="img5DescrSpan2" runat="server" ID="Localize27" Text="" /></span></li>
                            <li><span>
                                <asp:Localize meta:resourcekey="img5DescrSpan3" runat="server" ID="Localize28" Text="" /></span></li>
                        </ul>
                    </div>
                    <div class="col-md-6" id="right8">
                        <img src="../images/quest8.jpg" alt="neuropsychological questionnaire" data-toggle="modal" data-target=".bs-modal-8" class="img-responsive" />
                    </div>
                </div>
                <hr class="cogquest-hr" />
                <div class="row">
                    <div class="col-md-6" id="left9">
                        <img src="../images/quest9.jpg" alt="neuropsychological questionnaire" data-toggle="modal" data-target=".bs-modal-9" class="img-responsive" />
                    </div>
                    <div class="col-md-6" id="right9">
                        <h4>
                            <asp:Localize meta:resourcekey="img6Title" runat="server" ID="Localize29" Text="" /></h4>
                        <ul class="exapmles-list">
                            <li><span>
                                <asp:Localize meta:resourcekey="img6DescrSpan1" runat="server" ID="Localize30" Text="" /></span></li>
                            <li><span>
                                <asp:Localize meta:resourcekey="img6DescrSpan2" runat="server" ID="Localize31" Text="" /></span></li>
                            <li><span>
                                <asp:Localize meta:resourcekey="img6DescrSpan3" runat="server" ID="Localize32" Text="" /></span></li>
                            <li><span>
                                <asp:Localize meta:resourcekey="img6DescrSpan4" runat="server" ID="Localize33" Text="" /></span></li>
                        </ul>
                    </div>
                </div>
                <%--<hr class="cogquest-hr"/>
                    <div class="row">
                        <div class="col-md-6" id="left10">
                            <img src="../images/quest10.jpg" alt="neuropsychological questionnaire" data-toggle="modal" data-target=".bs-modal-10" class="img-responsive" />
                        </div>
                        <div class="col-md-6" id="right10">
                            <h4>8. Lorem ipsum dolor sit amet</h4>
                            <p>Maecenas vel lacus in ligula gravida mollis placerat ut quam. Morbi magna tellus, condimentum nec mi et, pulvinar imperdiet ligula. Morbi maximus mi eget justo tristique feugiat. Suspendisse ultrices dolor in leo congue, faucibus luctus nisi pharetra. Vivamus dapibus pellentesque orci, a rutrum risus sodales a. Nulla tempor nunc et magna egestas fermentum. Nulla magna ante, mattis elementum ipsum et, lobortis luctus lacus. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.</p>
                        </div>
                    </div>--%>
                <hr class="cogquest-hr" />
                <div class="row">
                    <div class="col-md-6" id="left11">
                        <h4>
                            <asp:Localize meta:resourcekey="img7Title" runat="server" ID="Localize34" Text="" /></h4>
                        <ul class="exapmles-list">
                            <li><span>
                                <asp:Localize meta:resourcekey="img7DescrSpan1" runat="server" ID="Localize35" Text="" /></span></li>
                            <li><span>
                                <asp:Localize meta:resourcekey="img7DescrSpan2" runat="server" ID="Localize36" Text="" /></span></li>
                            <li><span>
                                <asp:Localize meta:resourcekey="img7DescrSpan3" runat="server" ID="Localize37" Text="" /></span></li>
                        </ul>
                    </div>
                    <div class="col-md-6" id="right11">
                        <img src="../images/quest11.jpg" alt="neuropsychological questionnaire" data-toggle="modal" data-target=".bs-modal-11" class="img-responsive" />
                    </div>
                </div>
                <hr class="cogquest-hr" />
                <div class="row">
                    <div class="col-md-6" id="left12">
                        <img src="../images/quest12.jpg" alt="neuropsychological questionnaire" data-toggle="modal" data-target=".bs-modal-12" class="img-responsive" />
                    </div>
                    <div class="col-md-6" id="right12">
                        <h4>
                            <asp:Localize meta:resourcekey="img8Title" runat="server" ID="Localize38" Text="" /></h4>
                        <ul class="exapmles-list">
                            <li><span>
                                <asp:Localize meta:resourcekey="img8DescrSpan1" runat="server" ID="Localize39" Text="" /></span></li>
                            <li><span>
                                <asp:Localize meta:resourcekey="img8DescrSpan2" runat="server" ID="Localize40" Text="" /></span></li>
                            <li><span>
                                <asp:Localize meta:resourcekey="img8DescrSpan3" runat="server" ID="Localize41" Text="" /></span></li>
                        </ul>
                    </div>
                </div>
                <hr class="cogquest-hr" />
                <div class="row">
                    <div class="col-md-6" id="left13">
                        <h4>
                            <asp:Localize meta:resourcekey="img9Title" runat="server" ID="Localize42" Text="" /></h4>
                        <ul class="exapmles-list">
                            <li><span>
                                <asp:Localize meta:resourcekey="img9DescrSpan1" runat="server" ID="Localize43" Text="" /></span></li>
                            <li><span>
                                <asp:Localize meta:resourcekey="img9DescrSpan2" runat="server" ID="Localize44" Text="" /></span></li>
                            <li><span>
                                <asp:Localize meta:resourcekey="img9DescrSpan3" runat="server" ID="Localize45" Text="" /></span></li>
                            <li><span>
                                <asp:Localize meta:resourcekey="img9DescrSpan4" runat="server" ID="Localize46" Text="" /></span></li>
                        </ul>
                    </div>
                    <div class="col-md-6" id="right13">
                        <img src="../images/quest13.jpg" alt="neuropsychological questionnaire" data-toggle="modal" data-target=".bs-modal-13" class="img-responsive" />
                    </div>
                </div>
                <hr class="cogquest-hr" />
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
                            <img src="../images/quest1.jpg" alt="neuropsychological questionnaire" data-dismiss="modal" class="img-responsive" />
                        </div>
                    </div>
                </div>
                <div class="modal fade bs-modal-2" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel">
                    <div class="modal-dialog modal-lg" role="document">
                        <div class="modal-content">
                            <img src="../images/quest2.jpg" alt="neuropsychological questionnaire" data-dismiss="modal" class="item" />
                        </div>
                    </div>
                </div>
                <div class="modal fade bs-modal-3" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel">
                    <div class="modal-dialog modal-lg" role="document">
                        <div class="modal-content">
                            <img src="../images/quest3.jpg" alt="neuropsychological questionnaire" data-dismiss="modal" class="item" />
                        </div>
                    </div>
                </div>
                <div class="modal fade bs-modal-4" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel">
                    <div class="modal-dialog modal-lg" role="document">
                        <div class="modal-content">
                            <img src="../images/quest4.jpg" alt="neuropsychological questionnaire" data-dismiss="modal" class="item" />
                        </div>
                    </div>
                </div>
                <div class="modal fade bs-modal-5" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel">
                    <div class="modal-dialog modal-lg" role="document">
                        <div class="modal-content">
                            <img src="../images/quest5.jpg" alt="neuropsychological questionnaire" data-dismiss="modal" class="item" />
                        </div>
                    </div>
                </div>
                <div class="modal fade bs-modal-6" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel">
                    <div class="modal-dialog modal-lg" role="document">
                        <div class="modal-content">
                            <img src="../images/quest6.jpg" alt="neuropsychological questionnaire" data-dismiss="modal" class="item" />
                        </div>
                    </div>
                </div>
                <div class="modal fade bs-modal-7" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel">
                    <div class="modal-dialog modal-lg" role="document">
                        <div class="modal-content">
                            <img src="../images/quest7.jpg" alt="neuropsychological questionnaire" data-dismiss="modal" class="item" />
                        </div>
                    </div>
                </div>

                <div class="modal fade bs-modal-8" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel">
                    <div class="modal-dialog modal-lg" role="document">
                        <div class="modal-content">
                            <img src="../images/quest8.jpg" alt="neuropsychological questionnaire" data-dismiss="modal" class="item" />
                        </div>
                    </div>
                </div>
                <div class="modal fade bs-modal-9" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel">
                    <div class="modal-dialog modal-lg" role="document">
                        <div class="modal-content">
                            <img src="../images/quest9.jpg" alt="neuropsychological questionnaire" data-dismiss="modal" class="item" />
                        </div>
                    </div>
                </div>
                <div class="modal fade bs-modal-10" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel">
                    <div class="modal-dialog modal-lg" role="document">
                        <div class="modal-content">
                            <img src="../images/quest10.jpg" alt="neuropsychological questionnaire" data-dismiss="modal" class="item" />
                        </div>
                    </div>
                </div>
                <div class="modal fade bs-modal-11" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel">
                    <div class="modal-dialog modal-lg" role="document">
                        <div class="modal-content">
                            <img src="../images/quest11.jpg" alt="neuropsychological questionnaire" data-dismiss="modal" class="item" />
                        </div>
                    </div>
                </div>
                <div class="modal fade bs-modal-12" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel">
                    <div class="modal-dialog modal-lg" role="document">
                        <div class="modal-content">
                            <img src="../images/quest12.jpg" alt="neuropsychological questionnaire" data-dismiss="modal" class="item" />
                        </div>
                    </div>
                </div>
                <div class="modal fade bs-modal-13" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel">
                    <div class="modal-dialog modal-lg" role="document">
                        <div class="modal-content">
                            <img src="../images/quest13.jpg" alt="neuropsychological questionnaire" data-dismiss="modal" class="item" />
                        </div>
                    </div>
                </div>


                <%-- <h3>View video Examples</h3>
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
                    </div>--%>
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

<%--<section id="follow-us">
    <div class="container">
        <div class="text-center height-contact-element">
            <h3>Follow Us</h3>
            <p>+1(719)888 9121</p>
        </div>
        <img class="img-responsive displayed" src="../../images/line-separator.png" alt="short" />
        <div class="text-center height-contact-element">
            <ul class="list-unstyled list-inline list-social-icons">
                <li class="active"><a href="https://www.facebook.com/CogQuiz-1644904339158958/"><i class="fa fa-facebook social-icons"></i></a></li>
                <li><a href="https://twitter.com/cogquizcom"><i class="fa fa-twitter social-icons"></i></a></li>
                <li><a href="https://plus.google.com/u/3/113821050703373361140?hl=en"><i class="fa fa-google-plus social-icons"></i></a></li>
                <li><a href="https://www.linkedin.com/company-beta/13213074/"><i class="fa fa-linkedin social-icons"></i></a></li>
            </ul>
        </div>

    </div>
</section>--%>
<%-- </form>--%>
<%--<footer id="footer">
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

</footer>--%>
        </asp:Content>

   

<asp:content contentplaceholderid="ScriptsContent" runat="server">
        <%--<script>
            (function (i, s, o, g, r, a, m) {
                i['GoogleAnalyticsObject'] = r; i[r] = i[r] || function () {
                    (i[r].q = i[r].q || []).push(arguments)
                }, i[r].l = 1 * new Date(); a = s.createElement(o),
                    m = s.getElementsByTagName(o)[0]; a.async = 1; a.src = g; m.parentNode.insertBefore(a, m)
            })(window, document, 'script', 'https://www.google-analytics.com/analytics.js', 'ga');

            ga('create', 'UA-89149772-1', 'auto');
            ga('send', 'pageview');

        </script>--%>
        <script>
            // 2. This code loads the IFrame Player API code asynchronously.
            var tag = document.createElement('script');

            tag.src = "https://www.youtube.com/iframe_api";
            var firstScriptTag = document.getElementsByTagName('script')[0];
            firstScriptTag.parentNode.insertBefore(tag, firstScriptTag);

            // 3. This function creates an <iframe> (and YouTube player)
            //    after the API code downloads.
            var player;
            var player2;
            var player3;
            var player4;
            var player5;
            var player6;
            var player7;
            var player8;


            function playVideo1() {
                $("#popup1").show();
                player.playVideo();
            }

            function closeVideo1() {
                $("#popup1").hide();
                player.stopVideo();
            }

            function playVideo2() {
                $("#popup2").show();
                player2.playVideo();
            }

            function closeVideo2() {
                $("#popup2").hide();
                player2.stopVideo();
            }

            function playVideo3() {
                $("#popup3").show();
                player3.playVideo();
            }

            function closeVideo3() {
                $("#popup3").hide();
                player3.stopVideo();
            }

            function playVideo4() {
                $("#popup4").show();
                player4.playVideo();
            }

            function closeVideo4() {
                $("#popup4").hide();
                player4.stopVideo();
            }

            function playVideo5() {
                $("#popup5").show();
                player5.playVideo();
            }

            function closeVideo5() {
                $("#popup5").hide();
                player5.stopVideo();
            }

            function playVideo6() {
                $("#popup6").show();
                player6.playVideo();
            }

            function closeVideo6() {
                $("#popup6").hide();
                player6.stopVideo();
            }

            function playVideo7() {
                $("#popup7").show();
                player7.playVideo();
            }

            function closeVideo7() {
                $("#popup7").hide();
                player7.stopVideo();
            }

            function playVideo8() {
                $("#popup8").show();
                player8.playVideo();
            }

            function closeVideo8() {
                $("#popup8").hide();
                player8.stopVideo();
            }


            function onYouTubeIframeAPIReady() {
                player = new YT.Player('player', {
                    height: '360',
                    width: '640',
                    videoId: 'pxrNcS9oqsw',
                    events: {
                        'onReady': onPlayerReady,
                        'onStateChange': onPlayerStateChange
                    }
                });

                player2 = new YT.Player('player2', {
                    height: '360',
                    width: '640',
                    videoId: 'u25UdJHugK8',
                    events: {
                        'onReady': onPlayerReady,
                        'onStateChange': onPlayerStateChange
                    }
                });

                player3 = new YT.Player('player3', {
                    height: '360',
                    width: '640',
                    videoId: 'yrzTbu5oLkI',
                    events: {
                        'onReady': onPlayerReady,
                        'onStateChange': onPlayerStateChange
                    }
                });

                player4 = new YT.Player('player4', {
                    height: '360',
                    width: '640',
                    videoId: 'kTOrwuVgIpI',
                    events: {
                        'onReady': onPlayerReady,
                        'onStateChange': onPlayerStateChange
                    }
                });

                player5 = new YT.Player('player5', {
                    height: '360',
                    width: '640',
                    videoId: 'jcmTJY6BSlI',
                    events: {
                        'onReady': onPlayerReady,
                        'onStateChange': onPlayerStateChange
                    }
                });

                player6 = new YT.Player('player6', {
                    height: '360',
                    width: '640',
                    videoId: '4PfM-GR23Sw',
                    events: {
                        'onReady': onPlayerReady,
                        'onStateChange': onPlayerStateChange
                    }
                });

                player7 = new YT.Player('player7', {
                    height: '360',
                    width: '640',
                    videoId: '5Y4cT_vzEDg',
                    events: {
                        'onReady': onPlayerReady,
                        'onStateChange': onPlayerStateChange
                    }
                });

                player8 = new YT.Player('player8', {
                    height: '360',
                    width: '640',
                    videoId: 'vXISacqBKXo',
                    events: {
                        'onReady': onPlayerReady,
                        'onStateChange': onPlayerStateChange
                    }
                });
            }

            // 4. The API will call this function when the video player is ready.
            function onPlayerReady(event) {
                //event.target.playVideo();
            }

            // 5. The API calls this function when the player's state changes.
            //    The function indicates that when playing a video (state=1),
            //    the player should play for six seconds and then stop.
            var done = false;
            function onPlayerStateChange(event) {
                //if (event.data == YT.PlayerState.PLAYING && !done) {
                //    setTimeout(stopVideo, 6000);
                //    done = true;
                //}
            }
            function stopVideo() {
                player.stopVideo();
            }
        </script>
        <%--<script src="../js/bootstrap.min.js"></script>--%>
<script>
            $(document).ready(function () {
                var neededDistance = 200;
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
                            items: 1
                        },
                        1000: {
                            items: 3
                        }
                    }
                });
                $('.owl-next').addClass("glyphicon glyphicon-chevron-right");
                $('.owl-prev').addClass("glyphicon glyphicon-chevron-left");

                $(".nav a").on("click", function () {
                    $(".nav").find(".active").removeClass("active");
                    $(this).parent().addClass("active");
                });

                for (var i = 0; i < 12; i++) {

                    $('#left' + (i + 2)).css('opacity', 0);
                    $('#right' + (i + 2)).css('opacity', 0);


                    $('#left' + (i + 2)).waypoint(function () {
                        $(this.element).addClass('animated bounceInLeft');
                        $(this.element).css('opacity', 1);
                    }, { offset: '100%' });

                    $('#right' + (i + 2)).waypoint(function () {
                        $(this.element).addClass('animated bounceInRight');
                        $(this.element).css('opacity', 1);
                    }, { offset: '100%' });
                }
            });
</script>
    </asp:content>

