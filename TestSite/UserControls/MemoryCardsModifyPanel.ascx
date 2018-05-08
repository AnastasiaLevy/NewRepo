<%@ Control Language="C#" AutoEventWireup="true"  CodeBehind="MemoryCardsModifyPanel.ascx.cs" Inherits="TestSite.UserControls.MemoryCardsModifyPanel" 
    culture="auto" uiculture="auto" %>
<section id="testInstructions">
        <div class="row ">
            <div class="box">
                <div class="col-lg-12">
                    <asp:HiddenField ID="hiddenField" runat="server" Value ="0" />
                    <hr />
                    <h2 class="intro-text text-center"><asp:Localize meta:resourcekey="testInstructions_title"  runat="server" ID="Localize48" Text="" />
                            <strong><asp:Localize meta:resourcekey="testInstructions_strong"  runat="server" ID="Localize1" Text="" /> <span id="headName"></span></strong>
                    </h2>
                    <hr />
                </div>
                <div class="formInputs">
                <div class="col-lg-12 font-larger">
                    <p class="min"><strong><asp:Localize meta:resourcekey="testInstructions_pagraph1"  runat="server" ID="Localize2" Text="" /></strong> </p>
                    <input type="text" id="trialName" class="text-capitalize testName" style="width:60%" runat="server"/>
                    <input ID="trialNameId" runat="server" style="display:none" value="0"/>
                </div>

                <div class="col-lg-12 font-larger">
                    <p class="min"><strong><asp:Localize meta:resourcekey="testInstructions_pagraph2"  runat="server" ID="Localize3" Text="" /></strong> </p>
                    <textarea id="testText"  rows="5" style="width:60%" runat="server"></textarea>
                </div>

                <div class="col-lg-12 font-larger" id="matrix">
                    <p class="min"><strong><asp:Localize meta:resourcekey="testInstructions_pagraph3"  runat="server" ID="Localize4" Text="" /></strong> </p>
                    <input type="button" id="smallMatrix" class="btn btn-default" style="color:dimgray;width:7em;"  value="4x3" runat="server"/>
                    <input type="button" id="mediumMatrix" class="btn btn-default" style="color:dimgray;width:7em;"  value="6x4" runat="server"/>
                </div>
                <div class="col-lg-12 font-larger">
                    <p class="min"><strong><asp:Localize meta:resourcekey="testInstructions_pagraph4"  runat="server" ID="Localize5" Text="" /></strong> </p>
                    <input id="overTime" runat="server" value="" />
                </div>
                
                <div class="col-lg-7 font-larger" ">
                    <input type="text" runat="server" value="faces" id="selectImage" style="display:none"/>
                    <p class="min"><strong><asp:Localize meta:resourcekey="testInstructions_pagraph5"  runat="server" ID="Localize6" Text="" /></strong> </p>
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