<%@ Page Title="" Language="C#" MasterPageFile="~/TestPage.Master" AutoEventWireup="true" CodeBehind="Autism.aspx.cs" Inherits="TestSite.Tests.Autism" %>
<asp:Content ID="Content1" ContentPlaceHolderID="tags" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="li" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="testName" runat="server">
    COOLIDGE AUTISTIC SYMPTOMS SURVEY (CASS)
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="testDescription" runat="server">
    <p>
    The CASS is an 84-item, parent-as-respondent inventory that has been designed to assess the Autism Spectrum Disorder according to the criteria in the new DSM-5. It is appropriate for children ages 3 years old to 17 years old, and it has been empirically demonstrated to be able to diagnose children in the Autism Spectrum from mild to severe, including children diagnosed with Autism, Asperger's Disorder, and High Functioning Autism.</p>
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="contentAbout" runat="server">
     <p>The CASS has also been empirically demonstrated to be able to distinguish between children in the Autism Spectrum from purportedly normal children and children with traits and features of or a suspected diagnosis of Schizoid Personality Disorder. </p>
</asp:Content>
<asp:Content ID="Content6" ContentPlaceHolderID="contentMeasure" runat="server">
     <p>The CASS is highly reliable and has been validated on multiple samples of children diagnosed with Autism (mild to severe), Asperger's Disorder, High Functioning Autism, Schizoid Personality Disorder, and purportedly normal children.</p>
</asp:Content>
<asp:Content ID="Content7" ContentPlaceHolderID="contentDetails" runat="server">
</asp:Content>
<asp:Content ID="Content8" ContentPlaceHolderID="contentResearch" runat="server">
</asp:Content>
<asp:Content ID="Content9" ContentPlaceHolderID="sampleReport" runat="server">
   <p class="report"> <asp:LinkButton ID="report" runat="server"
       OnClick="report_Click">Sample report</asp:LinkButton></p>
</asp:Content>
<asp:Content ID="Content10" ContentPlaceHolderID="price" runat="server">

        <section id="price" runat="server">
            <div id="wrapper">
                <div class="container">
                    <div class="row">
                        <div class="col-md-3">
                            <div class="circle c1 img-circle" id="singlePr" runat="server">
                                <h4 class="blue">Single Test</h4>
                                <span class="icon blue"><i class="fa fa-usd"></i></span>
                                <span class="price-large blue">5</span>
                                <span class="price-small">.00</span>
                                <p>One Time Run</p>
                                <asp:Button ID="single" class="btn btn-info" runat="server" onClick="single_Click" Text="Buy Now" />
                            </div>
                        </div>
                        <!-- .Col-md-3 ends here -->

                        <div class="col-md-3">
                            <div class="circle c2 img-circle">
                                <h4 class="yellow">Set of 10</h4>
                                <span class="icon yellow"><i class="fa fa-usd"></i></span>
                                <span class="price-large yellow">40</span>
                                <span class="price-small">.00</span>
                                <p>Small Project</p>
                                <asp:Button ID="ten" class="btn btn-warning" runat="server" OnClick="ten_Click" Text="Buy Now" />
                            </div>
                        </div>
                        <!-- .Col-md-3 ends here -->

                        <div class="col-md-3">
                            <div class="circle c3 img-circle">
                                <h4 class="green">Set of 100</h4>
                                <span class="icon green"><i class="fa fa-usd "></i></span>
                                <span class="price-large green">80</span>
                                <span class="price-small">.00</span>
                                <p>Medium Size Project</p>
                                <asp:Button ID="hundred" class="btn btn-success" runat="server" OnClick="hundred_Click" Text="Buy Now" />
                            </div>
                        </div>
                        <!-- .Col-md-3 ends here -->

                        <div class="col-md-3">
                            <div class="circle c4 img-circle">
                                <h4 class="red">Unlimited Use</h4>
                                <span class="icon red"><i class="fa fa-usd "></i></span>
                                <span class="price-large red">499</span>
                                <span class="price-small">.00</span>
                                <p>
                                    Any Number of Participants
                                <p>


                                    <asp:Button ID="unlim" class="btn btn-danger" runat="server" OnClick="unlim_Click" Text="Buy Now" />
                            </div>
                        </div>
                        <!-- .Col-md-3 ends here -->
                    </div>
                    <!-- .Container ends here -->
                </div>
                <!-- .Row ends here -->
            </div>
        </section>


</asp:Content>
