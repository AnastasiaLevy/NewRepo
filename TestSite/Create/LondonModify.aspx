<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="LondonModify.aspx.cs" Inherits="TestSite.Create.LondonModify" %>

<%@ Register Src="~/UserControls/LondonModifyPanel.ascx" TagPrefix="uc1" TagName="LondonModifyPanel" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>TowerOfLondon</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
         <section id="">
           
                <div class="box box1">
           <div class="col-lg-12">
                        <hr/>
                        <h2 class="intro-text text-center">Tower of London
                       
                            <strong>Set Up</strong>
                        </h2>
                        <hr/>

                    </div>
            </div>
        </section>

          <section id="testInstructions">
            <div class="row">
                <div class="box">
           <div class="col-lg-12">
                        <hr/>
                        <h2 class="intro-text text-center">Set Up
                            <strong>Instructions:</strong>
                        </h2>
                        <hr/>

                    </div>
                    <p class="min"><strong>Enter Test Instructions:</strong> </p>
                    <div class="col-lg-12">
                        
                        <textarea id="instructions" style="width:100%" rows="5"></textarea>
                    </div>
                    <asp:CheckBox ID="CheckBox1" runat="server" text="Use Text-To-Speach"/>
                    <div class="clearfix"></div>
                </div>
               
            </div>
        </section>

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
    <uc1:LondonModifyPanel runat="server" id="LondonModifyPanel" />
</asp:Content>
