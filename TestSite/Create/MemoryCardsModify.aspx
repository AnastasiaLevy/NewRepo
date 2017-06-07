<%@ Page Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="MemoryCardsModify.aspx.cs" Inherits="TestSite.Create.MemoryCardsModify" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>MemoryCards</title>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/raphael/2.2.1/raphael.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/raphael/2.2.1/raphael.min.js"></script>
    <script src="https://code.jquery.com/jquery-3.1.0.js"></script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section id="">

        <div class="box box1">
            <div class="col-lg-12">
                <hr />
                <h2 class="intro-text text-center">Memory Cards 
                            <strong>Set Up</strong>
                </h2>
                <hr />
                <div>
                         <%--<asp:Button ID="btnManual" runat="server" Text="TOL Set Up Instructions"  class="btn btn-labeled btn-info"  onClick="btnManual_Click"/>--%>
                                 <%--<asp:Button ID="btnVideo" runat="server" Text="Video"  class="btn btn-labeled btn-info"  onClick="btnVideo_Click"/>--%>

                </div>
            </div>
        </div>
    </section>
  


    <section id="testInstructions">
        <div class="row ">
            <div class="box">
                <div class="col-lg-12">
                    <hr />
                    <h2 class="intro-text text-center">Set Up
                            <strong>Test Instructions For Test #1:</strong>
                    </h2>
                    <hr />
                </div>
                <div class="col-lg-12 font-larger">
                    <p class="min"><strong>Enter Test Name:</strong> </p>
                    <input type="text" id="testName" style="width: 100%" runat="server" />
                </div>

                <div class="col-lg-12 font-larger">
                    <p class="min"><strong>Enter Test Instructions to display in the beginning of the test:</strong> </p>
                    <textarea id="instructions" style="width: 100%" rows="5" runat="server"></textarea>
                </div>
                <%--<div class="col-lg-12 font-larger">
                    <p class="min"><strong>Enter Feedback Text:</strong> </p>
                    <textarea id="feedback" style="width: 100%" rows="5" runat="server"></textarea>
                </div>--%>
                <div class="col-lg-12 font-larger">
                    <p class="min"><strong>Enter Over Move Limit feedback text:</strong> </p>
                    <textarea id="overMoves" style="width: 100%" rows="5" runat="server"></textarea>
                </div>
                <div class="col-lg-12 font-larger">
                    <p class="min"><strong>Enter Over Move Limit feedback text:</strong> </p>
                    <textarea id="Textarea1" style="width: 100%" rows="5" runat="server"></textarea>
                </div>

                <div class="col-lg-12 font-larger">
                    <p class="min"><strong>Enter Over Time Limit feedback text:</strong> </p>
                    <textarea id="overTime" style="width: 100%" rows="5" runat="server"></textarea>
                </div>

                <div class="col-lg-7 font-larger">
                    <p class="min"><strong>Enter Test Instructions to display at the end of the test:</strong> </p>
                    <textarea id="instructionsFinish" style="width: 80%" rows="5" runat="server"></textarea>
                </div>

                <div class="col-lg-3 font-larger">
                    <p class="min"><strong>Enter Button Text that will show at the end of the test:</strong> </p>
                    <input type="text" id="txtButton" style="width: 100%" runat="server" />

                    <p class="min"><strong>Enter "Work Area" label:</strong> </p>
                    <input type="text" id="workArea" style="width: 100%" runat="server" />

                    <p class="min"><strong>Enter "Goal State" area label:</strong> </p>
                    <input type="text" id="endArea" style="width: 100%" runat="server" />
                </div>


                <div class="clearfix"></div>
            </div>
        </div>
    </section>

    <section id="params">
        <div class="row">
            <div class="box font-larger">
                <div class="col-lg-12">
                    <hr />
                    <h2 class="intro-text text-center">Set Up
                            <strong>Test Parameters:</strong>
                    </h2>
                    <hr />
                </div>
                <div class="myForm">
                    <div class="col-lg-4 font-larger">
                        <asp:Label ID="Label1" runat="server" Text="Number of Practice Rounds:"></asp:Label>
                        <asp:DropDownList ID="ddlPractice" runat="server"></asp:DropDownList>
                    </div>

                    <div class="col-lg-4 font-larger">
                        <asp:Label ID="Label2" runat="server" Text="Number of Test Rounds:"></asp:Label>
                        <asp:DropDownList ID="ddlNumberGames" runat="server"></asp:DropDownList>
                    </div>

                    <div class="col-lg-4 font-larger">
                        <asp:Label ID="Label3" runat="server" Text="Calculate Results From:"></asp:Label>
                        <asp:DropDownList ID="ddlConuntFromRound" runat="server"></asp:DropDownList>

                    </div>
                </div>
                <div class="col-lg-4 font-larger">
                    <asp:Label ID="Label5" runat="server" Text="Time Out After (sec):"></asp:Label>
                    <asp:TextBox ID="timeOutAfter" runat="server"></asp:TextBox>
                </div>
                <div class="col-lg-4 font-larger">
                    <asp:Label ID="Label6" runat="server" Text="Max Moves Allowed"></asp:Label>
                    <asp:TextBox ID="maxMovesLimit" runat="server"></asp:TextBox>
                </div>
                <div class="col-lg-4 font-larger">
                    <asp:Label ID="Label9" runat="server" Text="Countdown time (sec)"></asp:Label>
                    <asp:TextBox ID="countDown" runat="server"></asp:TextBox>
                </div>
                <div class="col-lg-4 font-larger">
                    <asp:Label ID="Label10" runat="server" Text="Countdown Text:"></asp:Label>
                    <asp:TextBox ID="countDownText" runat="server"></asp:TextBox>
                </div>

                <div class=" col-lg-4 font-larger ">
                    <asp:Label ID="Label7" runat="server" Text="Show Feedback"></asp:Label>
                    <asp:CheckBox ID="showFeedback" runat="server" />
                </div>
                <div class=" col-lg-4 font-larger ">
                    <asp:Label ID="Label8" runat="server" Text="Display Result Page"></asp:Label>
                    <asp:CheckBox ID="displayResultPage" runat="server" />
                </div>
                <div class="col-lg-4 font-larger">
                    <asp:Label ID="Label4" runat="server" Text="Use Text-To-Speech"></asp:Label>
                    <asp:CheckBox ID="cbTextSpeech" runat="server" Text="" />
                    <select id="select" runat="server"> </select>
                </div>


            </div>
        </div>
    </section>

    <section id="testPositions">
        <div class="row">
            <div class="box">
                <div class="col-lg-12">
                    <hr />
                    <h2 class="intro-text text-center">Set Up
                            <strong>Round Positions:</strong>
                    </h2>
                    <hr />
                </div>
                <div class="alert alert-danger" id="MovesError"></div>

                <div class="alert alert-success" id="success">
                </div>
                <input id="SetupUpdate" class="btn  btn-success btn-xs" type="button" value="Set Moves" />


                <div class="col-lg-12">
                    <%--//<h3 id="roundNumber"></h3>--%>


                    <div class="input-group input-group-lg " id="title">
                        <span class="input-group-addon" id="roundNumber"></span>
                        <input type="text" class="form-control" id="roundValue" style="width: 50px" />
                    </div>

                </div>
                <%--  <input id="roundValue" type="text"  />--%>



                <div class="col-md-4 col-sm-12 workArea  font-larger" id="start">
                    Start Position
                </div>
                <div class='col-md-1'>
                    <input id="colorBlue" class="col-lg-1 btn btn-labeled btn-primary" type="button" />
                    <input id="colorGreen" class=" col-lg-1 btn btn-labeled btn-success" type="button" />
                    <input id="colorRed" class=" col-lg-1 btn btn-labeled btn-danger" type="button" />

                </div>

                <div class="col-md-4  workArea  font-larger" id="end">
                    Goal Position
                </div>

                <div class='col-md-2 col-sm-offset-1'>
                    <p>Number of Moves:</p>
                    <input type="text" id="numberOfMoves" style="width: 50px" />


                </div>
                <div class="col-lg-6">

                    <input id="save" class="btn  btn-success btn-xs" type="button" value="Save" />
                    <input id="delete" class="btn  btn-success btn-xs" type="button" value="Delete" />
                    <input id="makeAnother" class="btn btn-success btn-xs" type="button" value="Create" />

                </div>
                <div class="col-lg-4 col-sm-offset-2">
                    <input class=" btn btn-info btn-xs" id="viewTest" type="button" value="View Test" />
                    <input class=" btn btn-danger btn-xs" id="saveTest" type="button" value="Save Test" />

                </div>
                <div class="col-lg-12" id="pageNums">
                </div>
            </div>
            <div class="clearfix"></div>
        </div>
    </section>

    <textarea id="movesText" rows="5" runat="server"></textarea>

    
</asp:Content>