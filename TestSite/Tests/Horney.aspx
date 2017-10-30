<%@ Page Title="" Language="C#" MasterPageFile="~/TestPage.Master" AutoEventWireup="true" CodeBehind="Horney.aspx.cs" Inherits="TestSite.Tests.Horney" %>
<asp:Content ID="Content1" ContentPlaceHolderID="tags" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="li" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="testName" runat="server">
    Horney-Coolidge Tridimensional Inventory (HCTI)
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="testDescription" runat="server">
   <p> The HCTI is a 57-item personality measure based on the theory of the revolutionary psychoanalyst Karen Horney (1885-1992) that normal people move freely along three dimensions: Moving Toward Others (Compliant Type), Moving Against Others (Aggressive Type), or Moving Away from Others (Detached Type). Horney proposed that neurotic individuals were often fixated along a single dimension. The HCTI has empirically demonstrated test-retest and scale reliability and construct validity (with modern personality disorders), and the HCTI has norms on 630 purportedly normal people age 15 years old to 90 years old.</p>
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="contentAbout" runat="server">
     <p></p>
</asp:Content>
<asp:Content ID="Content6" ContentPlaceHolderID="contentMeasure" runat="server">
</asp:Content>
<asp:Content ID="Content7" ContentPlaceHolderID="contentDetails" runat="server">
</asp:Content>
<asp:Content ID="Content8" ContentPlaceHolderID="contentResearch" runat="server">
    
REFERENCES

<p>Coolidge, F. L., Segal, D. L., Estey, A. J., & Neuzil, P. J. (2011). Preliminary psychometric properties of a measure of Karen Horney’s tridimensional theory in children and adolescents. Journal of Clinical Psychology, 67, 383-390. [click <a target="_blank" href="/content/HCTI/Coolidge2010-PreliminaryPsychometricPropertiesofaMeasureofKarenHorney’s.pdf">here</a> for PDF copy]</p>

<p>Coolidge, F. L., Segal, D. L., Benight, C. C., & Danielian, J. (2004). The predictive power of Horney’s psychoanalytic approach: An empirical study. American Journal of Psychoanalysis, 64, 363-374. [click <a target="_blank" href="/content/HCTI/Coolidge2004-ThepredictivepowerofHorney’spsychoanalyticapproach.pdf">here</a> for PDF copy]</p>

<p>Coolidge, F. L., Moor, C. J., Yamazaki, T. G., Stewart, S. E., & Segal, D. L. (2001). On the relationship between Karen Horney's tripartite theory and personality disorder features. Personality and Individual Differences, 30, 1387-1400. [click <a target="_blank" href="/content/HCTI/Coolidge2001OntherelationshipbetweenKarenHorneystripartite.pdf">here</a> for PDF copy]</p>
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
                                <h4 class="red">Set of 1000</h4>
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
