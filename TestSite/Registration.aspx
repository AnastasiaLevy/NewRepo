<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="TestSite.Registration" %>

<!DOCTYPE html>

<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="Trails">
    <meta name="author" content="AnaLevy">
    <title>Questionary</title>
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
                        <li><a href="MainPage.aspx">Home</a></li>

                        <li class="active"><a href="UserProfile.aspx">Back to Profile</a></li>
                        <li>
                            <asp:Button ID="saveTop" runat="server" class="signup-btn" Text="Save" OnClick="submit_Click" />
                        </li>

                    </ul>
                </div>
            </div>
        </nav>

        <header id="homeForm">
        </header>

        <!-- Page Content -->

        <section id="formInstructions">
        </section>

        <section id="regForm">
            <div class="container" id="center">
                <div class="box">
                    <h1>Profile Form</h1>
                    <hr />
                    <p>Please fill out the form to ensure the most accurate scoring results for the test.</p>
                    <p>Required fields are marked with *</p>
                </div>

                <div class="box">
                    <h3>Disclaimer</h3>
                    <hr />
                    <p>
                        To utilize the assessments on this site you need to read and agree to the 
                     conditions for taking any of the assessments provided by CogQuiz.com. 
                     The tests on this site are considered and provided solely as experimental
                      assessments. They are not clinically or medically diagnostic or for use
                      in treating or preventing clinical of medical conditions. If you have 
                     questions or concerns about the results or our reporting of your results 
                     on any assessment taken on this site, you may want to print your results and 
                     discuss them with a licensed medical of psychological professional. CogQuiz.com,
                      CogQuiz, LLC, or the owners of this company and/or website are not responsible 
                     for any errors or misinterpretation of the results by users of this website and
                      assessments. By checking accept below you are acknowledging that you have read 
                     and understood the conditions for taking any assessment provided on this website.
                    </p>
                    <asp:CheckBox ID="cbAgree" runat="server" />
                    I Have Read and Understood
                    <p>
                        <asp:Label ID="error" CssClass="red" runat="server" Text=""></asp:Label>
                    </p>
                </div>
                <div class="box">
                    <div id="name" class="col-xs-6 col-md-6 nopadding">
                        <asp:Label class="labelForm" ID="lbFistName" runat="server" Text="*Fist Name:"></asp:Label>
                        <input type="text" id="txtFirstName" value="" class="form-control input-lg" runat="server" placeholder="First Name" required />
                        <asp:RequiredFieldValidator class="red" ID="firstNameValid" runat="server" ErrorMessage="Please enter your name" ControlToValidate="txtFirstName"></asp:RequiredFieldValidator>
                    </div>
                    <div class="col-xs-6 col-md-6">
                        <asp:Label class="labelForm" ID="lbLastName" runat="server" Text="*Last Name:"></asp:Label>
                        <input type="text" id="txtLastName" value="" class="form-control input-lg" runat="server" placeholder="Last Name" required />
                        <asp:RequiredFieldValidator class="red" ID="lastNameValid" runat="server" ErrorMessage="Please enter your last name"
                            ControlToValidate="txtLastName"></asp:RequiredFieldValidator>
                    </div>


                    <hr>

                    <div class="col-xs-6 col-md-6  nopadding">
                        <asp:Label ID="lbBday" class="labelForm" runat="server" Text="*Birth Date:" required="true"></asp:Label>
                        <asp:TextBox ID="txtBDay" class="form-control input-lg short" runat="server" placeholder="mm/dd/yy"></asp:TextBox>
                        <asp:RequiredFieldValidator class="red" ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please enter your birthday"
                            ControlToValidate="txtBDay"></asp:RequiredFieldValidator>
                    </div>
                    <div id="education" class="col-xs-6 col-md-6  nopadding">
                        <asp:Label ID="lbEducation" runat="server" class="labelForm" Text="Education:"></asp:Label>
                        <asp:DropDownList class="form-control input-lg" ID="ddlEducation" runat="server" AppendDataBoundItems="true">
                            <asp:ListItem Text="<Select Level>" Value="0" />
                        </asp:DropDownList>
                    </div>

                    <div class="clearfix"></div>
                </div>
                <div class="box">
                    <div id="language">
                        <asp:Label ID="lblLang" runat="server" class="labelForm nopadding" Text="Is English your first language?"></asp:Label>
                        </br>
                           
                        <asp:CheckBox ID="cbEnglYes" runat="server" class="" Text="Yes" />
                        <asp:CheckBox ID="cbEnglNo" runat="server" class="" Text="No" />
                        </br>
                           
                        <asp:Label ID="lblFstLang" runat="server" class="labelForm nopadding" Text="Pleas Enter Your First Language:"></asp:Label>
                        <asp:TextBox ID="firstLang" class="form-control input-lg" runat="server" placeholder="first language"></asp:TextBox></br>
                       
                    </div>

                    <hr>

                    <div id="gender" class="">
                        <asp:Label ID="lbGender" class="nopadding labelForm" runat="server" Text="Gender"></asp:Label>
                        </br>
                               
                        <asp:CheckBox ID="cbMale" runat="server" Text="M" />
                        <asp:CheckBox ID="cbFmale" runat="server" Text="F" />
                    </div>
                    <hr>
                    <div id="medications" class="">
                        <asp:Label ID="lbMeds" class=" labelForm" runat="server" Text="Are you currently taking any medications?"></asp:Label>
                        </br>
                           
                        <asp:CheckBox ID="cbMedicationsY" runat="server" class="" Text="Yes" />
                        <asp:CheckBox ID="cbMedicationsN" runat="server" class="" Text="No" />
                        <asp:TextBox ID="txtKindMeds" class="form-control input-lg" runat="server" placeholder="medications"></asp:TextBox></br>

                       
                    </div>
                    <hr>
                    <div id="headInj" class="">
                        <asp:Label class="nopadding labelForm" ID="lbHeadInj" runat="server" Text="Have you ever had a head injury?"></asp:Label></br>
                           
                        <asp:CheckBox ID="cbHeadInjY" runat="server" class="" Text="Yes" />
                        <asp:CheckBox ID="cbHeadInjN" runat="server" class="" Text="No" /></br>
                       
                           

                        <asp:Label class="labelForm" ID="lbHeadInjNum" runat="server" Text="How Many?"></asp:Label>
                        <asp:DropDownList ID="ddlHeadInjNum" class="form-control input-lg short" runat="server" AppendDataBoundItems="true">
                            <asp:ListItem Text="<Select>" Value="0" />
                        </asp:DropDownList>

                    </div>
                    <div class="clearfix"></div>
                </div>
                <div class="box">

                    <div id="income">
                        <asp:Label ID="lbIncome" runat="server" class="labelForm nopadding" Text="Level of Income:"></asp:Label></br>
                           
                        <asp:DropDownList ID="ddlIncome" class="form-control input-lg short" runat="server" AppendDataBoundItems="true">
                            <asp:ListItem Text="<Select Level>" Value="0" />
                        </asp:DropDownList>
                    </div>

                    <hr>
                    <div id="leadingHand">
                        <asp:Label ID="lbHand" runat="server" class="labelForm nopadding" Text="Dominant Hand"></asp:Label>
                        <asp:DropDownList class="form-control input-lg short" ID="ddlHand" runat="server" AppendDataBoundItems="true">
                            <asp:ListItem Text="<Select Level>" Value="0" />
                        </asp:DropDownList>
                    </div>
                    <hr />
                    <div id="ethnicity">
                        <asp:Label ID="lblEthnicity" runat="server" class="labelForm nopadding" Text="Ethnicity"></asp:Label>
                        <asp:DropDownList class="form-control input-lg short" ID="ddlEthnicity" runat="server" AppendDataBoundItems="true">
                            <asp:ListItem Text="<Select Level>" Value="0" />
                        </asp:DropDownList>
                    </div>
                </div>
                <div id="scaleRead" class="box">

                    <label class="labelForm nopadding">
                        How many hours a week do you engage in stimulating activity such as follows: 
                                         reading, writing, playing cards, intellectual conversations, computer use:</label>
                    <ul id="brainActivity" class='likert'>
                        <li>
                            <input id="act1" runat="server" type="radio" name="likert">
                            <label id="lact1" runat="server">0-5</label>
                        </li>
                        <li>
                            <input id="act2" runat="server" type="radio" name="likert">
                            <label id="lact2" runat="server">6-10</label>
                        </li>
                        <li>
                            <input id="act3" runat="server" type="radio" name="likert">
                            <label id="lact3" runat="server">11-15</label>
                        </li>
                        <li>
                            <input id="act4" runat="server" type="radio" name="likert">
                            <label id="lact4" runat="server">16-20</label>
                        </li>
                        <li>
                            <input id="act5" runat="server" type="radio" name="likert">
                            <label id="lact5" runat="server">more than 20</label>
                        </li>
                    </ul>

                    <label class="labelForm nopadding">How many hours a week do you exercise?</label>
                    <ul id="exercise" class='likert'>
                        <li>
                            <input id="exe1" runat="server" type="radio" name="likert2" value="0-1">
                            <label id="lexe1" runat="server">0-1</label>
                        </li>
                        <li>
                            <input id="exe2" runat="server" type="radio" name="likert2" value="2-3">
                            <label id="lexe2" runat="server">2-3</label>
                        </li>
                        <li>
                            <input id="exe3" runat="server" type="radio" name="likert2" value="4-5">
                            <label id="lexe3" runat="server">4-5</label>
                        </li>

                        <li>
                            <input id="exe4" runat="server" type="radio" name="likert2" value="6-7">
                            <label id="lexe4" runat="server">6-7</label>
                        </li>
                        <li>
                            <input id="exe5" runat="server" type="radio" name="likert2" value="8-9">
                            <label id="lexe5" runat="server">8-9</label>
                        </li>

                    </ul>
                    <label class="labelForm nopadding">How would you rate your self-esteem:</label>
                    <ul id="selfEsteem" class='likert'>
                        <li>
                            <input id="esteem1" runat="server" type="radio" name="likert3" value="">
                            <label id="lesteem1" runat="server">Low</label>
                        </li>
                        <li>
                            <input id="esteem2" runat="server" type="radio" name="likert3" value="">
                            <label id="lesteem2" runat="server">Below Avarage</label>
                        </li>
                        <li>
                            <input id="esteem3" runat="server" type="radio" name="likert3" value="">
                            <label id="lesteem3" runat="server">Average</label>
                        </li>
                        <li>
                            <input id="esteem4" runat="server" type="radio" name="likert3" value="">
                            <label id="lesteem4" runat="server">Above Average</label>
                        </li>
                        <li>
                            <input id="esteem5" runat="server" type="radio" name="likert3" value="">
                            <label id="lesteem5" runat="server">High</label>
                        </li>
                    </ul>
                    <label class="labelForm nopadding">How would you rate your overall health:</label>
                    <ul id="selfHealth" class='likert'>
                        <li>
                            <input id="health1" runat="server" type="radio" name="likert4" value="">
                            <label id="lhealth1" runat="server">Poor</label>
                        </li>
                        <li>
                            <input id="health2" runat="server" type="radio" name="likert4" value="">
                            <label id="lhealth2" runat="server">Below Average</label>
                        </li>
                        <li>
                            <input id="health3" runat="server" type="radio" name="likert4" value="">
                            <label id="lhealth3" runat="server">Average</label>
                        </li>
                        <li>
                            <input id="health4" runat="server" type="radio" name="likert4" value="">
                            <label id="lhealth4" runat="server">Above Average</label>
                        </li>
                        <li>
                            <input id="health5" runat="server" type="radio" name="likert4" value="">
                            <label id="lhealth5" runat="server">Excellent</label>
                        </li>
                    </ul>
                </div>
                <p>
                    <asp:Button ID="submit" class="signup-btn" runat="server" Text="Save" OnClick="submit_Click" />
                </p>

            </div>
        </section>
    </form>
    <footer>
        <div class="container">
            <div class="row">
                <div class="container">
                    <div class="text-center height-contact-element">
                        <h2>FOLLOW US</h2>
                    </div>
                    <img class="img-responsive displayed" src="images/line-separator.png" alt="short" />
                    <div class="text-center height-contact-element">
                        <ul class="list-unstyled list-inline list-social-icons">
                            <li class="active"><a href="https://www.facebook.com/CogQuiz-1644904339158958/"><i class="fa fa-facebook social-icons"></i></a></li>
                            <li><a href="https://twitter.com/cogquizcom"><i class="fa fa-twitter social-icons"></i></a></li>
                            <li><a href="https://plus.google.com/u/3/113821050703373361140?hl=en"><i class="fa fa-google-plus social-icons"></i></a></li>
                            <li><a href="https://www.linkedin.com/in/hasker-davis-8849a914"><i class="fa fa-linkedin social-icons"></i></a></li>
                        </ul>
                    </div>
                </div>
                <div class="col-lg-12 text-center">
                    <p>Copyright &copy; Your Website 2014</p>
                </div>
            </div>
        </div>
    </footer>

</body>
</html>


<script src="js/bootstrap.min.js"></script>

<script src="https://code.jquery.com/jquery-3.1.0.js" integrity="sha256-slogkvB1K3VOkzAI8QITxV3VzpOnkeNVsKvtkYLMjfk=" crossorigin="anonymous"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js" integrity="sha256-T0Vest3yCU7pafRw9r+settMBX6JkKN06dqBnpQ8d30=" crossorigin="anonymous"></script>



<script>

    $('#txtBDay').datepicker({
        dateFormat: 'mm/dd/yy',
        changeMonth: true,
        changeYear: true,
        yearRange: "1900:2020"
    });

    if (cbMedicationsY.checked == true) {
        $('#txtKindMeds').show();
        $('#cbMedicationsN').prop('checked', false);
    }
    else
        $('#txtKindMeds').hide();


    if (cbHeadInjY.checked == true) {
        $('#ddlHeadInjNum').show();
        $('#lbHeadInjNum').show();
        $('#cbHeadInjN').prop('checked', false);
    }
    else {
        $('#ddlHeadInjNum').hide();
        $('#lbHeadInjNum').hide();
    }



    $('#cbMedicationsY').click(function () {
        if (this.checked == true) {
            $('#txtKindMeds').show();
            $('#cbMedicationsN').prop('checked', false);
        }
        else
            $('#txtKindMeds').hide();
    })

    $('#cbMedicationsN').click(function () {
        if (this.checked == true) {
            $('#txtKindMeds').hide();
            $('#cbMedicationsY').prop('checked', false);
        }

    })


    $('#cbMale').click(function () {
        $('#cbFmale').prop('checked', false);
    })

    $('#cbFmale').click(function () {
        $('#cbMale').prop('checked', false);
    })

    //$('#cbAgree').click(function () {
    //    $('#cbDoNotAgree').prop('checked', false);
    //})

    //$('#cbDoNotAgree').click(function () {
    //    $('#cbAgree').prop('checked', false);
    //})


    $('#cbHeadInjY').click(function () {
        if (this.checked == true) {
            $('#ddlHeadInjNum').show();
            $('#lbHeadInjNum').show();
            $('#cbHeadInjN').prop('checked', false);
        }
        else {
            $('#ddlHeadInjNum').hide();
            $('#lbHeadInjNum').hide();
        }
    })

    $('#cbHeadInjN').click(function () {
        if (this.checked == true) {
            $('#ddlHeadInjNum').hide();
            $('#lbHeadInjNum').hide();
            $('#cbHeadInjY').prop('checked', false);
        }

    })

    if (cbEnglYes.checked == true) {
        $('#lblFstLang').hide();
        $('#firstLang').hide();
        $('#cbEnglNo').prop('checked', false);
    }
    else {
        $('#lblFstLang').show();
        $('#firstLang').show();
        $('#cbEnglN0').prop('checked', true);

    }

    $('#cbEnglYes').click(function () {
        if (this.checked == true) {
            $('#lblFstLang').hide();
            $('#firstLang').hide();
            $('#cbEnglNo').prop('checked', false);
        }
        else {
            $('#lblFstLang').show();
            $('#firstLang').show();
            $('#cbEnglN0').prop('checked', true);

        }
    })

    $('#cbEnglNo').click(function () {
        if (this.checked == true) {
            $('#lblFstLang').show();
            $('#firstLang').show();
            $('#cbEnglYes').prop('checked', false);
        }
        else {
            $('#lblFstLang').hide();
            $('#firstLang').hide();
            $('#cbEnglYes').prop('checked', true);
        }

    })



    $('#cbHeadInjN').click(function () {
        if (this.checked == true) {
            $('#ddlHeadInjNum').hide();
            $('#lbHeadInjNum').hide();
            $('#cbHeadInjY').prop('checked', false);
        }

    })

    $('#submit').click(function () {
        alert("Smth");
    });

</script>

<script src="js/gallety.js"></script>

