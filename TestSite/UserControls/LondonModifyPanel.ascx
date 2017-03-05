<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="LondonModifyPanel.ascx.cs" Inherits="TestSite.UserControls.LondonModifyPanel" %>
<%@ Register Src="~/UserControls/LondonModifyPanel.ascx" TagPrefix="uc1" TagName="LondonModifyPanel" %>

<section id="testGameNumber">
            <div class="row">
                <div class="box">
           <div class="col-lg-12">
                        <hr/>
                        <h2 class="intro-text text-center">Set Up
                            <strong>Rounds:</strong>
                        </h2>
                        <hr/>

                    </div>
                       <div class="col-lg-4">
                           <asp:Label ID="Label1" runat="server" Text="Number of Practice Rounds:"></asp:Label>
                           <asp:DropDownList ID="ddlPractice" runat="server"></asp:DropDownList>
                       </div>

                      <div class="col-lg-4">
                           <asp:Label ID="Label2" runat="server" Text="Number of Test Rounds:"></asp:Label>
                           <asp:DropDownList ID="ddlNumberGames" runat="server"></asp:DropDownList>
                       </div>

                      <div class="col-lg-4">
                           <asp:Label ID="Label3" runat="server" Text="Calculate Results From:"></asp:Label>
                           <asp:DropDownList ID="ddlConuntFromRound" runat="server"></asp:DropDownList>
                       </div>
                    <div class="clearfix"></div>
                </div>
              
              
       
            </div>
        </section>