<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="TestSite.Registration"  MasterPageFile="~/Layout.Master"
    Culture="auto" UICulture="auto"  Title="" meta:resourcekey="pagetitle"%>

<asp:Content ContentPlaceHolderID="HeadContent" runat="server">
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="Trails">
    <meta name="author" content="AnaLevy">
    <meta name="google-site-verification" content="GMj8owmZtkuKU0Fa_4Zg82VbKsQPO8VkZD_pHsRghA4" />
    <link rel="shortcut icon" href="images/favicon.ico" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
    <link href="font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <link href="cogTest.css" rel="stylesheet" />
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
        <![endif]-->
    <script src="https://use.fontawesome.com/0138464303.js"></script>
    <script src="js/jquery.js"></script>
    <link href="css/userProfilecss.css" rel="stylesheet" />
    <script src="js/sessionManager.js"></script>
</asp:content>

<%--<asp:Content ContentPlaceHolderID="MenuItemLi" runat="server">
    <li class="active"><a id="A1" runat="server" ><asp:Localize meta:resourcekey="navbar_goback"  runat="server" ID="Localize35" Text="" />
                        </a></li>
                        <li>
                            <asp:Button ID="Button1" runat="server" class="signup-btn" Text="Save" OnClick="submit_Click" meta:resourcekey="navbar_save"/>
                        </li>
</asp:content>--%>

<asp:Content ContentPlaceHolderID="MainContent" runat="server">
        <%--<nav class="navbar navbar-inverse navbar-fixed-top">
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
                        <li><a href="MainPage.aspx"><asp:Localize meta:resourcekey="navbar_home"  runat="server" ID="Localize48" Text="" /></a></li>

                        <li class="active"><a id="hgoBack" runat="server" href=""><asp:Localize meta:resourcekey="navbar_goback"  runat="server" ID="Localize1" Text="" />
                        </a></li>
                        <li>
                            <asp:Button ID="saveTop" runat="server" class="signup-btn" Text="Save" OnClick="submit_Click" meta:resourcekey="navbar_save"/>
                        </li>

                    </ul>
                </div>
            </div>
        </nav>--%>

        <header id="homeForm">
        </header>

        <!-- Page Content -->

        <section id="formInstructions">
        </section>
        <div class="alert alert-success" id="fbGood" runat="server">
            <asp:Localize meta:resourcekey="formInstructions_profilesaved"  runat="server" ID="Localize2" Text="" />
        </div>
        <div class="alert alert-danger" id ="fbBad" runat="server">
            <asp:Localize meta:resourcekey="formInstructions_errorsaved"  runat="server" ID="Localize3" Text="" />
        </div>
        <section id="regForm">
            <div class="container" id="center">
                <div class="box">
                    <h1><asp:Localize meta:resourcekey="regForm_title1"  runat="server" ID="Localize4" Text="" /></h1>
                    <hr />
                    <p><asp:Localize meta:resourcekey="regForm_paragraph1"  runat="server" ID="Localize5" Text="" /></p>
                    <p><asp:Localize meta:resourcekey="regForm_paragraph2"  runat="server" ID="Localize6" Text="" /></p>
                </div>

                <div class="box">
                    <h3><asp:Localize meta:resourcekey="regForm_title2"  runat="server" ID="Localize7" Text="" /></h3>
                    <hr />
                    <p>
                        <asp:Localize meta:resourcekey="regForm_paragraph3"  runat="server" ID="Localize8" Text="" />
                    </p>
                    <asp:CheckBox ID="cbAgree" runat="server" />
                    <asp:Localize meta:resourcekey="regForm_checkBox_agree"  runat="server" ID="Localize9" Text="" />
                    <p>
                        <asp:Label ID="error" CssClass="red" runat="server" Text=""></asp:Label>
                    </p>
                </div>
                <div class="box">
                    <div id="name" class="col-xs-6 col-md-6 nopadding">
                        <asp:Label class="labelForm" ID="lbFistName" runat="server" Text="" meta:resourcekey="regForm_lbFistName"></asp:Label>
                        <input type="text" id="txtFirstName" value="" class="form-control input-lg" runat="server" placeholder="" meta:resourcekey="regForm_txtFirstName" required />
                        <asp:RequiredFieldValidator class="red" ID="firstNameValid" runat="server" ErrorMessage="" ControlToValidate="txtFirstName" meta:resourcekey="regForm_firstNameValid"></asp:RequiredFieldValidator>
                    </div>
                    <div class="col-xs-6 col-md-6">
                        <asp:Label class="labelForm" ID="lbLastName" runat="server" Text="" meta:resourcekey="regForm_lbLastName"></asp:Label>
                        <input type="text" id="txtLastName" value="" class="form-control input-lg" runat="server" placeholder="" meta:resourcekey="regForm_txtLastName" required />
                        <asp:RequiredFieldValidator class="red" ID="lastNameValid" runat="server" ErrorMessage="" meta:resourcekey="regForm_lastNameValid"
                            ControlToValidate="txtLastName"></asp:RequiredFieldValidator>
                    </div>


                    <hr>

                    <div class="col-xs-6 col-md-6  nopadding">
                        <asp:Label ID="lbBday" class="labelForm" runat="server" Text="" required="true" meta:resourcekey="regForm_lbBday"></asp:Label>
                        <asp:TextBox ID="txtBDay" class="form-control input-lg short" runat="server" placeholder="mm/dd/yy" meta:resourcekey="regForm_txtBDay"></asp:TextBox>
                        <asp:RequiredFieldValidator class="red" ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please enter your birthday" meta:resourcekey="regForm_RequiredFieldValidator1"
                            ControlToValidate="txtBDay"></asp:RequiredFieldValidator>
                    </div>
                    <div id="education" class="col-xs-6 col-md-6  nopadding">
                        <asp:Label ID="lbEducation" runat="server" class="labelForm" Text="Education:" meta:resourcekey="regForm_lbEducation"></asp:Label>
                        <asp:DropDownList class="form-control input-lg" ID="ddlEducation" runat="server" AppendDataBoundItems="true">
                            <asp:ListItem Text="<Select Level>" Value="0" />
                        </asp:DropDownList>
                    </div>

                    <div class="clearfix"></div>
                </div>
                <div class="box">
                    <div id="language">
                        <asp:Label ID="lblLang" runat="server" class="labelForm nopadding" Text="Is English your first language?" meta:resourcekey="regForm_lblLang"></asp:Label>
                        </br>
                           
                        <asp:CheckBox ID="cbEnglYes" runat="server" class="" Text="Yes" meta:resourcekey="regForm_cbEnglYes"/>
                        <asp:CheckBox ID="cbEnglNo" runat="server" class="" Text="No" meta:resourcekey="regForm_cbEnglNo"/>
                        </br>
                           
                        <asp:Label ID="lblFstLang" runat="server" class="labelForm nopadding" Text="Pleas Enter Your First Language:" meta:resourcekey="regForm_lblFstLang"></asp:Label>
                        <asp:TextBox ID="firstLang" class="form-control input-lg" runat="server" placeholder="first language" meta:resourcekey="regForm_firstLang"></asp:TextBox></br>
                       
                    </div>

                    <hr>

                    <div id="gender" class="">
                        <asp:Label ID="lbGender" class="nopadding labelForm" runat="server" Text="Gender" meta:resourcekey="regForm_lbGender"></asp:Label>
                        </br>
                               
                        <asp:CheckBox ID="cbMale" runat="server" Text="M" meta:resourcekey="regForm_cbMale"/>
                        <asp:CheckBox ID="cbFmale" runat="server" Text="F" meta:resourcekey="regForm_cbFmale"/>
                    </div>
                    <hr>
                    <div id="medications" class="">
                        <asp:Label ID="lbMeds" class=" labelForm" runat="server" Text="Are you currently taking any medications?" meta:resourcekey="regForm_lbMeds"></asp:Label>
                        </br>
                           
                        <asp:CheckBox ID="cbMedicationsY" runat="server" class="" Text="Yes" meta:resourcekey="regForm_cbMedicationsY"/>
                        <asp:CheckBox ID="cbMedicationsN" runat="server" class="" Text="No" meta:resourcekey="regForm_cbMedicationsN"/>
                        <asp:TextBox ID="txtKindMeds" class="form-control input-lg" runat="server" placeholder="medications" meta:resourcekey="regForm_txtKindMeds"></asp:TextBox></br>

                       
                    </div>
                    <hr>
                    <div id="headInj" class="">
                        <asp:Label class="nopadding labelForm" ID="lbHeadInj" runat="server" Text="Have you ever had a head injury?" meta:resourcekey="regForm_lbHeadInj"></asp:Label></br>
                           
                        <asp:CheckBox ID="cbHeadInjY" runat="server" class="" Text="Yes" meta:resourcekey="regForm_cbHeadInjY"/>
                        <asp:CheckBox ID="cbHeadInjN" runat="server" class="" Text="No" meta:resourcekey="regForm_cbHeadInjN"/></br>
                       
                           

                        <asp:Label class="labelForm" ID="lbHeadInjNum" runat="server" Text="How Many?" meta:resourcekey="regForm_lbHeadInjNum"></asp:Label>
                        <asp:DropDownList ID="ddlHeadInjNum" class="form-control input-lg short" runat="server" AppendDataBoundItems="true">
                            <asp:ListItem Text="<Select>" Value="0" />
                        </asp:DropDownList>

                    </div>
                    <div class="clearfix"></div>
                </div>
                <div class="box">

                    <div id="income">
                        <asp:Label ID="lbIncome" runat="server" class="labelForm nopadding" Text="Level of Income:" meta:resourcekey="regForm_lbIncome"></asp:Label></br>
                           
                        <asp:DropDownList ID="ddlIncome" class="form-control input-lg short" runat="server" AppendDataBoundItems="true">
                            <asp:ListItem Text="<Select Level>" Value="0" />
                        </asp:DropDownList>
                    </div>

                    <hr>
                    <div id="leadingHand">
                        <asp:Label ID="lbHand" runat="server" class="labelForm nopadding" Text="Dominant Hand" meta:resourcekey="regForm_lbHand"></asp:Label>
                        <asp:DropDownList class="form-control input-lg short" ID="ddlHand" runat="server" AppendDataBoundItems="true">
                            <asp:ListItem Text="<Select Level>" Value="0" />
                        </asp:DropDownList>
                    </div>
                    <hr />
                    <div id="ethnicity">
                        <asp:Label ID="lblEthnicity" runat="server" class="labelForm nopadding" Text="Ethnicity" meta:resourcekey="regForm_lblEthnicity"></asp:Label>
                        <asp:DropDownList class="form-control input-lg short" ID="ddlEthnicity" runat="server" AppendDataBoundItems="true">
                            <asp:ListItem Text="<Select Level>" Value="0" />
                        </asp:DropDownList>
                    </div>
                </div>
                <div id="scaleRead" class="box">

                    <label class="labelForm nopadding">
                        <asp:Localize meta:resourcekey="regForm_scaleRead_label1"  runat="server" ID="Localize10" Text="" /></label>
                    <ul id="brainActivity" class='likert'>
                        <li>
                            <input id="act1" runat="server" type="radio" name="likert">
                            <label id="lact1" runat="server"><asp:Localize meta:resourcekey="regForm_scaleRead_brainActivity_label1"  runat="server" ID="Localize11" Text="" /></label>
                        </li>
                        <li>
                            <input id="act2" runat="server" type="radio" name="likert">
                            <label id="lact2" runat="server"><asp:Localize meta:resourcekey="regForm_scaleRead_brainActivity_label2"  runat="server" ID="Localize12" Text="" /></label>
                        </li>
                        <li>
                            <input id="act3" runat="server" type="radio" name="likert">
                            <label id="lact3" runat="server"><asp:Localize meta:resourcekey="regForm_scaleRead_brainActivity_label3"  runat="server" ID="Localize13" Text="" /></label>
                        </li>
                        <li>
                            <input id="act4" runat="server" type="radio" name="likert">
                            <label id="lact4" runat="server"><asp:Localize meta:resourcekey="regForm_scaleRead_brainActivity_label4"  runat="server" ID="Localize14" Text="" /></label>
                        </li>
                        <li>
                            <input id="act5" runat="server" type="radio" name="likert">
                            <label id="lact5" runat="server"><asp:Localize meta:resourcekey="regForm_scaleRead_brainActivity_label5"  runat="server" ID="Localize15" Text="" /></label>
                        </li>
                    </ul>

                    <label class="labelForm nopadding"><asp:Localize meta:resourcekey="regForm_scaleRead_label2"  runat="server" ID="Localize16" Text="" /></label>
                    <ul id="exercise" class='likert'>
                        <li>
                            <input id="exe1" runat="server" type="radio" name="likert2" value="0-1">
                            <label id="lexe1" runat="server"><asp:Localize meta:resourcekey="regForm_scaleRead_exercise_label1"  runat="server" ID="Localize17" Text="" /></label>
                        </li>
                        <li>
                            <input id="exe2" runat="server" type="radio" name="likert2" value="2-3">
                            <label id="lexe2" runat="server"><asp:Localize meta:resourcekey="regForm_scaleRead_exercise_label2"  runat="server" ID="Localize18" Text="" /></label>
                        </li>
                        <li>
                            <input id="exe3" runat="server" type="radio" name="likert2" value="4-5">
                            <label id="lexe3" runat="server"><asp:Localize meta:resourcekey="regForm_scaleRead_exercise_label3"  runat="server" ID="Localize19" Text="" /></label>
                        </li>

                        <li>
                            <input id="exe4" runat="server" type="radio" name="likert2" value="6-7">
                            <label id="lexe4" runat="server"><asp:Localize meta:resourcekey="regForm_scaleRead_exercise_label4"  runat="server" ID="Localize20" Text="" /></label>
                        </li>
                        <li>
                            <input id="exe5" runat="server" type="radio" name="likert2" value="8-9">
                            <label id="lexe5" runat="server"><asp:Localize meta:resourcekey="regForm_scaleRead_exercise_label5"  runat="server" ID="Localize21" Text="" /></label>
                        </li>

                    </ul>
                    <label class="labelForm nopadding"><asp:Localize meta:resourcekey="regForm_scaleRead_label3"  runat="server" ID="Localize22" Text="" /></label>
                    <ul id="selfEsteem" class='likert'>
                        <li>
                            <input id="esteem1" runat="server" type="radio" name="likert3" value="">
                            <label id="lesteem1" runat="server"><asp:Localize meta:resourcekey="regForm_scaleRead_selfEsteem_label1"  runat="server" ID="Localize23" Text="" /></label>
                        </li>
                        <li>
                            <input id="esteem2" runat="server" type="radio" name="likert3" value="">
                            <label id="lesteem2" runat="server"><asp:Localize meta:resourcekey="regForm_scaleRead_selfEsteem_label2"  runat="server" ID="Localize24" Text="" /></label>
                        </li>
                        <li>
                            <input id="esteem3" runat="server" type="radio" name="likert3" value="">
                            <label id="lesteem3" runat="server"><asp:Localize meta:resourcekey="regForm_scaleRead_selfEsteem_label3"  runat="server" ID="Localize25" Text="" /></label>
                        </li>
                        <li>
                            <input id="esteem4" runat="server" type="radio" name="likert3" value="">
                            <label id="lesteem4" runat="server"><asp:Localize meta:resourcekey="regForm_scaleRead_selfEsteem_label4"  runat="server" ID="Localize26" Text="" /></label>
                        </li>
                        <li>
                            <input id="esteem5" runat="server" type="radio" name="likert3" value="">
                            <label id="lesteem5" runat="server"><asp:Localize meta:resourcekey="regForm_scaleRead_selfEsteem_label5"  runat="server" ID="Localize27" Text="" /></label>
                        </li>
                    </ul>
                    <label class="labelForm nopadding"><asp:Localize meta:resourcekey="regForm_scaleRead_label4"  runat="server" ID="Localize28" Text="" /></label>
                    <ul id="selfHealth" class='likert'>
                        <li>
                            <input id="health1" runat="server" type="radio" name="likert4" value="">
                            <label id="lhealth1" runat="server"><asp:Localize meta:resourcekey="regForm_scaleRead_selfHealth_label1"  runat="server" ID="Localize29" Text="" /></label>
                        </li>
                        <li>
                            <input id="health2" runat="server" type="radio" name="likert4" value="">
                            <label id="lhealth2" runat="server"><asp:Localize meta:resourcekey="regForm_scaleRead_selfHealth_label2"  runat="server" ID="Localize30" Text="" /></label>
                        </li>
                        <li>
                            <input id="health3" runat="server" type="radio" name="likert4" value="">
                            <label id="lhealth3" runat="server"><asp:Localize meta:resourcekey="regForm_scaleRead_selfHealth_label3"  runat="server" ID="Localize31" Text="" /></label>
                        </li>
                        <li>
                            <input id="health4" runat="server" type="radio" name="likert4" value="">
                            <label id="lhealth4" runat="server"><asp:Localize meta:resourcekey="regForm_scaleRead_selfHealth_label4"  runat="server" ID="Localize32" Text="" /></label>
                        </li>
                        <li>
                            <input id="health5" runat="server" type="radio" name="likert4" value="">
                            <label id="lhealth5" runat="server"><asp:Localize meta:resourcekey="regForm_scaleRead_selfHealth_label5"  runat="server" ID="Localize33" Text="" /></label>
                        </li>
                    </ul>
                </div>
                <p>
                    <asp:Button ID="submit" class="signup-btn" runat="server" Text="Save" OnClick="submit_Click" meta:resourcekey="regForm_btnsave"/>
                </p>

            </div>
        </section>

    </asp:content>
 <%--   
        <div class="container">
            <div class="row">
                <div class="container">
                    <div class="text-center height-contact-element">
                        <h2><asp:Localize meta:resourcekey="follow"  runat="server" ID="Localize34" Text="" /></h2>
                    </div>
                    <img class="img-responsive displayed" src="images/line-separator.png" alt="short" />
                    <div class="text-center height-contact-element">
                        <ul class="list-unstyled list-inline list-social-icons">
                            <li class="active"><a href="https://www.facebook.com/CogQuiz-1644904339158958/"><i class="fa fa-facebook social-icons"></i></a></li>
                            <li><a href="https://twitter.com/cogquizcom"><i class="fa fa-twitter social-icons"></i></a></li>
                            <li><a href="https://plus.google.com/u/3/113821050703373361140?hl=en"><i class="fa fa-google-plus social-icons"></i></a></li>
                            <li><a href="https://www.linkedin.com/company-beta/13213074/"><i class="fa fa-linkedin social-icons"></i></a></li>
                        </ul>
                    </div>
                </div>
                <div class="col-lg-12 text-center">
                    <p>Copyright &copy; cogQuiz 2016</p>
                      <p>+1(719)888 9121</p> 
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
    --%>
    <asp:Content ContentPlaceHolderID="ScriptsContent" runat="server">

<script src="https://code.jquery.com/jquery-3.1.0.js" integrity="sha256-slogkvB1K3VOkzAI8QITxV3VzpOnkeNVsKvtkYLMjfk=" crossorigin="anonymous"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js" integrity="sha256-T0Vest3yCU7pafRw9r+settMBX6JkKN06dqBnpQ8d30=" crossorigin="anonymous"></script>



<script>
    var cbEnglYes = document.getElementById('<%= cbEnglYes.ClientID %>');
    var cbMedicationsY = document.getElementById('<%= cbMedicationsY.ClientID %>');
    var cbHeadInjY = document.getElementById('<%= cbHeadInjY.ClientID %>');

    $('#<%= txtBDay.ClientID %>').datepicker({
        dateFormat: 'mm/dd/yy',
        changeMonth: true,
        changeYear: true,
        yearRange: "1900:2020"
    });

    if (cbMedicationsY.checked == true) {
        $('#<%= txtKindMeds.ClientID %>').show();
        $('#<%= cbMedicationsN.ClientID %>').prop('checked', false);
    }
    else
        $('#<%= txtKindMeds.ClientID %>').hide();


    if (cbHeadInjY.checked == true) {
        $('#<%= ddlHeadInjNum.ClientID %>').show();
        $('#<%= lbHeadInjNum.ClientID %>').show();
        $('#<%= cbHeadInjN.ClientID %>').prop('checked', false);
    }
    else {
        $('#<%= ddlHeadInjNum.ClientID %>').hide();
        $('#<%= lbHeadInjNum.ClientID %>').hide();
    }



    $('#<%= cbMedicationsY.ClientID %>').click(function () {
        if (this.checked == true) {
            $('#<%= txtKindMeds.ClientID %>').show();
            $('#<%= cbMedicationsN.ClientID %>').prop('checked', false);
        }
        else
            $('#<%= txtKindMeds.ClientID %>').hide();
    })

    $('#<%= cbMedicationsN.ClientID %>').click(function () {
        if (this.checked == true) {
            $('#<%= txtKindMeds.ClientID %>').hide();
            $('#<%= cbMedicationsY.ClientID %>').prop('checked', false);
        }

    })


    $('#<%= cbMale.ClientID %>').click(function () {
        $('#<%= cbFmale.ClientID %>').prop('checked', false);
    })

    $('#<%= cbFmale.ClientID %>').click(function () {
        $('#<%= cbMale.ClientID %>').prop('checked', false);
    })

    //$('#cbAgree').click(function () {
    //    $('#cbDoNotAgree').prop('checked', false);
    //})

    //$('#cbDoNotAgree').click(function () {
    //    $('#cbAgree').prop('checked', false);
    //})


    $('#<%= cbHeadInjY.ClientID %>').click(function () {
        if (this.checked == true) {
            $('#<%= ddlHeadInjNum.ClientID %>').show();
            $('#<%= lbHeadInjNum.ClientID %>').show();
            $('#<%= cbHeadInjN.ClientID %>').prop('checked', false);
        }
        else {
            $('#<%= ddlHeadInjNum.ClientID %>').hide();
            $('#<%= lbHeadInjNum.ClientID %>').hide();
        }
    })

    $('#<%= cbHeadInjN.ClientID %>').click(function () {
        if (this.checked == true) {
            $('#<%= ddlHeadInjNum.ClientID %>').hide();
            $('#<%= lbHeadInjNum.ClientID %>').hide();
            $('#<%= cbHeadInjY.ClientID %>').prop('checked', false);
        }

    })

    if (cbEnglYes.checked == true) {
        $('#<%= lblFstLang.ClientID %>').hide();
        $('#<%= firstLang.ClientID %>').hide();
        $('#<%= cbEnglNo.ClientID %>').prop('checked', false);
    }
    else {
        $('#<%= lblFstLang.ClientID %>').show();
        $('#<%= firstLang.ClientID %>').show();
        $('#<%= cbEnglNo.ClientID %>').prop('checked', true);

    }

    $('#<%= cbEnglYes.ClientID %>').click(function () {
        if (this.checked == true) {
            $('#<%= lblFstLang.ClientID %>').hide();
            $('#<%= firstLang.ClientID %>').hide();
            $('#<%= cbEnglNo.ClientID %>').prop('checked', false);
        }
        else {
            $('#<%= lblFstLang.ClientID %>').show();
            $('#<%= firstLang.ClientID %>').show();
            $('#<%= cbEnglNo.ClientID %>').prop('checked', true);

        }
    })

    $('#<%= cbEnglNo.ClientID %>').click(function () {
        if (this.checked == true) {
            $('#<%= lblFstLang.ClientID %>').show();
            $('#<%= firstLang.ClientID %>').show();
            $('#<%= cbEnglYes.ClientID %>').prop('checked', false);
        }
        else {
            $('#<%= lblFstLang.ClientID %>').hide();
            $('#<%= firstLang.ClientID %>').hide();
            $('#<%= cbEnglYes.ClientID %>').prop('checked', true);
        }

    })



    $('#<%= cbHeadInjN.ClientID %>').click(function () {
        if (this.checked == true) {
            $('#<%= ddlHeadInjNum.ClientID %>').hide();
            $('#<%= lbHeadInjNum.ClientID %>').hide();
            $('#<%= cbHeadInjY.ClientID %>').prop('checked', false);
        }

    })

    $('#<%= submit.ClientID %>').click(function () {

    });

</script>

<script src="js/gallety.js"></script>

        </asp:Content>