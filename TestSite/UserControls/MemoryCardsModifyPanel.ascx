<%@ Control Language="C#" AutoEventWireup="true"  CodeBehind="MemoryCardsModifyPanel.ascx.cs" Inherits="TestSite.UserControls.MemoryCardsModifyPanel" %>
<section id="testInstructions">
        <div class="row ">
            <div class="box">
                <div class="col-lg-12">
                    <asp:HiddenField ID="hiddenField" runat="server" Value ="0" />
                    <hr />
                    <h2 class="intro-text text-center">Set Up
                            <strong>Trial Instructions <span id="headName"></span></strong>
                    </h2>
                    <hr />
                </div>
                <div class="formInputs">
                <div class="col-lg-12 font-larger">
                    <p class="min"><strong>Enter Trial Name:</strong> </p>
                    <input type="text" id="trialName" class="text-capitalize testName" style="width:60%" runat="server"/>
                    <input ID="trialNameId" runat="server" style="display:none" value="0"/>
                </div>

                <div class="col-lg-12 font-larger">
                    <p class="min"><strong>Enter Trial Instructions to display in the beginning of the test:</strong> </p>
                    <textarea id="testText"  rows="5" style="width:60%" runat="server"></textarea>
                </div>

                <div class="col-lg-12 font-larger" id="matrix">
                    <p class="min"><strong>Game Matrix:</strong> </p>
                    <input type="button" id="smallMatrix" class="btn btn-default" style="color:dimgray;width:7em;"  value="4x3" runat="server"/>
                    <input type="button" id="mediumMatrix" class="btn btn-default" style="color:dimgray;width:7em;"  value="6x4" runat="server"/>
                </div>
                <div class="col-lg-12 font-larger">
                    <p class="min"><strong>Enter Over Time Limit:</strong> </p>
                    <input id="overTime" runat="server" value="" />
                </div>
                
                <div class="col-lg-7 font-larger" ">
                    <input type="text" runat="server" value="faces" id="selectImage" style="display:none"/>
                    <p class="min"><strong>Choose images for test:</strong> </p>
                    <div class="imagesDiv" >
                        <select class="btn btn-facebook uppercase selector imgSelector"  >
                        </select>
                    </div>
                    
                </div>
                </div>
                <div class="clearfix"></div>
            </div>
            
        </div>
    </section>