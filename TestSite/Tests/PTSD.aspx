<%@ Page Title="" Language="C#" MasterPageFile="~/TestPage.Master" AutoEventWireup="true" CodeBehind="PTSD.aspx.cs" Inherits="TestSite.Tests.PTSD" %>

<asp:Content ID="Content1" ContentPlaceHolderID="tags" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="li" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="testName" runat="server">
    COOLIDGE AXIS II INVENTORY (CATI)
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="testDescription" runat="server">
    The CATI is a 250-item psychopathology and neuropsychological inventory for ages 15 and above. There are two forms: self-report and significant-other. The CATI assesses over 40 clinical and neuropsychological disorders including 14 personality disorders, depression, anxiety, schizophrenia, PTSD, adult ADHD, and neurocognitive disorders, and others. The CATI is aligned with the official DSM-5 criteria and has norms on thousands of clinical and nonclinical samples.
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="contentAbout" runat="server">
</asp:Content>
<asp:Content ID="Content6" ContentPlaceHolderID="contentMeasure" runat="server">
    <ul>
        <li><p>14 personality disorders (10 from DSM-5, 2 from the appendix of DSM-IV-TR and 2 from the appendix of DSM-III-R)</p></li>
        <li><p>6 major Clinical Syndromes including Major Depressive Disorder, Generalized Anxiety Disorder, Schizophrenia, Post-Traumatic Stress Disorder, Social Phobia, and Attention- Deficit Disorder</p></li>
        <li><p>Neuropsychological Deficit scales including Neurocognitive Disorder (mild to severe), a General Neuropsychological Deficits scale (with 3 subscales assessing Memory, Language, and Neurosomatic problems)</p></li>
        <li><p>Executive Dysfunctions of the Frontal Lobe scale (with 3 subscales assessing Decision- Making Difficulties, Poor Planning, and Task Completion Difficulties)</p></li>
        <li><p>3 Hostility scales assessing Dangerousness, Anger, and Impulsivity</p></li>
        <li><p>Other Clinical scales including early juvenile delinquency, depersonalization, low frustration tolerance, and others</p></li>
        <li><p>2 Drug and Alcohol Abuse items</p></li>
        <li><p>Suicidal Ideation</li>
        <li><p>Extraversion-Introversion scale</p></li>
        <li><p>Critical Items assessing food and body-image problems, sleep problems, and others</p></li>
        <li><p>3 validity scales assessing random responding, excessive denial, and malingering</p></li>
    </ul>
</asp:Content>
<asp:Content ID="Content7" ContentPlaceHolderID="contentDetails" runat="server">
</asp:Content>
<asp:Content ID="Content8" ContentPlaceHolderID="contentResearch" runat="server">
    <p>ESSENTIAL REFERENCE</p>

    <p>Coolidge, F. L. & Merwin, M. M. (1992). Reliability and validity of the Coolidge Axis Two Inventory: A new inventory for the assessment of personality disorders. Journal of Personality Assessment, 59, 223-238. [click <a target="_blank" href="/content/CATI/Coolidge and Merwin 1992-Reliability and Validity of CAIII.pdf">here</a> for PDF copy]</p>

    <p>OTHER PUBLICATIONS WITH THE CATI</p> 

<p>Coolidge, F. L., Segal, D. L., & Applequist, K. (2009). Working memory deficits in personality disorder traits: A preliminary investigation in a nonclinical sample. Journal of Research in Personality, 43, 355-361. [click <a target="_blank" href="/content/CATI/Coolidge et al 2009-Working memory deficits in personality disorder traits.pdf">here</a> for PDF copy]</p>

<p>Coolidge, F. L., & Segal, D. L. (2009). Is Kim Jong-il like Saddam Hussein and Adolf Hitler? A personality disorder evaluation. Behavioral Sciences of Terrorism and Political Aggression, 1, 195-202. [click <a target="_blank" href="/content/CATI/Coolidge and Segal 2009-Is Kim Jong-il like Saddam Hussein and Adolf Hitler.pdf">here</a> for PDF copy]</p>

<p>Coolidge, F. L., Davis, F. L., & Segal, D. L. (2007). Understanding madmen: A DSM-IV assessment of Adolf Hitler. Individual Differences Research, 5, 30-43. [click <a target="_blank" href="/content/CATI/Coolidge et al 2007-Understanding Madmen.pdf">here</a> for PDF copy]</p>

<p>Coolidge, F. L., & Segal, D. L. (2007). Is Saddam Hussein like Adolf Hitler? A personality disorder investigation. Military Psychology, 19, 1-11. [click <a target="_blank" href="/content/CATI/Coolidge and Segal 2007-Is Saddam Hussein like Adolf Hitler.pdf">here</a> for PDF copy]</p>

<p>Coolidge, F. L. & Anderson, L. W. (2002). Personality profiles of women in multiple abusive relationships. Journal of Family Violence, 17, 117-131. [click <a target="_blank" href="/content/CATI/Coolidge and Anderson 2002-Personality Profiles of Women.pdf">here</a> for PDF copy]</p>
</asp:Content>

<asp:Content ID="Content10" ContentPlaceHolderID="sampleReport" runat="server">
  <p class="report"> <asp:LinkButton ID="report" runat="server"
       OnClick="report_Click">Sample report</asp:LinkButton></p>
</asp:Content>
<asp:Content ID="Content9" ContentPlaceHolderID="price" runat="server">

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
