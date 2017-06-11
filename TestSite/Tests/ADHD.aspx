﻿<%@ Page Title="" Language="C#" MasterPageFile="~/TestPage.Master" AutoEventWireup="true" CodeBehind="ADHD.aspx.cs" Inherits="TestSite.Tests.PTSD" %>

<asp:Content ID="Content1" ContentPlaceHolderID="tags" runat="server">
 
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="li" runat="server">

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="testName" runat="server">
    COOLIDGE PERSONALITY AND NEUROPSYCHOLOGICAL INVENTORY FOR CHILDREN (CPNI)
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="testDescription" runat="server">
    The CPNI is designed to assess psychopathology and neuropsychological dysfunction in children and adolescents ages 5 to 17 years old. The CPNI is a 200-item, parent-as-respondent inventory that assesses over 35 clinical and neuropsychological disorders, and it is aligned with the diagnoses in DSM-5, including 10 childhood personality disorders, conduct disorder, ADHD, oppositional defiant disorder, separation anxiety disorder, depression, maturational delay, autism, gender dysphoria, and neurocognitive dysfunction.The CPNI norms are based on 780 children and adolescents (30 boys and 30 girls at each age level from 5 to 17 years old).
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="contentAbout" runat="server">
</asp:Content>
<asp:Content ID="Content6" ContentPlaceHolderID="contentMeasure" runat="server">
    <ul>
        <li>
            <p>9 childhood personality disorders (and Conduct Disorder) from criteria in DSM-5. </p>
        </li>
        <li>
            <p>Major Clinical Syndromes including Major Depressive Disorder, Generalized Anxiety Disorder, Attention-Deficit Hyperactivity Disorder, Oppositional Defiant Disorder, Separation Anxiety Disorder, Gender Dysphoria, Autism, Anorexia, Bulimia, and others.  </p>
        </li>
        <li>
            <p>A General Neuropsychological Deficits Scale with 8 subscales assessing Learning Difficulties, Memory Problems, and others </p>
        </li>
        <li>
            <p>Executive Dysfunctions of the Frontal Lobe scale (with 3 subscales).  </p>
        </li>
        <li>
            <p>11 Clinical Scales assessing psychotic thinking, aggression, emotional coldness, sleep disturbances, social anxiety, self-esteem, paranoia, apathy, hostility.</p>
        </li>
        <li>
            <p>A Validity Scale which assesses excessive denial and malingering.</p>
        </li>
    </ul>
</asp:Content>
<asp:Content ID="Content7" ContentPlaceHolderID="contentDetails" runat="server">
</asp:Content>
<asp:Content ID="Content8" ContentPlaceHolderID="contentResearch" runat="server">

    <p>Coolidge, F. L., DenBoer, J. W., & Segal, D. L. (2004). Personality and neuropsychological correlates of bullying behavior: An empirical investigation. Personality and Individual Differences, 36, 1559-1569. [click here for PDF copy]</p>

    <p>Coolidge, F. L., Thede, L. L. & Young, S. E. (2002). The heritability of gender identity disorder in a child and adolescent twin sample. Behavior Genetics, 32, 251-257. [click here for PDF copy]</p>

    <p>Coolidge, F. L., Thede, L. L., Stewart, S. E., & Segal, D. L. (2002). The Coolidge Personality and Neuropsychological Inventory for Children (CPNI): Preliminary psychometric characteristics. Behavior Modification, 26, 550-566. [click here for PDF copy]</p>
</asp:Content>
<asp:Content ID="Content9" ContentPlaceHolderID="sampleReport" runat="server">
    <h3>Sample Report:</h3>
    <body>
        <div class="wrapper">
            <div class="headcontainer">
                <div class="container_12">
                    <div class="grid_3 "><a href="http://coolidgetests.com/">
                        <img src="http://178.62.94.173/web/imgs/logo.png" border="0"></a></div>
                    <div class="grid_8">&nbsp;</div>
                    <div class="grid_1"></div>
                </div>
            </div>

            <div class="navstripe"></div>


            <div class="container_12">
                <div class="grid_2 ">&nbsp;</div>
                <div class="grid_10" style="text-align: right">
                    <div class="rightalign">
                        <div class="navcontainer">
                        </div>
                    </div>
                    <div class="clear"></div>
                </div>
            </div>
            <div class="clear" style="margin-bottom: 35px">&nbsp;</div>

            <div id="tabs" class="ui-tabs ui-widget ui-widget-content ui-corner-all">
                <ul class="ui-tabs-nav ui-helper-reset ui-helper-clearfix ui-widget-header ui-corner-all">
                    <li class="ui-state-default ui-corner-top ui-tabs-selected ui-state-active"><a href="#rawdata">Data</a></li>
                    <li class="ui-state-default ui-corner-top"><a href="#charts">Charts</a></li>
                    <li class="ui-state-default ui-corner-top"><a href="#explanations">Scale Item Analysis</a></li>
                    <li class="ui-state-default ui-corner-top"><a href="#criticalitems">Critical Items</a></li>
                    <li class="ui-state-default ui-corner-top"><a href="#PersonalityTraits">Personality Traits</a></li>
                    <li class="ui-state-default ui-corner-top"><a href="#summary">Summary</a></li>
                </ul>
                <div id="rawdata" style="page-break-before: always;" class="ui-tabs-panel ui-widget-content ui-corner-bottom">
                    <!-- Begin Raw Data -->
                    <!--<div class="printable"><a href="#" target="_blank"><img src="http://178.62.94.173/web/imgs/icons/printer.png" border="0">  Print This Report</a></div>-->
                    <div class="printable">
                        <div style="float: right; margin-top: 7px;">
                            <form action="" name="download" method="post">
                                <input type="submit" name="download" value="Export to CSV"></form>
                        </div>
                    </div>


                    <table class="chartlegend">
                        <tbody>
                            <tr>
                                <td>Patient Name: John Doe</td>
                                <td style="width: 25px"></td>
                                <td>Test Name: Coolidge Personality and Neuropsychological Inventory (CPNI)</td>
                            </tr>
                            <tr>
                                <td>Gender: Male</td>
                                <td style="width: 50px"></td>
                                <td>Test Date: Oct 12, 2014</td>
                            </tr>
                            <tr>
                                <td>Patient Age: 36</td>
                                <td style="width: 25px"></td>
                                <td>Data Provided By: self</td>
                            </tr>
                        </tbody>
                    </table>
                    <table class="chart" width="35%">
                        <tbody>
                            <tr>
                                <td colspan="5">&nbsp;</td>
                            </tr>
                            <tr>
                                <td colspan="5" style="background: #CCC"><strong>Profile Validity</strong></td>
                            </tr>
                            <tr>
                                <td colspan="5">Answer Frequency (response pattern):</td>
                            </tr>
                            <tr>
                                <td><strong>Raw Scores:</strong></td>
                                <td>
                                    <div style="float: left; margin-top: 2px;"><strong>Patient</strong></div>
                                    <div style="float: left;"><a class="lightbox" href="#Patient">
                                        <img src="http://178.62.94.173/web/imgs/Help.png"></a></div>
                                </td>
                                <td>
                                    <div style="float: left; margin-top: 2px;"><strong>Norm<br>
                                        Frequency</strong></div>
                                    <div style="float: left;"><a class="lightbox" href="#NF">
                                        <img style="margin-top: 8px;" src="http://178.62.94.173/web/imgs/Help.png"></a></div>
                                </td>
                                <td style="text-align: center;">
                                    <div style="float: left; margin-top: 2px;"><strong>(SD)</strong></div>
                                </td>
                            </tr>
                            <tr>
                                <td>1 = Strongly False (SF)</td>
                                <td>41</td>
                                <td>93</td>
                                <td>(40)</td>
                            </tr>
                            <tr>
                                <td>2 = More False Than True (MF)</td>
                                <td>54</td>
                                <td>73</td>
                                <td>(35)</td>
                            </tr>
                            <tr>
                                <td>3 = More True Than False (MT)</td>
                                <td>54</td>
                                <td>54</td>
                                <td>(21)</td>
                            </tr>
                            <tr>
                                <td>4 = Strongly True (ST)</td>
                                <td>51</td>
                                <td>30</td>
                                <td>(18)</td>
                            </tr>
                        </tbody>
                    </table>
                    <table class="chart" width="100%" style="background: #e7e7e7">
                        <tbody>
                            <tr>
                                <th colspan="20">&nbsp;</th>
                            </tr>
                            <tr>
                                <td style="background: #ebebeb; text-align: right; width: 6%">1.</td>
                                <td style="background: #fff; text-align: center">2</td>
                                <td style="background: #ebebeb; text-align: right; width: 6%">21.</td>
                                <td style="background: #fff; text-align: center">3</td>
                                <td style="background: #ebebeb; text-align: right; width: 6%">41.</td>
                                <td style="background: #fff; text-align: center">2</td>
                                <td style="background: #ebebeb; text-align: right; width: 6%">61.</td>
                                <td style="background: #fff; text-align: center">2</td>
                                <td style="background: #ebebeb; text-align: right; width: 6%">81.</td>
                                <td style="background: #fff; text-align: center">2</td>
                                <td style="background: #ebebeb; text-align: right; width: 6%">101.</td>
                                <td style="background: #fff; text-align: center">1</td>
                                <td style="background: #ebebeb; text-align: right; width: 6%">121.</td>
                                <td style="background: #fff; text-align: center">2</td>
                                <td style="background: #ebebeb; text-align: right; width: 6%">141.</td>
                                <td style="background: #fff; text-align: center">3</td>
                                <td style="background: #ebebeb; text-align: right; width: 6%">161.</td>
                                <td style="background: #fff; text-align: center">1</td>
                                <td style="background: #ebebeb; text-align: right; width: 6%">181.</td>
                                <td style="background: #fff; text-align: center">3</td>
                            </tr>
                            <tr>
                                <td style="background: #ebebeb; text-align: right; width: 6%">2.</td>
                                <td style="background: #fff; text-align: center">4</td>
                                <td style="background: #ebebeb; text-align: right; width: 6%">22.</td>
                                <td style="background: #fff; text-align: center">1</td>
                                <td style="background: #ebebeb; text-align: right; width: 6%">42.</td>
                                <td style="background: #fff; text-align: center">2</td>
                                <td style="background: #ebebeb; text-align: right; width: 6%">62.</td>
                                <td style="background: #fff; text-align: center">4</td>
                                <td style="background: #ebebeb; text-align: right; width: 6%">82.</td>
                                <td style="background: #fff; text-align: center">4</td>
                                <td style="background: #ebebeb; text-align: right; width: 6%">102.</td>
                                <td style="background: #fff; text-align: center">3</td>
                                <td style="background: #ebebeb; text-align: right; width: 6%">122.</td>
                                <td style="background: #fff; text-align: center">2</td>
                                <td style="background: #ebebeb; text-align: right; width: 6%">142.</td>
                                <td style="background: #fff; text-align: center">3</td>
                                <td style="background: #ebebeb; text-align: right; width: 6%">162.</td>
                                <td style="background: #fff; text-align: center">2</td>
                                <td style="background: #ebebeb; text-align: right; width: 6%">182.</td>
                                <td style="background: #fff; text-align: center">4</td>
                            </tr>
                            <tr>
                                <td style="background: #ebebeb; text-align: right; width: 6%">3.</td>
                                <td style="background: #fff; text-align: center">4</td>
                                <td style="background: #ebebeb; text-align: right; width: 6%">23.</td>
                                <td style="background: #fff; text-align: center">2</td>
                                <td style="background: #ebebeb; text-align: right; width: 6%">43.</td>
                                <td style="background: #fff; text-align: center">1</td>
                                <td style="background: #ebebeb; text-align: right; width: 6%">63.</td>
                                <td style="background: #fff; text-align: center">3</td>
                                <td style="background: #ebebeb; text-align: right; width: 6%">83.</td>
                                <td style="background: #fff; text-align: center">1</td>
                                <td style="background: #ebebeb; text-align: right; width: 6%">103.</td>
                                <td style="background: #fff; text-align: center">4</td>
                                <td style="background: #ebebeb; text-align: right; width: 6%">123.</td>
                                <td style="background: #fff; text-align: center">4</td>
                                <td style="background: #ebebeb; text-align: right; width: 6%">143.</td>
                                <td style="background: #fff; text-align: center">1</td>
                                <td style="background: #ebebeb; text-align: right; width: 6%">163.</td>
                                <td style="background: #fff; text-align: center">3</td>
                                <td style="background: #ebebeb; text-align: right; width: 6%">183.</td>
                                <td style="background: #fff; text-align: center">3</td>
                            </tr>
                            <tr>
                                <td style="background: #ebebeb; text-align: right; width: 6%">4.</td>
                                <td style="background: #fff; text-align: center">4</td>
                                <td style="background: #ebebeb; text-align: right; width: 6%">24.</td>
                                <td style="background: #fff; text-align: center">1</td>
                                <td style="background: #ebebeb; text-align: right; width: 6%">44.</td>
                                <td style="background: #fff; text-align: center">4</td>
                                <td style="background: #ebebeb; text-align: right; width: 6%">64.</td>
                                <td style="background: #fff; text-align: center">4</td>
                                <td style="background: #ebebeb; text-align: right; width: 6%">84.</td>
                                <td style="background: #fff; text-align: center">1</td>
                                <td style="background: #ebebeb; text-align: right; width: 6%">104.</td>
                                <td style="background: #fff; text-align: center">3</td>
                                <td style="background: #ebebeb; text-align: right; width: 6%">124.</td>
                                <td style="background: #fff; text-align: center">3</td>
                                <td style="background: #ebebeb; text-align: right; width: 6%">144.</td>
                                <td style="background: #fff; text-align: center">1</td>
                                <td style="background: #ebebeb; text-align: right; width: 6%">164.</td>
                                <td style="background: #fff; text-align: center">3</td>
                                <td style="background: #ebebeb; text-align: right; width: 6%">184.</td>
                                <td style="background: #fff; text-align: center">4</td>
                            </tr>
                            <tr>
                                <td style="background: #ebebeb; text-align: right; width: 6%">5.</td>
                                <td style="background: #fff; text-align: center">3</td>
                                <td style="background: #ebebeb; text-align: right; width: 6%">25.</td>
                                <td style="background: #fff; text-align: center">2</td>
                                <td style="background: #ebebeb; text-align: right; width: 6%">45.</td>
                                <td style="background: #fff; text-align: center">1</td>
                                <td style="background: #ebebeb; text-align: right; width: 6%">65.</td>
                                <td style="background: #fff; text-align: center">3</td>
                                <td style="background: #ebebeb; text-align: right; width: 6%">85.</td>
                                <td style="background: #fff; text-align: center">3</td>
                                <td style="background: #ebebeb; text-align: right; width: 6%">105.</td>
                                <td style="background: #fff; text-align: center">3</td>
                                <td style="background: #ebebeb; text-align: right; width: 6%">125.</td>
                                <td style="background: #fff; text-align: center">2</td>
                                <td style="background: #ebebeb; text-align: right; width: 6%">145.</td>
                                <td style="background: #fff; text-align: center">2</td>
                                <td style="background: #ebebeb; text-align: right; width: 6%">165.</td>
                                <td style="background: #fff; text-align: center">2</td>
                                <td style="background: #ebebeb; text-align: right; width: 6%">185.</td>
                                <td style="background: #fff; text-align: center">4</td>
                            </tr>
                            <tr>
                                <td style="background: #ebebeb; text-align: right; width: 6%">6.</td>
                                <td style="background: #fff; text-align: center">3</td>
                                <td style="background: #ebebeb; text-align: right; width: 6%">26.</td>
                                <td style="background: #fff; text-align: center">2</td>
                                <td style="background: #ebebeb; text-align: right; width: 6%">46.</td>
                                <td style="background: #fff; text-align: center">1</td>
                                <td style="background: #ebebeb; text-align: right; width: 6%">66.</td>
                                <td style="background: #fff; text-align: center">3</td>
                                <td style="background: #ebebeb; text-align: right; width: 6%">86.</td>
                                <td style="background: #fff; text-align: center">4</td>
                                <td style="background: #ebebeb; text-align: right; width: 6%">106.</td>
                                <td style="background: #fff; text-align: center">2</td>
                                <td style="background: #ebebeb; text-align: right; width: 6%">126.</td>
                                <td style="background: #fff; text-align: center">1</td>
                                <td style="background: #ebebeb; text-align: right; width: 6%">146.</td>
                                <td style="background: #fff; text-align: center">3</td>
                                <td style="background: #ebebeb; text-align: right; width: 6%">166.</td>
                                <td style="background: #fff; text-align: center">1</td>
                                <td style="background: #ebebeb; text-align: right; width: 6%">186.</td>
                                <td style="background: #fff; text-align: center">1</td>
                            </tr>
                            <tr>
                                <td style="background: #ebebeb; text-align: right; width: 6%">7.</td>
                                <td style="background: #fff; text-align: center">3</td>
                                <td style="background: #ebebeb; text-align: right; width: 6%">27.</td>
                                <td style="background: #fff; text-align: center">3</td>
                                <td style="background: #ebebeb; text-align: right; width: 6%">47.</td>
                                <td style="background: #fff; text-align: center">2</td>
                                <td style="background: #ebebeb; text-align: right; width: 6%">67.</td>
                                <td style="background: #fff; text-align: center">4</td>
                                <td style="background: #ebebeb; text-align: right; width: 6%">87.</td>
                                <td style="background: #fff; text-align: center">3</td>
                                <td style="background: #ebebeb; text-align: right; width: 6%">107.</td>
                                <td style="background: #fff; text-align: center">2</td>
                                <td style="background: #ebebeb; text-align: right; width: 6%">127.</td>
                                <td style="background: #fff; text-align: center">1</td>
                                <td style="background: #ebebeb; text-align: right; width: 6%">147.</td>
                                <td style="background: #fff; text-align: center">3</td>
                                <td style="background: #ebebeb; text-align: right; width: 6%">167.</td>
                                <td style="background: #fff; text-align: center">4</td>
                                <td style="background: #ebebeb; text-align: right; width: 6%">187.</td>
                                <td style="background: #fff; text-align: center">1</td>
                            </tr>
                            <tr>
                                <td style="background: #ebebeb; text-align: right; width: 6%">8.</td>
                                <td style="background: #fff; text-align: center">1</td>
                                <td style="background: #ebebeb; text-align: right; width: 6%">28.</td>
                                <td style="background: #fff; text-align: center">2</td>
                                <td style="background: #ebebeb; text-align: right; width: 6%">48.</td>
                                <td style="background: #fff; text-align: center">3</td>
                                <td style="background: #ebebeb; text-align: right; width: 6%">68.</td>
                                <td style="background: #fff; text-align: center">4</td>
                                <td style="background: #ebebeb; text-align: right; width: 6%">88.</td>
                                <td style="background: #fff; text-align: center">3</td>
                                <td style="background: #ebebeb; text-align: right; width: 6%">108.</td>
                                <td style="background: #fff; text-align: center">2</td>
                                <td style="background: #ebebeb; text-align: right; width: 6%">128.</td>
                                <td style="background: #fff; text-align: center">4</td>
                                <td style="background: #ebebeb; text-align: right; width: 6%">148.</td>
                                <td style="background: #fff; text-align: center">4</td>
                                <td style="background: #ebebeb; text-align: right; width: 6%">168.</td>
                                <td style="background: #fff; text-align: center">2</td>
                                <td style="background: #ebebeb; text-align: right; width: 6%">188.</td>
                                <td style="background: #fff; text-align: center">2</td>
                            </tr>
                            <tr>
                                <td style="background: #ebebeb; text-align: right; width: 6%">9.</td>
                                <td style="background: #fff; text-align: center">2</td>
                                <td style="background: #ebebeb; text-align: right; width: 6%">29.</td>
                                <td style="background: #fff; text-align: center">1</td>
                                <td style="background: #ebebeb; text-align: right; width: 6%">49.</td>
                                <td style="background: #fff; text-align: center">1</td>
                                <td style="background: #ebebeb; text-align: right; width: 6%">69.</td>
                                <td style="background: #fff; text-align: center">3</td>
                                <td style="background: #ebebeb; text-align: right; width: 6%">89.</td>
                                <td style="background: #fff; text-align: center">4</td>
                                <td style="background: #ebebeb; text-align: right; width: 6%">109.</td>
                                <td style="background: #fff; text-align: center">2</td>
                                <td style="background: #ebebeb; text-align: right; width: 6%">129.</td>
                                <td style="background: #fff; text-align: center">4</td>
                                <td style="background: #ebebeb; text-align: right; width: 6%">149.</td>
                                <td style="background: #fff; text-align: center">1</td>
                                <td style="background: #ebebeb; text-align: right; width: 6%">169.</td>
                                <td style="background: #fff; text-align: center">1</td>
                                <td style="background: #ebebeb; text-align: right; width: 6%">189.</td>
                                <td style="background: #fff; text-align: center">2</td>
                            </tr>
                            <tr>
                                <td style="background: #ebebeb; text-align: right; width: 6%">10.</td>
                                <td style="background: #fff; text-align: center">4</td>
                                <td style="background: #ebebeb; text-align: right; width: 6%">30.</td>
                                <td style="background: #fff; text-align: center">2</td>
                                <td style="background: #ebebeb; text-align: right; width: 6%">50.</td>
                                <td style="background: #fff; text-align: center">4</td>
                                <td style="background: #ebebeb; text-align: right; width: 6%">70.</td>
                                <td style="background: #fff; text-align: center">2</td>
                                <td style="background: #ebebeb; text-align: right; width: 6%">90.</td>
                                <td style="background: #fff; text-align: center">4</td>
                                <td style="background: #ebebeb; text-align: right; width: 6%">110.</td>
                                <td style="background: #fff; text-align: center">3</td>
                                <td style="background: #ebebeb; text-align: right; width: 6%">130.</td>
                                <td style="background: #fff; text-align: center">4</td>
                                <td style="background: #ebebeb; text-align: right; width: 6%">150.</td>
                                <td style="background: #fff; text-align: center">4</td>
                                <td style="background: #ebebeb; text-align: right; width: 6%">170.</td>
                                <td style="background: #fff; text-align: center">1</td>
                                <td style="background: #ebebeb; text-align: right; width: 6%">190.</td>
                                <td style="background: #fff; text-align: center">1</td>
                            </tr>
                            <tr>
                                <td style="background: #ebebeb; text-align: right; width: 6%">11.</td>
                                <td style="background: #fff; text-align: center">2</td>
                                <td style="background: #ebebeb; text-align: right; width: 6%">31.</td>
                                <td style="background: #fff; text-align: center">4</td>
                                <td style="background: #ebebeb; text-align: right; width: 6%">51.</td>
                                <td style="background: #fff; text-align: center">2</td>
                                <td style="background: #ebebeb; text-align: right; width: 6%">71.</td>
                                <td style="background: #fff; text-align: center">1</td>
                                <td style="background: #ebebeb; text-align: right; width: 6%">91.</td>
                                <td style="background: #fff; text-align: center">2</td>
                                <td style="background: #ebebeb; text-align: right; width: 6%">111.</td>
                                <td style="background: #fff; text-align: center">3</td>
                                <td style="background: #ebebeb; text-align: right; width: 6%">131.</td>
                                <td style="background: #fff; text-align: center">2</td>
                                <td style="background: #ebebeb; text-align: right; width: 6%">151.</td>
                                <td style="background: #fff; text-align: center">2</td>
                                <td style="background: #ebebeb; text-align: right; width: 6%">171.</td>
                                <td style="background: #fff; text-align: center">3</td>
                                <td style="background: #ebebeb; text-align: right; width: 6%">191.</td>
                                <td style="background: #fff; text-align: center">3</td>
                            </tr>
                            <tr>
                                <td style="background: #ebebeb; text-align: right; width: 6%">12.</td>
                                <td style="background: #fff; text-align: center">2</td>
                                <td style="background: #ebebeb; text-align: right; width: 6%">32.</td>
                                <td style="background: #fff; text-align: center">2</td>
                                <td style="background: #ebebeb; text-align: right; width: 6%">52.</td>
                                <td style="background: #fff; text-align: center">1</td>
                                <td style="background: #ebebeb; text-align: right; width: 6%">72.</td>
                                <td style="background: #fff; text-align: center">1</td>
                                <td style="background: #ebebeb; text-align: right; width: 6%">92.</td>
                                <td style="background: #fff; text-align: center">1</td>
                                <td style="background: #ebebeb; text-align: right; width: 6%">112.</td>
                                <td style="background: #fff; text-align: center">3</td>
                                <td style="background: #ebebeb; text-align: right; width: 6%">132.</td>
                                <td style="background: #fff; text-align: center">3</td>
                                <td style="background: #ebebeb; text-align: right; width: 6%">152.</td>
                                <td style="background: #fff; text-align: center">1</td>
                                <td style="background: #ebebeb; text-align: right; width: 6%">172.</td>
                                <td style="background: #fff; text-align: center">2</td>
                                <td style="background: #ebebeb; text-align: right; width: 6%">192.</td>
                                <td style="background: #fff; text-align: center">3</td>
                            </tr>
                            <tr>
                                <td style="background: #ebebeb; text-align: right; width: 6%">13.</td>
                                <td style="background: #fff; text-align: center">3</td>
                                <td style="background: #ebebeb; text-align: right; width: 6%">33.</td>
                                <td style="background: #fff; text-align: center">3</td>
                                <td style="background: #ebebeb; text-align: right; width: 6%">53.</td>
                                <td style="background: #fff; text-align: center">2</td>
                                <td style="background: #ebebeb; text-align: right; width: 6%">73.</td>
                                <td style="background: #fff; text-align: center">4</td>
                                <td style="background: #ebebeb; text-align: right; width: 6%">93.</td>
                                <td style="background: #fff; text-align: center">3</td>
                                <td style="background: #ebebeb; text-align: right; width: 6%">113.</td>
                                <td style="background: #fff; text-align: center">2</td>
                                <td style="background: #ebebeb; text-align: right; width: 6%">133.</td>
                                <td style="background: #fff; text-align: center">1</td>
                                <td style="background: #ebebeb; text-align: right; width: 6%">153.</td>
                                <td style="background: #fff; text-align: center">4</td>
                                <td style="background: #ebebeb; text-align: right; width: 6%">173.</td>
                                <td style="background: #fff; text-align: center">1</td>
                                <td style="background: #ebebeb; text-align: right; width: 6%">193.</td>
                                <td style="background: #fff; text-align: center">1</td>
                            </tr>
                            <tr>
                                <td style="background: #ebebeb; text-align: right; width: 6%">14.</td>
                                <td style="background: #fff; text-align: center">3</td>
                                <td style="background: #ebebeb; text-align: right; width: 6%">34.</td>
                                <td style="background: #fff; text-align: center">2</td>
                                <td style="background: #ebebeb; text-align: right; width: 6%">54.</td>
                                <td style="background: #fff; text-align: center">4</td>
                                <td style="background: #ebebeb; text-align: right; width: 6%">74.</td>
                                <td style="background: #fff; text-align: center">2</td>
                                <td style="background: #ebebeb; text-align: right; width: 6%">94.</td>
                                <td style="background: #fff; text-align: center">4</td>
                                <td style="background: #ebebeb; text-align: right; width: 6%">114.</td>
                                <td style="background: #fff; text-align: center">4</td>
                                <td style="background: #ebebeb; text-align: right; width: 6%">134.</td>
                                <td style="background: #fff; text-align: center">3</td>
                                <td style="background: #ebebeb; text-align: right; width: 6%">154.</td>
                                <td style="background: #fff; text-align: center">3</td>
                                <td style="background: #ebebeb; text-align: right; width: 6%">174.</td>
                                <td style="background: #fff; text-align: center">2</td>
                                <td style="background: #ebebeb; text-align: right; width: 6%">194.</td>
                                <td style="background: #fff; text-align: center">4</td>
                            </tr>
                            <tr>
                                <td style="background: #ebebeb; text-align: right; width: 6%">15.</td>
                                <td style="background: #fff; text-align: center">4</td>
                                <td style="background: #ebebeb; text-align: right; width: 6%">35.</td>
                                <td style="background: #fff; text-align: center">3</td>
                                <td style="background: #ebebeb; text-align: right; width: 6%">55.</td>
                                <td style="background: #fff; text-align: center">2</td>
                                <td style="background: #ebebeb; text-align: right; width: 6%">75.</td>
                                <td style="background: #fff; text-align: center">2</td>
                                <td style="background: #ebebeb; text-align: right; width: 6%">95.</td>
                                <td style="background: #fff; text-align: center">2</td>
                                <td style="background: #ebebeb; text-align: right; width: 6%">115.</td>
                                <td style="background: #fff; text-align: center">4</td>
                                <td style="background: #ebebeb; text-align: right; width: 6%">135.</td>
                                <td style="background: #fff; text-align: center">1</td>
                                <td style="background: #ebebeb; text-align: right; width: 6%">155.</td>
                                <td style="background: #fff; text-align: center">3</td>
                                <td style="background: #ebebeb; text-align: right; width: 6%">175.</td>
                                <td style="background: #fff; text-align: center">3</td>
                                <td style="background: #ebebeb; text-align: right; width: 6%">195.</td>
                                <td style="background: #fff; text-align: center">3</td>
                            </tr>
                            <tr>
                                <td style="background: #ebebeb; text-align: right; width: 6%">16.</td>
                                <td style="background: #fff; text-align: center">1</td>
                                <td style="background: #ebebeb; text-align: right; width: 6%">36.</td>
                                <td style="background: #fff; text-align: center">2</td>
                                <td style="background: #ebebeb; text-align: right; width: 6%">56.</td>
                                <td style="background: #fff; text-align: center">2</td>
                                <td style="background: #ebebeb; text-align: right; width: 6%">76.</td>
                                <td style="background: #fff; text-align: center">1</td>
                                <td style="background: #ebebeb; text-align: right; width: 6%">96.</td>
                                <td style="background: #fff; text-align: center">3</td>
                                <td style="background: #ebebeb; text-align: right; width: 6%">116.</td>
                                <td style="background: #fff; text-align: center">4</td>
                                <td style="background: #ebebeb; text-align: right; width: 6%">136.</td>
                                <td style="background: #fff; text-align: center">1</td>
                                <td style="background: #ebebeb; text-align: right; width: 6%">156.</td>
                                <td style="background: #fff; text-align: center">3</td>
                                <td style="background: #ebebeb; text-align: right; width: 6%">176.</td>
                                <td style="background: #fff; text-align: center">3</td>
                                <td style="background: #ebebeb; text-align: right; width: 6%">196.</td>
                                <td style="background: #fff; text-align: center">2</td>
                            </tr>
                            <tr>
                                <td style="background: #ebebeb; text-align: right; width: 6%">17.</td>
                                <td style="background: #fff; text-align: center">2</td>
                                <td style="background: #ebebeb; text-align: right; width: 6%">37.</td>
                                <td style="background: #fff; text-align: center">3</td>
                                <td style="background: #ebebeb; text-align: right; width: 6%">57.</td>
                                <td style="background: #fff; text-align: center">4</td>
                                <td style="background: #ebebeb; text-align: right; width: 6%">77.</td>
                                <td style="background: #fff; text-align: center">4</td>
                                <td style="background: #ebebeb; text-align: right; width: 6%">97.</td>
                                <td style="background: #fff; text-align: center">1</td>
                                <td style="background: #ebebeb; text-align: right; width: 6%">117.</td>
                                <td style="background: #fff; text-align: center">4</td>
                                <td style="background: #ebebeb; text-align: right; width: 6%">137.</td>
                                <td style="background: #fff; text-align: center">3</td>
                                <td style="background: #ebebeb; text-align: right; width: 6%">157.</td>
                                <td style="background: #fff; text-align: center">4</td>
                                <td style="background: #ebebeb; text-align: right; width: 6%">177.</td>
                                <td style="background: #fff; text-align: center">2</td>
                                <td style="background: #ebebeb; text-align: right; width: 6%">197.</td>
                                <td style="background: #fff; text-align: center">1</td>
                            </tr>
                            <tr>
                                <td style="background: #ebebeb; text-align: right; width: 6%">18.</td>
                                <td style="background: #fff; text-align: center">4</td>
                                <td style="background: #ebebeb; text-align: right; width: 6%">38.</td>
                                <td style="background: #fff; text-align: center">4</td>
                                <td style="background: #ebebeb; text-align: right; width: 6%">58.</td>
                                <td style="background: #fff; text-align: center">4</td>
                                <td style="background: #ebebeb; text-align: right; width: 6%">78.</td>
                                <td style="background: #fff; text-align: center">4</td>
                                <td style="background: #ebebeb; text-align: right; width: 6%">98.</td>
                                <td style="background: #fff; text-align: center">4</td>
                                <td style="background: #ebebeb; text-align: right; width: 6%">118.</td>
                                <td style="background: #fff; text-align: center">2</td>
                                <td style="background: #ebebeb; text-align: right; width: 6%">138.</td>
                                <td style="background: #fff; text-align: center">3</td>
                                <td style="background: #ebebeb; text-align: right; width: 6%">158.</td>
                                <td style="background: #fff; text-align: center">1</td>
                                <td style="background: #ebebeb; text-align: right; width: 6%">178.</td>
                                <td style="background: #fff; text-align: center">2</td>
                                <td style="background: #ebebeb; text-align: right; width: 6%">198.</td>
                                <td style="background: #fff; text-align: center">4</td>
                            </tr>
                            <tr>
                                <td style="background: #ebebeb; text-align: right; width: 6%">19.</td>
                                <td style="background: #fff; text-align: center">3</td>
                                <td style="background: #ebebeb; text-align: right; width: 6%">39.</td>
                                <td style="background: #fff; text-align: center">2</td>
                                <td style="background: #ebebeb; text-align: right; width: 6%">59.</td>
                                <td style="background: #fff; text-align: center">3</td>
                                <td style="background: #ebebeb; text-align: right; width: 6%">79.</td>
                                <td style="background: #fff; text-align: center">2</td>
                                <td style="background: #ebebeb; text-align: right; width: 6%">99.</td>
                                <td style="background: #fff; text-align: center">4</td>
                                <td style="background: #ebebeb; text-align: right; width: 6%">119.</td>
                                <td style="background: #fff; text-align: center">4</td>
                                <td style="background: #ebebeb; text-align: right; width: 6%">139.</td>
                                <td style="background: #fff; text-align: center">3</td>
                                <td style="background: #ebebeb; text-align: right; width: 6%">159.</td>
                                <td style="background: #fff; text-align: center">3</td>
                                <td style="background: #ebebeb; text-align: right; width: 6%">179.</td>
                                <td style="background: #fff; text-align: center">4</td>
                                <td style="background: #ebebeb; text-align: right; width: 6%">199.</td>
                                <td style="background: #fff; text-align: center">2</td>
                            </tr>
                            <tr>
                                <td style="background: #ebebeb; text-align: right; width: 6%">20.</td>
                                <td style="background: #fff; text-align: center">3</td>
                                <td style="background: #ebebeb; text-align: right; width: 6%">40.</td>
                                <td style="background: #fff; text-align: center">1</td>
                                <td style="background: #ebebeb; text-align: right; width: 6%">60.</td>
                                <td style="background: #fff; text-align: center">2</td>
                                <td style="background: #ebebeb; text-align: right; width: 6%">80.</td>
                                <td style="background: #fff; text-align: center">2</td>
                                <td style="background: #ebebeb; text-align: right; width: 6%">100.</td>
                                <td style="background: #fff; text-align: center">1</td>
                                <td style="background: #ebebeb; text-align: right; width: 6%">120.</td>
                                <td style="background: #fff; text-align: center">2</td>
                                <td style="background: #ebebeb; text-align: right; width: 6%">140.</td>
                                <td style="background: #fff; text-align: center">4</td>
                                <td style="background: #ebebeb; text-align: right; width: 6%">160.</td>
                                <td style="background: #fff; text-align: center">1</td>
                                <td style="background: #ebebeb; text-align: right; width: 6%">180.</td>
                                <td style="background: #fff; text-align: center">3</td>
                                <td style="background: #ebebeb; text-align: right; width: 6%">200.</td>
                                <td style="background: #fff; text-align: center">1</td>
                            </tr>
                        </tbody>
                    </table>
                </div>
                <div id="charts" style="page-break-before: always;" class="chartw ui-tabs-panel ui-widget-content ui-corner-bottom ui-tabs-hide">
                    <!-- Begin Graphical Charts -->
                    <!--<div class="printable"><a href="#" target="_blank"><img src="http://178.62.94.173/web/imgs/icons/printer.png" border="0">  Print This Report</a></div>-->
                    <div class="printable">
                        <div style="float: right; margin-top: 7px;">
                            <form action="" name="download" method="post">
                                <input type="submit" name="download" value="Export to CSV"></form>
                        </div>
                    </div>

                    <table class="chartlegend">
                        <tbody>
                            <tr>
                                <td>Patient Name: John Doe</td>
                                <td style="width: 25px"></td>
                                <td>Test Name: Coolidge Personality and Neuropsychological Inventory (CPNI)</td>
                            </tr>
                            <tr>
                                <td>Gender: Male</td>
                                <td style="width: 50px"></td>
                                <td>Test Date: Oct 12, 2014</td>
                            </tr>
                            <tr>
                                <td>Patient Age: 36</td>
                                <td style="width: 25px"></td>
                                <td>Data Provided By: self</td>
                            </tr>
                        </tbody>
                    </table>
                    <table class="chart testw1">
                        <tbody>
                            <tr>
                                <td colspan="12" style="height: 10px;"></td>
                            </tr>
                            <tr>
                                <th style="text-align: left; width: 25%;">Scale</th>
                                <th class="interpret_header" style="width: 15%;">Interpret</th>
                                <th style="width: 5%;">%tile</th>
                                <th style="width: 5%;">TScore</th>

                                <th>20</th>
                                <th>30</th>
                                <th>40</th>
                                <th>50</th>
                                <th>60</th>
                                <th>70</th>
                                <th>80</th>
                                <th>90</th>
                            </tr>
                            <tr>
                                <td colspan="12">&nbsp;</td>
                            </tr>
                            <tr class="axis">
                                <td colspan="12">Personality Disorders</td>
                            </tr>
                            <tr class="even">
                                <td>Paranoid Personality Disorder</td>
                                <td class="interpret"></td>
                                <td align="center">82%</td>
                                <td align="center">59</td>
                                <td colspan="8">
                                    <div class="graph" style="width: 59%"></div>
                                </td>
                            </tr>
                            <tr class="odd">
                                <td>Borderline Personality Disorder</td>
                                <td class="interpret">greatly elevated</td>
                                <td align="center">99%</td>
                                <td align="center">85</td>
                                <td colspan="8">
                                    <div class="graph" style="width: 85%"></div>
                                </td>
                            </tr>
                            <tr class="even">
                                <td>Dependent Personality Disorder</td>
                                <td class="interpret">moderately elevated</td>
                                <td align="center">92%</td>
                                <td align="center">64</td>
                                <td colspan="8">
                                    <div class="graph" style="width: 64%"></div>
                                </td>
                            </tr>
                            <tr class="odd">
                                <td>Histrionic Personality Disorder</td>
                                <td class="interpret">moderately elevated</td>
                                <td align="center">92%</td>
                                <td align="center">64</td>
                                <td colspan="8">
                                    <div class="graph" style="width: 64%"></div>
                                </td>
                            </tr>
                            <tr class="even">
                                <td>Obsess. Compulsive Personality Disorder</td>
                                <td class="interpret">moderately elevated</td>
                                <td align="center">92%</td>
                                <td align="center">64</td>
                                <td colspan="8">
                                    <div class="graph" style="width: 64%"></div>
                                </td>
                            </tr>
                            <tr class="odd">
                                <td>Schizotypal Personality Disorder</td>
                                <td class="interpret">greatly elevated</td>
                                <td align="center">99%</td>
                                <td align="center">94</td>
                                <td colspan="8">
                                    <div class="graph" style="width: 94%"></div>
                                </td>
                            </tr>
                            <tr class="even">
                                <td>Schizoid Personality Disorder</td>
                                <td class="interpret"></td>
                                <td align="center">80%</td>
                                <td align="center">58</td>
                                <td colspan="8">
                                    <div class="graph" style="width: 58%"></div>
                                </td>
                            </tr>
                            <tr class="odd">
                                <td>Narcissistic Personality Disorder</td>
                                <td class="interpret">moderately elevated</td>
                                <td align="center">91%</td>
                                <td align="center">63</td>
                                <td colspan="8">
                                    <div class="graph" style="width: 63%"></div>
                                </td>
                            </tr>
                            <tr class="even">
                                <td>Conduct Disorder (Antisocial)</td>
                                <td class="interpret">greatly elevated</td>
                                <td align="center">99%</td>
                                <td align="center">89</td>
                                <td colspan="8">
                                    <div class="graph" style="width: 89%"></div>
                                </td>
                            </tr>
                            <tr class="odd">
                                <td>Avoidant Personality Disorder</td>
                                <td class="interpret"></td>
                                <td align="center">81%</td>
                                <td align="center">59</td>
                                <td colspan="8">
                                    <div class="graph" style="width: 59%"></div>
                                </td>
                            </tr>
                            <tr class="even">
                                <td>Passive-Aggressive Personality Disorder</td>
                                <td class="interpret">moderately elevated</td>
                                <td align="center">96%</td>
                                <td align="center">68</td>
                                <td colspan="8">
                                    <div class="graph" style="width: 68%"></div>
                                </td>
                            </tr>
                            <tr class="odd">
                                <td>Depressive Personality Disorder</td>
                                <td class="interpret">moderately elevated</td>
                                <td align="center">86%</td>
                                <td align="center">61</td>
                                <td colspan="8">
                                    <div class="graph" style="width: 61%"></div>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="12">&nbsp;</td>
                            </tr>
                            <tr class="axis">
                                <td colspan="12">Clinical Syndromes</td>
                            </tr>
                            <tr class="even">
                                <td>Generalized Anxiety Disorder</td>
                                <td class="interpret">greatly elevated</td>
                                <td align="center">99%</td>
                                <td align="center">76</td>
                                <td colspan="8">
                                    <div class="graph" style="width: 76%"></div>
                                </td>
                            </tr>
                            <tr class="odd">
                                <td>Major Depressive Disorder</td>
                                <td class="interpret">greatly elevated</td>
                                <td align="center">99%</td>
                                <td align="center">76</td>
                                <td colspan="8">
                                    <div class="graph" style="width: 76%"></div>
                                </td>
                            </tr>
                            <tr class="even">
                                <td>Separation Anxiety Disorder</td>
                                <td class="interpret">greatly elevated</td>
                                <td align="center">99%</td>
                                <td align="center">82</td>
                                <td colspan="8">
                                    <div class="graph" style="width: 82%"></div>
                                </td>
                            </tr>
                            <tr class="odd">
                                <td>Oppositional Defiant Disorder</td>
                                <td class="interpret">greatly elevated</td>
                                <td align="center">99%</td>
                                <td align="center">74</td>
                                <td colspan="8">
                                    <div class="graph" style="width: 74%"></div>
                                </td>
                            </tr>
                            <tr class="even">
                                <td>Gender Dysphoria</td>
                                <td class="interpret">greatly elevated</td>
                                <td align="center">99%</td>
                                <td align="center">105</td>
                                <td colspan="8">
                                    <div class="graph" style="width: 100%"></div>
                                </td>
                            </tr>
                            <tr class="odd">
                                <td>Anorexia Nervosa</td>
                                <td class="interpret">moderately elevated</td>
                                <td align="center">95%</td>
                                <td align="center">66</td>
                                <td colspan="8">
                                    <div class="graph" style="width: 66%"></div>
                                </td>
                            </tr>
                            <tr class="even">
                                <td>Bulimia Nervosa</td>
                                <td class="interpret">moderately elevated</td>
                                <td align="center">96%</td>
                                <td align="center">68</td>
                                <td colspan="8">
                                    <div class="graph" style="width: 68%"></div>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="12">&nbsp;</td>
                            </tr>
                            <tr class="axis">
                                <td colspan="12">Neuropsychological Syndromes</td>
                            </tr>
                            <tr class="even">
                                <td>Attention Deficit Hyper. Disorder</td>
                                <td class="interpret"></td>
                                <td align="center">78%</td>
                                <td align="center">58</td>
                                <td colspan="8">
                                    <div class="graph" style="width: 58%"></div>
                                </td>
                            </tr>
                            <tr class="odd">
                                <td>AD HD Inattention Subtype</td>
                                <td class="interpret"></td>
                                <td align="center">72%</td>
                                <td align="center">56</td>
                                <td colspan="8">
                                    <div class="graph" style="width: 56%"></div>
                                </td>
                            </tr>
                            <tr class="even">
                                <td>AD HD Hyperactivity-Impulsivity Subtype </td>
                                <td class="interpret"></td>
                                <td align="center">79%</td>
                                <td align="center">58</td>
                                <td colspan="8">
                                    <div class="graph" style="width: 58%"></div>
                                </td>
                            </tr>
                            <tr class="odd">
                                <td>Neurocognitive Disorder</td>
                                <td class="interpret">moderately elevated</td>
                                <td align="center">97%</td>
                                <td align="center">69</td>
                                <td colspan="8">
                                    <div class="graph" style="width: 69%"></div>
                                </td>
                            </tr>
                            <tr class="even">
                                <td>Postconcussional Disorder</td>
                                <td class="interpret">greatly elevated</td>
                                <td align="center">99%</td>
                                <td align="center">78</td>
                                <td colspan="8">
                                    <div class="graph" style="width: 78%"></div>
                                </td>
                            </tr>
                            <tr class="odd">
                                <td>Executive Dysf. of the Frontal Lobes</td>
                                <td class="interpret">greatly elevated</td>
                                <td align="center">99%</td>
                                <td align="center">71</td>
                                <td colspan="8">
                                    <div class="graph" style="width: 71%"></div>
                                </td>
                            </tr>
                            <tr class="even">
                                <td>Decision-Making Problems Subscale</td>
                                <td class="interpret"></td>
                                <td align="center">83%</td>
                                <td align="center">59</td>
                                <td colspan="8">
                                    <div class="graph" style="width: 59%"></div>
                                </td>
                            </tr>
                            <tr class="odd">
                                <td>Metacognitive Subscale</td>
                                <td class="interpret">moderately elevated</td>
                                <td align="center">95%</td>
                                <td align="center">67</td>
                                <td colspan="8">
                                    <div class="graph" style="width: 67%"></div>
                                </td>
                            </tr>
                            <tr class="even">
                                <td>Social Inappropriateness Subscale</td>
                                <td class="interpret">greatly elevated</td>
                                <td align="center">99%</td>
                                <td align="center">86</td>
                                <td colspan="8">
                                    <div class="graph" style="width: 86%"></div>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="12">&nbsp;</td>
                            </tr>
                            <tr class="axis">
                                <td colspan="12">Neuropsychological Scales</td>
                            </tr>
                            <tr class="even">
                                <td>Neuropsychological Dysfunction Scale</td>
                                <td class="interpret">greatly elevated</td>
                                <td align="center">99%</td>
                                <td align="center">72</td>
                                <td colspan="8">
                                    <div class="graph" style="width: 72%"></div>
                                </td>
                            </tr>
                            <tr class="odd">
                                <td>Somatic Subscale</td>
                                <td class="interpret">greatly elevated</td>
                                <td align="center">99%</td>
                                <td align="center">93</td>
                                <td colspan="8">
                                    <div class="graph" style="width: 93%"></div>
                                </td>
                            </tr>
                            <tr class="even">
                                <td>Learning Subscale</td>
                                <td class="interpret">greatly elevated</td>
                                <td align="center">98%</td>
                                <td align="center">70</td>
                                <td colspan="8">
                                    <div class="graph" style="width: 70%"></div>
                                </td>
                            </tr>
                            <tr class="odd">
                                <td>Memory Subscale</td>
                                <td class="interpret"></td>
                                <td align="center">10%</td>
                                <td align="center">37</td>
                                <td colspan="8">
                                    <div class="graph" style="width: 37%"></div>
                                </td>
                            </tr>
                            <tr class="even">
                                <td>Language Problems Subscale</td>
                                <td class="interpret">greatly elevated</td>
                                <td align="center">99%</td>
                                <td align="center">92</td>
                                <td colspan="8">
                                    <div class="graph" style="width: 92%"></div>
                                </td>
                            </tr>
                            <tr class="odd">
                                <td>Perceptual Motor Subscale</td>
                                <td class="interpret">greatly elevated</td>
                                <td align="center">99%</td>
                                <td align="center">81</td>
                                <td colspan="8">
                                    <div class="graph" style="width: 81%"></div>
                                </td>
                            </tr>
                            <tr class="even">
                                <td>Subcortical Subscale</td>
                                <td class="interpret">greatly elevated</td>
                                <td align="center">99%</td>
                                <td align="center">93</td>
                                <td colspan="8">
                                    <div class="graph" style="width: 93%"></div>
                                </td>
                            </tr>
                            <tr class="odd">
                                <td>Hyperactivity Subscale</td>
                                <td class="interpret"></td>
                                <td align="center">81%</td>
                                <td align="center">59</td>
                                <td colspan="8">
                                    <div class="graph" style="width: 59%"></div>
                                </td>
                            </tr>
                            <tr class="even">
                                <td>Impulsivity Subscale</td>
                                <td class="interpret"></td>
                                <td align="center">63%</td>
                                <td align="center">53</td>
                                <td colspan="8">
                                    <div class="graph" style="width: 53%"></div>
                                </td>
                            </tr>
                            <tr class="odd">
                                <td>Delayed Maturation Subscale</td>
                                <td class="interpret">greatly elevated</td>
                                <td align="center">99%</td>
                                <td align="center">75</td>
                                <td colspan="8">
                                    <div class="graph" style="width: 75%"></div>
                                </td>
                            </tr>
                            <tr class="even">
                                <td>Emotional Subscale</td>
                                <td class="interpret">greatly elevated</td>
                                <td align="center">98%</td>
                                <td align="center">70</td>
                                <td colspan="8">
                                    <div class="graph" style="width: 70%"></div>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="12">&nbsp;</td>
                            </tr>
                            <tr class="axis">
                                <td colspan="12">Additional Clincal Scales</td>
                            </tr>
                            <tr class="even">
                                <td>Emotional Lability</td>
                                <td class="interpret">greatly elevated</td>
                                <td align="center">99%</td>
                                <td align="center">75</td>
                                <td colspan="8">
                                    <div class="graph" style="width: 75%"></div>
                                </td>
                            </tr>
                            <tr class="odd">
                                <td>Disinhibition</td>
                                <td class="interpret">greatly elevated</td>
                                <td align="center">99%</td>
                                <td align="center">74</td>
                                <td colspan="8">
                                    <div class="graph" style="width: 74%"></div>
                                </td>
                            </tr>
                            <tr class="even">
                                <td>Aggression</td>
                                <td class="interpret"></td>
                                <td align="center">58%</td>
                                <td align="center">52</td>
                                <td colspan="8">
                                    <div class="graph" style="width: 52%"></div>
                                </td>
                            </tr>
                            <tr class="odd">
                                <td>Apathy</td>
                                <td class="interpret">greatly elevated</td>
                                <td align="center">99%</td>
                                <td align="center">73</td>
                                <td colspan="8">
                                    <div class="graph" style="width: 73%"></div>
                                </td>
                            </tr>
                            <tr class="even">
                                <td>Paranoia</td>
                                <td class="interpret">moderately elevated</td>
                                <td align="center">94%</td>
                                <td align="center">66</td>
                                <td colspan="8">
                                    <div class="graph" style="width: 66%"></div>
                                </td>
                            </tr>
                            <tr class="odd">
                                <td>Psychotic Thinking</td>
                                <td class="interpret">greatly elevated</td>
                                <td align="center">99%</td>
                                <td align="center">93</td>
                                <td colspan="8">
                                    <div class="graph" style="width: 93%"></div>
                                </td>
                            </tr>
                            <tr class="even">
                                <td>Emotional Coldness</td>
                                <td class="interpret">greatly elevated</td>
                                <td align="center">99%</td>
                                <td align="center">72</td>
                                <td colspan="8">
                                    <div class="graph" style="width: 72%"></div>
                                </td>
                            </tr>
                            <tr class="odd">
                                <td>Sleep Disturbances</td>
                                <td class="interpret">greatly elevated</td>
                                <td align="center">99%</td>
                                <td align="center">84</td>
                                <td colspan="8">
                                    <div class="graph" style="width: 84%"></div>
                                </td>
                            </tr>
                            <tr class="even">
                                <td>Social Anxiety</td>
                                <td class="interpret">moderately elevated</td>
                                <td align="center">93%</td>
                                <td align="center">65</td>
                                <td colspan="8">
                                    <div class="graph" style="width: 65%"></div>
                                </td>
                            </tr>
                            <tr class="odd">
                                <td>Social Withdrawl</td>
                                <td class="interpret">moderately elevated</td>
                                <td align="center">95%</td>
                                <td align="center">66</td>
                                <td colspan="8">
                                    <div class="graph" style="width: 66%"></div>
                                </td>
                            </tr>
                            <tr class="even">
                                <td>Self-Esteem</td>
                                <td class="interpret">greatly elevated</td>
                                <td align="center">99%</td>
                                <td align="center">89</td>
                                <td colspan="8">
                                    <div class="graph" style="width: 89%"></div>
                                </td>
                            </tr>
                            <tr class="odd">
                                <td>Autism Spectrum Disorder</td>
                                <td class="interpret">moderately elevated</td>
                                <td align="center">93%</td>
                                <td align="center">65</td>
                                <td colspan="8">
                                    <div class="graph" style="width: 65%"></div>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="12">&nbsp;</td>
                            </tr>
                            <tr class="axis">
                                <td colspan="12">Hostility Scales</td>
                            </tr>
                            <tr class="even">
                                <td>Antisocial Triumvirate</td>
                                <td class="interpret">greatly elevated</td>
                                <td align="center">99%</td>
                                <td align="center">85</td>
                                <td colspan="8">
                                    <div class="graph" style="width: 85%"></div>
                                </td>
                            </tr>
                            <tr class="odd">
                                <td>Dangerousness</td>
                                <td class="interpret">greatly elevated</td>
                                <td align="center">99%</td>
                                <td align="center">85</td>
                                <td colspan="8">
                                    <div class="graph" style="width: 85%"></div>
                                </td>
                            </tr>
                            <tr class="even">
                                <td>Conduct Disorder-Aggressive Subtype</td>
                                <td class="interpret">greatly elevated</td>
                                <td align="center">99%</td>
                                <td align="center">101</td>
                                <td colspan="8">
                                    <div class="graph" style="width: 100%"></div>
                                </td>
                            </tr>
                            <tr class="odd">
                                <td>Conduct Disorder-Delinquent Subtype</td>
                                <td class="interpret">greatly elevated</td>
                                <td align="center">99%</td>
                                <td align="center">73</td>
                                <td colspan="8">
                                    <div class="graph" style="width: 73%"></div>
                                </td>
                            </tr>
                            <tr class="even">
                                <td>Tendency to Deny Blatant Pathology</td>
                                <td class="interpret">greatly elevated</td>
                                <td align="center">99%</td>
                                <td align="center">83</td>
                                <td colspan="8">
                                    <div class="graph" style="width: 83%"></div>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </div>
                <div id="explanations" style="page-break-before: always;" class="ui-tabs-panel ui-widget-content ui-corner-bottom ui-tabs-hide">
                    <!-- Begin Explanations -->
                    <!--<div class="printable"><a href="#" target="_blank"><img src="http://178.62.94.173/web/imgs/icons/printer.png" border="0">  Print This Report</a></div>-->
                    <div class="printable">
                        <div style="float: right; margin-top: 7px;">
                            <form action="" name="download" method="post">
                                <input type="submit" name="download" value="Export to CSV"></form>
                        </div>
                    </div>

                    <table class="chartlegend">
                        <tbody>
                            <tr>
                                <td>Patient Name: John Doe</td>
                                <!--<td style="width:25px"></td>-->
                                <td>Test Name: Coolidge Personality and Neuropsychological Inventory (CPNI)</td>
                            </tr>
                            <tr>
                                <td>Gender: Male</td>
                                <!--<td style="width:50px"></td>-->
                                <td>Test Date: Oct 12, 2014</td>
                            </tr>
                            <tr>
                                <td>Patient Age: 36</td>
                                <td>Data Provided By: self</td>
                            </tr>
                            <tr>
                                <th colspan="2" class="scale_row">Emotional Lability</th>
                            </tr>
                            <tr class="bordered">
                                <td class="stronglytrue" width="18%"><span>strongly true</span></td>
                                <td>31.  My child's emotions seem to shift rapidly and seem to be shallow.</td>
                            </tr>
                            <tr class="bordered">
                                <td class="stronglytrue" width="18%"><span>strongly true</span></td>
                                <td>116.  My child usually wavers between getting angry and acting sorry.</td>
                            </tr>
                            <tr>
                                <th colspan="2" class="scale_row">Disinhibition</th>
                            </tr>
                            <tr class="bordered">
                                <td class="stronglytrue" width="18%"><span>strongly true</span></td>
                                <td>119.  My child has hurt himself or caused trouble for himself more than once because he did not think ahead.</td>
                            </tr>
                            <tr class="bordered">
                                <td class="mostlytrue" width="18%"><span>mostly true</span></td>
                                <td>171.  My child does not wait for the question to be finished before blurting out his answer.</td>
                            </tr>
                            <tr>
                                <th colspan="2" class="scale_row">Apathy</th>
                            </tr>
                            <tr class="bordered">
                                <td class="mostlytrue" width="18%"><span>mostly true</span></td>
                                <td>87.  My child is unemotional.</td>
                            </tr>
                            <tr class="bordered">
                                <td class="stronglytrue" width="18%"><span>strongly true</span></td>
                                <td>89.  My child lacks empathy and is not able to understand how other people feel.</td>
                            </tr>
                            <tr>
                                <th colspan="2" class="scale_row">Paranoia</th>
                            </tr>
                            <tr class="bordered">
                                <td class="stronglytrue" width="18%"><span>strongly true</span></td>
                                <td>82.  My child is reluctant to confide in others because he fears that the information will be used against him.</td>
                            </tr>
                            <tr>
                                <th colspan="2" class="scale_row">Psychotic Thinking</th>
                            </tr>
                            <tr class="bordered">
                                <td class="mostlytrue" width="18%"><span>mostly true</span></td>
                                <td>5.  My child seems to see strange and unusual meanings in events, objects, or other people and connects these things to himself in a bad way.</td>
                            </tr>
                            <tr class="bordered">
                                <td class="stronglytrue" width="18%"><span>strongly true</span></td>
                                <td>68.  My child suspects people have a hidden reason for doing things.</td>
                            </tr>
                            <tr class="bordered">
                                <td class="stronglytrue" width="18%"><span>strongly true</span></td>
                                <td>86.  My child reports unusual experiences like hearing voices that are not there, seeing people's bodies change shape, or being touched when alone.</td>
                            </tr>
                            <tr class="bordered">
                                <td class="stronglytrue" width="18%"><span>strongly true</span></td>
                                <td>129.  When my child gets stressed, he starts to act weird or unreal, or paranoid.</td>
                            </tr>
                            <tr class="bordered">
                                <td class="mostlytrue" width="18%"><span>mostly true</span></td>
                                <td>154.  My child acts or looks odd or weird compared to other children.</td>
                            </tr>
                            <tr class="bordered">
                                <td class="stronglytrue" width="18%"><span>strongly true</span></td>
                                <td>198.  My child laughs at the wrong times.</td>
                            </tr>
                            <tr>
                                <th colspan="2" class="scale_row">Emotional Coldness</th>
                            </tr>
                            <tr class="bordered">
                                <td class="mostlytrue" width="18%"><span>mostly true</span></td>
                                <td>87.  My child is unemotional.</td>
                            </tr>
                            <tr class="bordered">
                                <td class="stronglytrue" width="18%"><span>strongly true</span></td>
                                <td>89.  My child lacks empathy and is not able to understand how other people feel.</td>
                            </tr>
                            <tr>
                                <th colspan="2" class="scale_row">Sleep Disturbances</th>
                            </tr>
                            <tr class="bordered">
                                <td class="mostlytrue" width="18%"><span>mostly true</span></td>
                                <td>59.  My child has terrible nightmares.</td>
                            </tr>
                            <tr class="bordered">
                                <td class="mostlytrue" width="18%"><span>mostly true</span></td>
                                <td>111.  My child sleeps too much.</td>
                            </tr>
                            <tr class="bordered">
                                <td class="stronglytrue" width="18%"><span>strongly true</span></td>
                                <td>115.  My child is afraid to go to sleep without me being near.</td>
                            </tr>
                            <tr class="bordered">
                                <td class="mostlytrue" width="18%"><span>mostly true</span></td>
                                <td>134.  My child has trouble staying asleep.</td>
                            </tr>
                            <tr class="bordered">
                                <td class="mostlytrue" width="18%"><span>mostly true</span></td>
                                <td>191.  My child has trouble falling asleep.</td>
                            </tr>
                            <tr>
                                <th colspan="2" class="scale_row">Social Anxiety</th>
                            </tr>
                            <tr class="bordered">
                                <td class="stronglytrue" width="18%"><span>strongly true</span></td>
                                <td>82.  My child is reluctant to confide in others because he fears that the information will be used against him.</td>
                            </tr>
                            <tr class="bordered">
                                <td class="stronglytrue" width="18%"><span>strongly true</span></td>
                                <td>90.  My child is shy around new children because he has no self confidence.</td>
                            </tr>
                            <tr class="bordered">
                                <td class="mostlytrue" width="18%"><span>mostly true</span></td>
                                <td>105.  My child is afraid of social situations because he is afraid of other people.</td>
                            </tr>
                            <tr>
                                <th colspan="2" class="scale_row">Social Withdrawl</th>
                            </tr>
                            <tr class="bordered">
                                <td class="stronglytrue" width="18%"><span>strongly true</span></td>
                                <td>50.  My child neither desires nor enjoys close relationships, including our family.</td>
                            </tr>
                            <tr class="bordered">
                                <td class="stronglytrue" width="18%"><span>strongly true</span></td>
                                <td>82.  My child is reluctant to confide in others because he fears that the information will be used against him.</td>
                            </tr>
                            <tr class="bordered">
                                <td class="stronglytrue" width="18%"><span>strongly true</span></td>
                                <td>90.  My child is shy around new children because he has no self confidence.</td>
                            </tr>
                            <tr>
                                <th colspan="2" class="scale_row">Self-Esteem</th>
                            </tr>
                            <tr class="bordered">
                                <td class="mostlytrue" width="18%"><span>mostly true</span></td>
                                <td>33.  My child has low self-esteem and feels worthless.</td>
                            </tr>
                            <tr class="bordered">
                                <td class="stronglytrue" width="18%"><span>strongly true</span></td>
                                <td>90.  My child is shy around new children because he has no self confidence.</td>
                            </tr>
                            <tr class="bordered">
                                <td class="stronglytrue" width="18%"><span>strongly true</span></td>
                                <td>130.  My child has trouble doing things on his own because of lack of self confidence.</td>
                            </tr>
                            <tr>
                                <th colspan="2" class="scale_row">Autism Spectrum Disorder</th>
                            </tr>
                            <tr class="bordered">
                                <td class="mostlytrue" width="18%"><span>mostly true</span></td>
                                <td>5.  My child seems to see strange and unusual meanings in events, objects, or other people and connects these things to himself in a bad way.</td>
                            </tr>
                            <tr class="bordered">
                                <td class="mostlytrue" width="18%"><span>mostly true</span></td>
                                <td>14.  My child often loses his temper.</td>
                            </tr>
                            <tr class="bordered">
                                <td class="mostlytrue" width="18%"><span>mostly true</span></td>
                                <td>21.  My child seems irritable.</td>
                            </tr>
                            <tr class="bordered">
                                <td class="stronglytrue" width="18%"><span>strongly true</span></td>
                                <td>31.  My child's emotions seem to shift rapidly and seem to be shallow.</td>
                            </tr>
                            <tr class="bordered">
                                <td class="stronglytrue" width="18%"><span>strongly true</span></td>
                                <td>50.  My child neither desires nor enjoys close relationships, including our family.</td>
                            </tr>
                            <tr class="bordered">
                                <td class="mostlytrue" width="18%"><span>mostly true</span></td>
                                <td>87.  My child is unemotional.</td>
                            </tr>
                            <tr class="bordered">
                                <td class="stronglytrue" width="18%"><span>strongly true</span></td>
                                <td>89.  My child lacks empathy and is not able to understand how other people feel.</td>
                            </tr>
                            <tr class="bordered">
                                <td class="mostlytrue" width="18%"><span>mostly true</span></td>
                                <td>105.  My child is afraid of social situations because he is afraid of other people.</td>
                            </tr>
                            <tr class="bordered">
                                <td class="stronglytrue" width="18%"><span>strongly true</span></td>
                                <td>114.  My child is too touchy or easily annoyed.</td>
                            </tr>
                            <tr class="bordered">
                                <td class="stronglytrue" width="18%"><span>strongly true</span></td>
                                <td>129.  When my child gets stressed, he starts to act weird or unreal, or paranoid.</td>
                            </tr>
                            <tr class="bordered">
                                <td class="mostlytrue" width="18%"><span>mostly true</span></td>
                                <td>154.  My child acts or looks odd or weird compared to other children.</td>
                            </tr>
                            <tr class="bordered">
                                <td class="stronglytrue" width="18%"><span>strongly true</span></td>
                                <td>198.  My child laughs at the wrong times.</td>
                            </tr>
                            <tr>
                                <td colspan="2">&nbsp;</td>
                            </tr>
                            <tr>
                                <td colspan="2" class="scalegroup_row">Hostility Scales</td>
                            </tr>
                            <tr>
                                <th colspan="2" class="scale_row">Antisocial Triumvirate</th>
                            </tr>
                            <tr class="bordered">
                                <td class="mostlytrue" width="18%"><span>mostly true</span></td>
                                <td>155.  My child has been cruel to animals.</td>
                            </tr>
                            <tr>
                                <th colspan="2" class="scale_row">Dangerousness</th>
                            </tr>
                            <tr class="bordered">
                                <td class="mostlytrue" width="18%"><span>mostly true</span></td>
                                <td>14.  My child often loses his temper.</td>
                            </tr>
                            <tr class="bordered">
                                <td class="mostlytrue" width="18%"><span>mostly true</span></td>
                                <td>21.  My child seems irritable.</td>
                            </tr>
                            <tr class="bordered">
                                <td class="mostlytrue" width="18%"><span>mostly true</span></td>
                                <td>27.  My child avoids physical fights with others.</td>
                            </tr>
                            <tr class="bordered">
                                <td class="stronglytrue" width="18%"><span>strongly true</span></td>
                                <td>44.  My child has full control of his anger. For example, I rarely observe displays of temper, constant anger, or recurrent physical fights.</td>
                            </tr>
                            <tr class="bordered">
                                <td class="mostlytrue" width="18%"><span>mostly true</span></td>
                                <td>48.  My child used a dangerous weapon that could seriously harm someone else.</td>
                            </tr>
                            <tr class="bordered">
                                <td class="stronglytrue" width="18%"><span>strongly true</span></td>
                                <td>64.  My child bears grudges for a long time.</td>
                            </tr>
                            <tr class="bordered">
                                <td class="mostlytrue" width="18%"><span>mostly true</span></td>
                                <td>65.  My child has threatened or tried to commit suicide, or has hurt himself on purpose.</td>
                            </tr>
                            <tr class="bordered">
                                <td class="mostlytrue" width="18%"><span>mostly true</span></td>
                                <td>69.  My child has forced someone into sexual activity.</td>
                            </tr>
                            <tr class="bordered">
                                <td class="mostlytrue" width="18%"><span>mostly true</span></td>
                                <td>88.  My child is cruel to others.</td>
                            </tr>
                            <tr class="bordered">
                                <td class="mostlytrue" width="18%"><span>mostly true</span></td>
                                <td>124.  My child is angry and resentful.</td>
                            </tr>
                            <tr class="bordered">
                                <td class="mostlytrue" width="18%"><span>mostly true</span></td>
                                <td>155.  My child has been cruel to animals.</td>
                            </tr>
                            <tr class="bordered">
                                <td class="stronglytrue" width="18%"><span>strongly true</span></td>
                                <td>157.  My child has robbed someone face-to-face, like mugging or purse-snatching.</td>
                            </tr>
                            <tr>
                                <th colspan="2" class="scale_row">Conduct Disorder-Aggressive Subtype</th>
                            </tr>
                            <tr class="bordered">
                                <td class="mostlytrue" width="18%"><span>mostly true</span></td>
                                <td>27.  My child avoids physical fights with others.</td>
                            </tr>
                            <tr class="bordered">
                                <td class="mostlytrue" width="18%"><span>mostly true</span></td>
                                <td>48.  My child used a dangerous weapon that could seriously harm someone else.</td>
                            </tr>
                            <tr class="bordered">
                                <td class="mostlytrue" width="18%"><span>mostly true</span></td>
                                <td>69.  My child has forced someone into sexual activity.</td>
                            </tr>
                            <tr class="bordered">
                                <td class="mostlytrue" width="18%"><span>mostly true</span></td>
                                <td>88.  My child is cruel to others.</td>
                            </tr>
                            <tr class="bordered">
                                <td class="mostlytrue" width="18%"><span>mostly true</span></td>
                                <td>155.  My child has been cruel to animals.</td>
                            </tr>
                            <tr class="bordered">
                                <td class="stronglytrue" width="18%"><span>strongly true</span></td>
                                <td>157.  My child has robbed someone face-to-face, like mugging or purse-snatching.</td>
                            </tr>
                            <tr>
                                <th colspan="2" class="scale_row">Conduct Disorder-Delinquent Subtype</th>
                            </tr>
                            <tr class="bordered">
                                <td class="mostlytrue" width="18%"><span>mostly true</span></td>
                                <td>6.  My child often skips school.</td>
                            </tr>
                            <tr class="bordered">
                                <td class="mostlytrue" width="18%"><span>mostly true</span></td>
                                <td>141.  My child often lies or "cons" others.</td>
                            </tr>
                            <tr class="bordered">
                                <td class="mostlytrue" width="18%"><span>mostly true</span></td>
                                <td>164.  My child stays out at night without permission (beginning before age 13).</td>
                            </tr>
                            <tr>
                                <th colspan="2" class="scale_row">Tendency to Deny Blatant Pathology</th>
                            </tr>
                            <tr class="bordered">
                                <td class="stronglytrue" width="18%"><span>strongly true</span></td>
                                <td>2.  My child makes friends quickly, but soon after seems to hate them.</td>
                            </tr>
                            <tr class="bordered">
                                <td class="stronglytrue" width="18%"><span>strongly true</span></td>
                                <td>3.  My child does not finish things because he tries to do them perfectly.</td>
                            </tr>
                            <tr class="bordered">
                                <td class="mostlytrue" width="18%"><span>mostly true</span></td>
                                <td>5.  My child seems to see strange and unusual meanings in events, objects, or other people and connects these things to himself in a bad way.</td>
                            </tr>
                            <tr class="bordered">
                                <td class="mostlytrue" width="18%"><span>mostly true</span></td>
                                <td>6.  My child often skips school.</td>
                            </tr>
                            <tr class="bordered">
                                <td class="mostlytrue" width="18%"><span>mostly true</span></td>
                                <td>7.  My child takes advantage of other children.</td>
                            </tr>
                            <tr class="bordered">
                                <td class="stronglytrue" width="18%"><span>strongly true</span></td>
                                <td>10.  I think my child exaggerates his emotions.</td>
                            </tr>
                            <tr class="bordered">
                                <td class="mostlytrue" width="18%"><span>mostly true</span></td>
                                <td>13.  My child has difficulty playing quietly.</td>
                            </tr>
                            <tr class="bordered">
                                <td class="mostlytrue" width="18%"><span>mostly true</span></td>
                                <td>14.  My child often loses his temper.</td>
                            </tr>
                            <tr class="bordered">
                                <td class="stronglytrue" width="18%"><span>strongly true</span></td>
                                <td>15.  My child gets very upset when having to leave me or home.</td>
                            </tr>
                            <tr class="bordered">
                                <td class="stronglytrue" width="18%"><span>strongly true</span></td>
                                <td>18.  My son says he is, or wants to be, a girl.</td>
                            </tr>
                            <tr class="bordered">
                                <td class="mostlytrue" width="18%"><span>mostly true</span></td>
                                <td>19.  My child pouts and argues.</td>
                            </tr>
                            <tr class="bordered">
                                <td class="mostlytrue" width="18%"><span>mostly true</span></td>
                                <td>20.  My child is usually unhappy.</td>
                            </tr>
                            <tr class="bordered">
                                <td class="mostlytrue" width="18%"><span>mostly true</span></td>
                                <td>21.  My child seems irritable.</td>
                            </tr>
                            <tr class="bordered">
                                <td class="stronglytrue" width="18%"><span>strongly true</span></td>
                                <td>31.  My child's emotions seem to shift rapidly and seem to be shallow.</td>
                            </tr>
                            <tr class="bordered">
                                <td class="mostlytrue" width="18%"><span>mostly true</span></td>
                                <td>33.  My child has low self-esteem and feels worthless.</td>
                            </tr>
                            <tr class="bordered">
                                <td class="mostlytrue" width="18%"><span>mostly true</span></td>
                                <td>35.  My child has trouble paying attention.</td>
                            </tr>
                            <tr class="bordered">
                                <td class="mostlytrue" width="18%"><span>mostly true</span></td>
                                <td>37.  My child worries a lot about something bad happening to me.</td>
                            </tr>
                            <tr class="bordered">
                                <td class="stronglytrue" width="18%"><span>strongly true</span></td>
                                <td>38.  My child stutters.</td>
                            </tr>
                            <tr class="bordered">
                                <td class="mostlytrue" width="18%"><span>mostly true</span></td>
                                <td>48.  My child used a dangerous weapon that could seriously harm someone else.</td>
                            </tr>
                            <tr class="bordered">
                                <td class="stronglytrue" width="18%"><span>strongly true</span></td>
                                <td>50.  My child neither desires nor enjoys close relationships, including our family.</td>
                            </tr>
                            <tr class="bordered">
                                <td class="stronglytrue" width="18%"><span>strongly true</span></td>
                                <td>54.  My child is depressed.</td>
                            </tr>
                            <tr class="bordered">
                                <td class="stronglytrue" width="18%"><span>strongly true</span></td>
                                <td>57.  My child defies or refuses to do what adults ask him to do.</td>
                            </tr>
                            <tr class="bordered">
                                <td class="stronglytrue" width="18%"><span>strongly true</span></td>
                                <td>58.  My child worries a lot about getting separated from me or getting kidnapped.</td>
                            </tr>
                            <tr class="bordered">
                                <td class="mostlytrue" width="18%"><span>mostly true</span></td>
                                <td>59.  My child has terrible nightmares.</td>
                            </tr>
                            <tr class="bordered">
                                <td class="stronglytrue" width="18%"><span>strongly true</span></td>
                                <td>62.  My child denies that he is seriously underweight.</td>
                            </tr>
                            <tr class="bordered">
                                <td class="mostlytrue" width="18%"><span>mostly true</span></td>
                                <td>63.  My son likes to dress like a girl.</td>
                            </tr>
                            <tr class="bordered">
                                <td class="stronglytrue" width="18%"><span>strongly true</span></td>
                                <td>64.  My child bears grudges for a long time.</td>
                            </tr>
                            <tr class="bordered">
                                <td class="mostlytrue" width="18%"><span>mostly true</span></td>
                                <td>65.  My child has threatened or tried to commit suicide, or has hurt himself on purpose.</td>
                            </tr>
                            <tr class="bordered">
                                <td class="mostlytrue" width="18%"><span>mostly true</span></td>
                                <td>66.  My child is too concerned with right and wrong. He is stubborn about morals, ethics, or values.</td>
                            </tr>
                            <tr class="bordered">
                                <td class="stronglytrue" width="18%"><span>strongly true</span></td>
                                <td>67.  My child volunteers to do unpleasant things so people will like him.</td>
                            </tr>
                            <tr class="bordered">
                                <td class="stronglytrue" width="18%"><span>strongly true</span></td>
                                <td>68.  My child suspects people have a hidden reason for doing things.</td>
                            </tr>
                            <tr class="bordered">
                                <td class="mostlytrue" width="18%"><span>mostly true</span></td>
                                <td>69.  My child has forced someone into sexual activity.</td>
                            </tr>
                            <tr class="bordered">
                                <td class="stronglytrue" width="18%"><span>strongly true</span></td>
                                <td>73.  My child makes the same mistake over and over without trying to do it a different way.</td>
                            </tr>
                            <tr class="bordered">
                                <td class="stronglytrue" width="18%"><span>strongly true</span></td>
                                <td>77.  My child tries to annoy people on purpose.</td>
                            </tr>
                            <tr class="bordered">
                                <td class="stronglytrue" width="18%"><span>strongly true</span></td>
                                <td>78.  My child is afraid to leave me (e.g. going to school).</td>
                            </tr>
                            <tr class="bordered">
                                <td class="stronglytrue" width="18%"><span>strongly true</span></td>
                                <td>82.  My child is reluctant to confide in others because he fears that the information will be used against him.</td>
                            </tr>
                            <tr class="bordered">
                                <td class="mostlytrue" width="18%"><span>mostly true</span></td>
                                <td>85.  My child feels uncomfortable or helpless when alone because he fears being unable to take care of himself.</td>
                            </tr>
                            <tr class="bordered">
                                <td class="stronglytrue" width="18%"><span>strongly true</span></td>
                                <td>86.  My child reports unusual experiences like hearing voices that are not there, seeing people's bodies change shape, or being touched when alone.</td>
                            </tr>
                            <tr class="bordered">
                                <td class="mostlytrue" width="18%"><span>mostly true</span></td>
                                <td>87.  My child is unemotional.</td>
                            </tr>
                            <tr class="bordered">
                                <td class="mostlytrue" width="18%"><span>mostly true</span></td>
                                <td>88.  My child is cruel to others.</td>
                            </tr>
                            <tr class="bordered">
                                <td class="stronglytrue" width="18%"><span>strongly true</span></td>
                                <td>89.  My child lacks empathy and is not able to understand how other people feel.</td>
                            </tr>
                            <tr class="bordered">
                                <td class="stronglytrue" width="18%"><span>strongly true</span></td>
                                <td>90.  My child is shy around new children because he has no self confidence.</td>
                            </tr>
                            <tr class="bordered">
                                <td class="mostlytrue" width="18%"><span>mostly true</span></td>
                                <td>93.  Recently, my child has had a big change in his appetite.</td>
                            </tr>
                            <tr class="bordered">
                                <td class="stronglytrue" width="18%"><span>strongly true</span></td>
                                <td>94.  My child has poor coordination. He is awkward and clumsy.</td>
                            </tr>
                            <tr class="bordered">
                                <td class="mostlytrue" width="18%"><span>mostly true</span></td>
                                <td>96.  My child blames others for his mistakes.</td>
                            </tr>
                            <tr class="bordered">
                                <td class="stronglytrue" width="18%"><span>strongly true</span></td>
                                <td>98.  My child complains that it does not pay to be good or that good things do not last.</td>
                            </tr>
                            <tr class="bordered">
                                <td class="stronglytrue" width="18%"><span>strongly true</span></td>
                                <td>99.  My child is a pessimist.</td>
                            </tr>
                            <tr class="bordered">
                                <td class="mostlytrue" width="18%"><span>mostly true</span></td>
                                <td>102.  My child tries very hard to avoid being alone or feeling abandoned.</td>
                            </tr>
                            <tr class="bordered">
                                <td class="stronglytrue" width="18%"><span>strongly true</span></td>
                                <td>103.  My child is unable to throw away worn-out or worthless objects even when they have no sentimental value.</td>
                            </tr>
                            <tr class="bordered">
                                <td class="mostlytrue" width="18%"><span>mostly true</span></td>
                                <td>104.  My child agrees with almost any opinion in order to be liked.</td>
                            </tr>
                            <tr class="bordered">
                                <td class="mostlytrue" width="18%"><span>mostly true</span></td>
                                <td>105.  My child is afraid of social situations because he is afraid of other people.</td>
                            </tr>
                            <tr class="bordered">
                                <td class="mostlytrue" width="18%"><span>mostly true</span></td>
                                <td>110.  My child has trouble makings plans to do things.</td>
                            </tr>
                            <tr class="bordered">
                                <td class="mostlytrue" width="18%"><span>mostly true</span></td>
                                <td>111.  My child sleeps too much.</td>
                            </tr>
                            <tr class="bordered">
                                <td class="mostlytrue" width="18%"><span>mostly true</span></td>
                                <td>112.  My child still poops his pants.</td>
                            </tr>
                            <tr class="bordered">
                                <td class="stronglytrue" width="18%"><span>strongly true</span></td>
                                <td>114.  My child is too touchy or easily annoyed.</td>
                            </tr>
                            <tr class="bordered">
                                <td class="stronglytrue" width="18%"><span>strongly true</span></td>
                                <td>115.  My child is afraid to go to sleep without me being near.</td>
                            </tr>
                            <tr class="bordered">
                                <td class="stronglytrue" width="18%"><span>strongly true</span></td>
                                <td>116.  My child usually wavers between getting angry and acting sorry.</td>
                            </tr>
                            <tr class="bordered">
                                <td class="stronglytrue" width="18%"><span>strongly true</span></td>
                                <td>117.  My son likes to pretend he is a girl.</td>
                            </tr>
                            <tr class="bordered">
                                <td class="stronglytrue" width="18%"><span>strongly true</span></td>
                                <td>119.  My child has hurt himself or caused trouble for himself more than once because he did not think ahead.</td>
                            </tr>
                            <tr class="bordered">
                                <td class="stronglytrue" width="18%"><span>strongly true</span></td>
                                <td>123.  My child has trouble seeing how things fit together, like doing puzzles.</td>
                            </tr>
                            <tr class="bordered">
                                <td class="mostlytrue" width="18%"><span>mostly true</span></td>
                                <td>124.  My child is angry and resentful.</td>
                            </tr>
                            <tr class="bordered">
                                <td class="stronglytrue" width="18%"><span>strongly true</span></td>
                                <td>128.  My child is uncertain about who he is, what he wants, or what kind of friends to have.</td>
                            </tr>
                            <tr class="bordered">
                                <td class="stronglytrue" width="18%"><span>strongly true</span></td>
                                <td>129.  When my child gets stressed, he starts to act weird or unreal, or paranoid.</td>
                            </tr>
                            <tr class="bordered">
                                <td class="stronglytrue" width="18%"><span>strongly true</span></td>
                                <td>130.  My child has trouble doing things on his own because of lack of self confidence.</td>
                            </tr>
                            <tr class="bordered">
                                <td class="mostlytrue" width="18%"><span>mostly true</span></td>
                                <td>132.  My child seems to have a lot of fantasies about being beautiful, popular, or finding the girl of his dreams.</td>
                            </tr>
                            <tr class="bordered">
                                <td class="mostlytrue" width="18%"><span>mostly true</span></td>
                                <td>134.  My child has trouble staying asleep.</td>
                            </tr>
                            <tr class="bordered">
                                <td class="mostlytrue" width="18%"><span>mostly true</span></td>
                                <td>137.  My child is spiteful or tries to get even.</td>
                            </tr>
                            <tr class="bordered">
                                <td class="mostlytrue" width="18%"><span>mostly true</span></td>
                                <td>138.  My child gets sick (headaches, stomach aches, vomiting) when he thinks he has to be separated from me.</td>
                            </tr>
                            <tr class="bordered">
                                <td class="mostlytrue" width="18%"><span>mostly true</span></td>
                                <td>139.  My child does not follow instructions and fails to finish homework or chores.</td>
                            </tr>
                            <tr class="bordered">
                                <td class="stronglytrue" width="18%"><span>strongly true</span></td>
                                <td>140.  My son likes to play with girls more than he likes to play with boys.</td>
                            </tr>
                            <tr class="bordered">
                                <td class="mostlytrue" width="18%"><span>mostly true</span></td>
                                <td>141.  My child often lies or "cons" others.</td>
                            </tr>
                            <tr class="bordered">
                                <td class="mostlytrue" width="18%"><span>mostly true</span></td>
                                <td>142.  My child has a style of speech that is dramatic but vague.</td>
                            </tr>
                            <tr class="bordered">
                                <td class="mostlytrue" width="18%"><span>mostly true</span></td>
                                <td>146.  My child acts like he is better than others.</td>
                            </tr>
                            <tr class="bordered">
                                <td class="mostlytrue" width="18%"><span>mostly true</span></td>
                                <td>147.  My child avoids or dislikes tasks that require a lot of thinking.</td>
                            </tr>
                            <tr class="bordered">
                                <td class="stronglytrue" width="18%"><span>strongly true</span></td>
                                <td>148.  My child has trouble speaking.</td>
                            </tr>
                            <tr class="bordered">
                                <td class="stronglytrue" width="18%"><span>strongly true</span></td>
                                <td>150.  My son is not comfortable being a boy.</td>
                            </tr>
                            <tr class="bordered">
                                <td class="stronglytrue" width="18%"><span>strongly true</span></td>
                                <td>153.  My child talks too much or talks all the time.</td>
                            </tr>
                            <tr class="bordered">
                                <td class="mostlytrue" width="18%"><span>mostly true</span></td>
                                <td>154.  My child acts or looks odd or weird compared to other children.</td>
                            </tr>
                            <tr class="bordered">
                                <td class="mostlytrue" width="18%"><span>mostly true</span></td>
                                <td>155.  My child has been cruel to animals.</td>
                            </tr>
                            <tr class="bordered">
                                <td class="mostlytrue" width="18%"><span>mostly true</span></td>
                                <td>156.  My child was potty trained later than usual.</td>
                            </tr>
                            <tr class="bordered">
                                <td class="stronglytrue" width="18%"><span>strongly true</span></td>
                                <td>157.  My child has robbed someone face-to-face, like mugging or purse-snatching.</td>
                            </tr>
                            <tr class="bordered">
                                <td class="mostlytrue" width="18%"><span>mostly true</span></td>
                                <td>159.  My child has trouble listening when spoken to.</td>
                            </tr>
                            <tr class="bordered">
                                <td class="mostlytrue" width="18%"><span>mostly true</span></td>
                                <td>163.  My child runs around and climbs on things too much.</td>
                            </tr>
                            <tr class="bordered">
                                <td class="mostlytrue" width="18%"><span>mostly true</span></td>
                                <td>164.  My child stays out at night without permission (beginning before age 13).</td>
                            </tr>
                            <tr class="bordered">
                                <td class="stronglytrue" width="18%"><span>strongly true</span></td>
                                <td>167.  My child speaks slowly because he often has trouble coming up with the right word.</td>
                            </tr>
                            <tr class="bordered">
                                <td class="mostlytrue" width="18%"><span>mostly true</span></td>
                                <td>171.  My child does not wait for the question to be finished before blurting out his answer.</td>
                            </tr>
                            <tr class="bordered">
                                <td class="mostlytrue" width="18%"><span>mostly true</span></td>
                                <td>175.  My child has trouble understanding what people say.</td>
                            </tr>
                            <tr class="bordered">
                                <td class="mostlytrue" width="18%"><span>mostly true</span></td>
                                <td>176.  My child has trouble writing letters of the alphabet, or writes some letters backward.</td>
                            </tr>
                            <tr class="bordered">
                                <td class="stronglytrue" width="18%"><span>strongly true</span></td>
                                <td>179.  My child exercises more than he should to avoid gaining weight.</td>
                            </tr>
                            <tr class="bordered">
                                <td class="mostlytrue" width="18%"><span>mostly true</span></td>
                                <td>181.  My child takes a long time to learn new things.</td>
                            </tr>
                            <tr class="bordered">
                                <td class="stronglytrue" width="18%"><span>strongly true</span></td>
                                <td>182.  My child seems tired nearly every day.</td>
                            </tr>
                            <tr class="bordered">
                                <td class="mostlytrue" width="18%"><span>mostly true</span></td>
                                <td>183.  My child has trouble learning new things.</td>
                            </tr>
                            <tr class="bordered">
                                <td class="stronglytrue" width="18%"><span>strongly true</span></td>
                                <td>184.  My child gets so worried about details, list or schedules that he forgets what he is supposed to be doing.</td>
                            </tr>
                            <tr class="bordered">
                                <td class="stronglytrue" width="18%"><span>strongly true</span></td>
                                <td>185.  My child has trouble organizing tasks and activities.</td>
                            </tr>
                            <tr class="bordered">
                                <td class="mostlytrue" width="18%"><span>mostly true</span></td>
                                <td>191.  My child has trouble falling asleep.</td>
                            </tr>
                            <tr class="bordered">
                                <td class="mostlytrue" width="18%"><span>mostly true</span></td>
                                <td>192.  My child has trouble with arithmetic.</td>
                            </tr>
                            <tr class="bordered">
                                <td class="stronglytrue" width="18%"><span>strongly true</span></td>
                                <td>194.  My child has headaches.</td>
                            </tr>
                            <tr class="bordered">
                                <td class="mostlytrue" width="18%"><span>mostly true</span></td>
                                <td>195.  My child learned to talk later than other children.</td>
                            </tr>
                            <tr class="bordered">
                                <td class="stronglytrue" width="18%"><span>strongly true</span></td>
                                <td>198.  My child laughs at the wrong times.</td>
                            </tr>
                        </tbody>
                    </table>
                </div>
                <div id="criticalitems" style="page-break-before: always;" class="ui-tabs-panel ui-widget-content ui-corner-bottom ui-tabs-hide">
                    <!-- Begin Critical Items -->
                    <!--<div class="printable"><a href="#" target="_blank"><img src="http://178.62.94.173/web/imgs/icons/printer.png" border="0">  Print This Report</a></div>-->
                    <div class="printable">
                        <div style="float: right; margin-top: 7px;">
                            <form action="" name="download" method="post">
                                <input type="submit" name="download" value="Export to CSV"></form>
                        </div>
                    </div>

                    <table class="chartlegend">
                        <tbody>
                            <tr>
                                <td>Patient Name: John Doe</td>
                                <td style="width: 25px"></td>
                                <td>Test Name: Coolidge Personality and Neuropsychological Inventory (CPNI)</td>
                            </tr>
                            <tr>
                                <td>Gender: Male</td>
                                <td style="width: 50px"></td>
                                <td>Test Date: Oct 12, 2014</td>
                            </tr>
                            <tr>
                                <td>Patient Age: 36</td>
                                <td style="width: 25px"></td>
                                <td>Data Provided By: self</td>
                            </tr>
                        </tbody>
                    </table>
                    <table class="explanations">
                        <tbody>
                            <tr>
                                <td colspan="2">&nbsp;</td>
                            </tr>
                            <tr>
                                <td colspan="2">&nbsp;</td>
                            </tr>
                            <tr>
                                <td colspan="2" class="scalegroup_row">Posttraumatic Stress Disorder</td>
                            </tr>
                            <tr>
                                <td colspan="2" class="scale_row">No critical items endorsed</td>
                            </tr>
                            <tr>
                                <td colspan="2">&nbsp;</td>
                            </tr>
                            <tr>
                                <td colspan="2" class="scalegroup_row">Other Critical Items</td>
                            </tr>
                            <tr class="bordered">
                                <td class="mostlytrue" width="18%"><span>mostly true</span></td>
                                <td>33.  My child has low self-esteem and feels worthless.</td>
                            </tr>
                            <tr class="bordered">
                                <td class="stronglytrue" width="18%"><span>strongly true</span></td>
                                <td>38.  My child stutters.</td>
                            </tr>
                            <tr class="bordered">
                                <td class="mostlytrue" width="18%"><span>mostly true</span></td>
                                <td>59.  My child has terrible nightmares.</td>
                            </tr>
                            <tr class="bordered">
                                <td class="mostlytrue" width="18%"><span>mostly true</span></td>
                                <td>65.  My child has threatened or tried to commit suicide, or has hurt himself on purpose.</td>
                            </tr>
                            <tr class="bordered">
                                <td class="mostlytrue" width="18%"><span>mostly true</span></td>
                                <td>69.  My child has forced someone into sexual activity.</td>
                            </tr>
                        </tbody>
                    </table>
                </div>
                <div id="PersonalityTraits" style="page-break-before: always;" class="chartw ui-tabs-panel ui-widget-content ui-corner-bottom ui-tabs-hide">
                    <!-- Begin Personality Traits -->
                    <!--<div class="printable"><a href="#" target="_blank"><img src="http://178.62.94.173/web/imgs/icons/printer.png" border="0">  Print This Report</a></div>-->
                    <div class="printable">
                        <div style="float: right; margin-top: 7px;">
                            <form action="" name="download" method="post">
                                <input type="submit" name="download" value="Export to CSV"></form>
                        </div>
                    </div>

                    <table class="chartlegend">
                        <tbody>
                            <tr>
                                <td>Patient Name: John Doe</td>
                                <td style="width: 25px"></td>
                                <td>Test Name: Coolidge Personality and Neuropsychological Inventory (CPNI)</td>
                            </tr>
                            <tr>
                                <td>Gender: Male</td>
                                <td style="width: 50px"></td>
                                <td>Test Date: Oct 12, 2014</td>
                            </tr>
                            <tr>
                                <td>Patient Age: 36</td>
                                <td style="width: 25px"></td>
                                <td>Data Provided By: self</td>
                            </tr>
                        </tbody>
                    </table>
                    <table class="chart" width="50%" style="background: #e7e7e7; margin-top: 10px;">
                        <tbody>
                            <tr>
                                <th style="text-align: left; width: 40%;">Scale</th>
                                <th style="text-align: left;">%tile</th>
                                <th style="text-align: left;">TScore</th>

                            </tr>
                            <tr class="">
                                <td>Unusual Beliefs and Experiences</td>
                                <td><span>99%</span></td>
                                <td><span>75</span></td>
                            </tr>
                            <tr class="">
                                <td>Callousness</td>
                                <td><span>95%</span></td>
                                <td><span>67</span></td>
                            </tr>
                            <tr class="">
                                <td>Eccentricity</td>
                                <td><span>93%</span></td>
                                <td><span>65</span></td>
                            </tr>
                            <tr class="">
                                <td>Separation Insecurity</td>
                                <td><span>89%</span></td>
                                <td><span>62</span></td>
                            </tr>
                            <tr class="">
                                <td>Risk Taking</td>
                                <td><span>83%</span></td>
                                <td><span>59</span></td>
                            </tr>
                            <tr class="">
                                <td>Emotional Lability</td>
                                <td><span>76%</span></td>
                                <td><span>57</span></td>
                            </tr>
                            <tr class="">
                                <td>Restricted Affectivity</td>
                                <td><span>76%</span></td>
                                <td><span>57</span></td>
                            </tr>
                            <tr class="">
                                <td>Submissiveness</td>
                                <td><span>74%</span></td>
                                <td><span>57</span></td>
                            </tr>
                            <tr class="">
                                <td>Hostility</td>
                                <td><span>73%</span></td>
                                <td><span>56</span></td>
                            </tr>
                            <tr class="">
                                <td>Grandiosity</td>
                                <td><span>72%</span></td>
                                <td><span>56</span></td>
                            </tr>
                            <tr class="">
                                <td>Manipulativeness</td>
                                <td><span>67%</span></td>
                                <td><span>54</span></td>
                            </tr>
                            <tr class="">
                                <td>Perceptual Dysregulation</td>
                                <td><span>63%</span></td>
                                <td><span>53</span></td>
                            </tr>
                            <tr class="">
                                <td>Withdrawal</td>
                                <td><span>59%</span></td>
                                <td><span>52</span></td>
                            </tr>
                            <tr class="">
                                <td>Suspiciousness</td>
                                <td><span>53%</span></td>
                                <td><span>51</span></td>
                            </tr>
                            <tr class="">
                                <td>Irresponsibility</td>
                                <td><span>55%</span></td>
                                <td><span>51</span></td>
                            </tr>
                            <tr class="">
                                <td>Anhedonia</td>
                                <td><span>49%</span></td>
                                <td><span>50</span></td>
                            </tr>
                            <tr class="">
                                <td>Attention Seeking</td>
                                <td><span>44%</span></td>
                                <td><span>48</span></td>
                            </tr>
                            <tr class="">
                                <td>Perseveration</td>
                                <td><span>43%</span></td>
                                <td><span>48</span></td>
                            </tr>
                            <tr class="">
                                <td>Depressivity</td>
                                <td><span>39%</span></td>
                                <td><span>47</span></td>
                            </tr>
                            <tr class="">
                                <td>Deceitfulness</td>
                                <td><span>40%</span></td>
                                <td><span>47</span></td>
                            </tr>
                            <tr class="">
                                <td>Intimacy Avoidance</td>
                                <td><span>24%</span></td>
                                <td><span>43</span></td>
                            </tr>
                            <tr class="">
                                <td>Anxiousness</td>
                                <td><span>18%</span></td>
                                <td><span>41</span></td>
                            </tr>
                            <tr class="">
                                <td>Rigid Perfectionism</td>
                                <td><span>8%</span></td>
                                <td><span>36</span></td>
                            </tr>
                            <tr class="">
                                <td>Impulsivity</td>
                                <td><span>5%</span></td>
                                <td><span>33</span></td>
                            </tr>
                            <tr class="">
                                <td>Distractibility</td>
                                <td><span>1%</span></td>
                                <td><span>26</span></td>
                            </tr>
                        </tbody>
                    </table>
                </div>
                <div id="summary" style="page-break-before: always;" class="chartw ui-tabs-panel ui-widget-content ui-corner-bottom ui-tabs-hide">
                    <!-- Begin Summary -->
                    <!--<div class="printable"><a href="#" target="_blank"><img src="http://178.62.94.173/web/imgs/icons/printer.png" border="0">  Print This Report</a></div>-->
                    <div class="printable">
                        <div style="float: right; margin-top: 7px;">
                            <form action="" name="download" method="post">
                                <input type="submit" name="download" value="Export to CSV"></form>
                        </div>
                    </div>

                    <table class="chartlegend">
                        <tbody>
                            <tr>
                                <td>Patient Name: John Doe</td>
                                <td style="width: 25px"></td>
                                <td>Test Name: Coolidge Personality and Neuropsychological Inventory (CPNI)</td>
                            </tr>
                            <tr>
                                <td>Gender: Male</td>
                                <td style="width: 50px"></td>
                                <td>Test Date: Oct 12, 2014</td>
                            </tr>
                            <tr>
                                <td>Patient Age: 36</td>
                                <td style="width: 25px"></td>
                                <td>Data Provided By: self</td>
                            </tr>
                        </tbody>
                    </table>
                    <table class="chart testw1">
                        <tbody>
                            <tr>
                                <td colspan="12" style="height: 10px;"></td>
                            </tr>
                            <!--<tr>
				<td colspan='2' style='text-align: right; padding-right:155px;'>Scores</td>
				<td></td>
				<td></td>
				<td></td>
				<td colspan='7'>&#932; Scores</td>
			</tr>-->
                            <tr>
                                <th style="text-align: left; width: 25%;">Scale</th>
                                <th class="interpret_header" style="width: 15%;">Interpret</th>
                                <th style="width: 5%;">%tile</th>
                                <th style="width: 5%;">TScore</th>

                                <th>20</th>
                                <th>30</th>
                                <th>40</th>
                                <th>50</th>
                                <th>60</th>
                                <th>70</th>
                                <th>80</th>
                                <th>90</th>
                            </tr>
                            <tr>
                                <td colspan="16">&nbsp;</td>
                            </tr>
                            <tr class="axis">
                                <td colspan="16">Personality Disorders</td>
                            </tr>
                            <tr class="even">
                                <td>Borderline Personality Disorder</td>
                                <td class="interpret" bgcolor="#CC0000">greatly elevated</td>
                                <td align="center">99%</td>
                                <td align="center">85</td>
                                <td colspan="8">
                                    <div class="graph" style="width: 85%"></div>
                                </td>
                            </tr>
                            <tr class="odd">
                                <td>Dependent Personality Disorder</td>
                                <td class="interpret" bgcolor="#ff9900">moderately elevated</td>
                                <td align="center">92%</td>
                                <td align="center">64</td>
                                <td colspan="8">
                                    <div class="graph" style="width: 64%"></div>
                                </td>
                            </tr>
                            <tr class="even">
                                <td>Histrionic Personality Disorder</td>
                                <td class="interpret" bgcolor="#ff9900">moderately elevated</td>
                                <td align="center">92%</td>
                                <td align="center">64</td>
                                <td colspan="8">
                                    <div class="graph" style="width: 64%"></div>
                                </td>
                            </tr>
                            <tr class="odd">
                                <td>Obsess. Compulsive Personality Disorder</td>
                                <td class="interpret" bgcolor="#ff9900">moderately elevated</td>
                                <td align="center">92%</td>
                                <td align="center">64</td>
                                <td colspan="8">
                                    <div class="graph" style="width: 64%"></div>
                                </td>
                            </tr>
                            <tr class="even">
                                <td>Schizotypal Personality Disorder</td>
                                <td class="interpret" bgcolor="#CC0000">greatly elevated</td>
                                <td align="center">99%</td>
                                <td align="center">94</td>
                                <td colspan="8">
                                    <div class="graph" style="width: 94%"></div>
                                </td>
                            </tr>
                            <tr class="odd">
                                <td>Narcissistic Personality Disorder</td>
                                <td class="interpret" bgcolor="#ff9900">moderately elevated</td>
                                <td align="center">91%</td>
                                <td align="center">63</td>
                                <td colspan="8">
                                    <div class="graph" style="width: 63%"></div>
                                </td>
                            </tr>
                            <tr class="even">
                                <td>Conduct Disorder (Antisocial)</td>
                                <td class="interpret" bgcolor="#CC0000">greatly elevated</td>
                                <td align="center">99%</td>
                                <td align="center">89</td>
                                <td colspan="8">
                                    <div class="graph" style="width: 89%"></div>
                                </td>
                            </tr>
                            <tr class="odd">
                                <td>Passive-Aggressive Personality Disorder</td>
                                <td class="interpret" bgcolor="#ff9900">moderately elevated</td>
                                <td align="center">96%</td>
                                <td align="center">68</td>
                                <td colspan="8">
                                    <div class="graph" style="width: 68%"></div>
                                </td>
                            </tr>
                            <tr class="even">
                                <td>Depressive Personality Disorder</td>
                                <td class="interpret" bgcolor="#ff9900">moderately elevated</td>
                                <td align="center">86%</td>
                                <td align="center">61</td>
                                <td colspan="8">
                                    <div class="graph" style="width: 61%"></div>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="16">&nbsp;</td>
                            </tr>
                            <tr class="axis">
                                <td colspan="16">Clinical Syndromes</td>
                            </tr>
                            <tr class="even">
                                <td>Generalized Anxiety Disorder</td>
                                <td class="interpret" bgcolor="#CC0000">greatly elevated</td>
                                <td align="center">99%</td>
                                <td align="center">76</td>
                                <td colspan="8">
                                    <div class="graph" style="width: 76%"></div>
                                </td>
                            </tr>
                            <tr class="odd">
                                <td>Major Depressive Disorder</td>
                                <td class="interpret" bgcolor="#CC0000">greatly elevated</td>
                                <td align="center">99%</td>
                                <td align="center">76</td>
                                <td colspan="8">
                                    <div class="graph" style="width: 76%"></div>
                                </td>
                            </tr>
                            <tr class="even">
                                <td>Separation Anxiety Disorder</td>
                                <td class="interpret" bgcolor="#CC0000">greatly elevated</td>
                                <td align="center">99%</td>
                                <td align="center">82</td>
                                <td colspan="8">
                                    <div class="graph" style="width: 82%"></div>
                                </td>
                            </tr>
                            <tr class="odd">
                                <td>Oppositional Defiant Disorder</td>
                                <td class="interpret" bgcolor="#CC0000">greatly elevated</td>
                                <td align="center">99%</td>
                                <td align="center">74</td>
                                <td colspan="8">
                                    <div class="graph" style="width: 74%"></div>
                                </td>
                            </tr>
                            <tr class="even">
                                <td>Gender Dysphoria</td>
                                <td class="interpret" bgcolor="#CC0000">greatly elevated</td>
                                <td align="center">99%</td>
                                <td align="center">105</td>
                                <td colspan="8">
                                    <div class="graph" style="width: 100%"></div>
                                </td>
                            </tr>
                            <tr class="odd">
                                <td>Anorexia Nervosa</td>
                                <td class="interpret" bgcolor="#ff9900">moderately elevated</td>
                                <td align="center">95%</td>
                                <td align="center">66</td>
                                <td colspan="8">
                                    <div class="graph" style="width: 66%"></div>
                                </td>
                            </tr>
                            <tr class="even">
                                <td>Bulimia Nervosa</td>
                                <td class="interpret" bgcolor="#ff9900">moderately elevated</td>
                                <td align="center">96%</td>
                                <td align="center">68</td>
                                <td colspan="8">
                                    <div class="graph" style="width: 68%"></div>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="16">&nbsp;</td>
                            </tr>
                            <tr class="axis">
                                <td colspan="16">Neuropsychological Syndromes</td>
                            </tr>
                            <tr class="even">
                                <td>Neurocognitive Disorder</td>
                                <td class="interpret" bgcolor="#ff9900">moderately elevated</td>
                                <td align="center">97%</td>
                                <td align="center">69</td>
                                <td colspan="8">
                                    <div class="graph" style="width: 69%"></div>
                                </td>
                            </tr>
                            <tr class="odd">
                                <td>Postconcussional Disorder</td>
                                <td class="interpret" bgcolor="#CC0000">greatly elevated</td>
                                <td align="center">99%</td>
                                <td align="center">78</td>
                                <td colspan="8">
                                    <div class="graph" style="width: 78%"></div>
                                </td>
                            </tr>
                            <tr class="even">
                                <td>Executive Dysf. of the Frontal Lobes</td>
                                <td class="interpret" bgcolor="#CC0000">greatly elevated</td>
                                <td align="center">99%</td>
                                <td align="center">71</td>
                                <td colspan="8">
                                    <div class="graph" style="width: 71%"></div>
                                </td>
                            </tr>
                            <tr class="odd">
                                <td>Metacognitive Subscale</td>
                                <td class="interpret" bgcolor="#ff9900">moderately elevated</td>
                                <td align="center">95%</td>
                                <td align="center">67</td>
                                <td colspan="8">
                                    <div class="graph" style="width: 67%"></div>
                                </td>
                            </tr>
                            <tr class="even">
                                <td>Social Inappropriateness Subscale</td>
                                <td class="interpret" bgcolor="#CC0000">greatly elevated</td>
                                <td align="center">99%</td>
                                <td align="center">86</td>
                                <td colspan="8">
                                    <div class="graph" style="width: 86%"></div>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="16">&nbsp;</td>
                            </tr>
                            <tr class="axis">
                                <td colspan="16">Neuropsychological Scales</td>
                            </tr>
                            <tr class="even">
                                <td>Neuropsychological Dysfunction Scale</td>
                                <td class="interpret" bgcolor="#CC0000">greatly elevated</td>
                                <td align="center">99%</td>
                                <td align="center">72</td>
                                <td colspan="8">
                                    <div class="graph" style="width: 72%"></div>
                                </td>
                            </tr>
                            <tr class="odd">
                                <td>Somatic Subscale</td>
                                <td class="interpret" bgcolor="#CC0000">greatly elevated</td>
                                <td align="center">99%</td>
                                <td align="center">93</td>
                                <td colspan="8">
                                    <div class="graph" style="width: 93%"></div>
                                </td>
                            </tr>
                            <tr class="even">
                                <td>Learning Subscale</td>
                                <td class="interpret" bgcolor="#CC0000">greatly elevated</td>
                                <td align="center">98%</td>
                                <td align="center">70</td>
                                <td colspan="8">
                                    <div class="graph" style="width: 70%"></div>
                                </td>
                            </tr>
                            <tr class="odd">
                                <td>Language Problems Subscale</td>
                                <td class="interpret" bgcolor="#CC0000">greatly elevated</td>
                                <td align="center">99%</td>
                                <td align="center">92</td>
                                <td colspan="8">
                                    <div class="graph" style="width: 92%"></div>
                                </td>
                            </tr>
                            <tr class="even">
                                <td>Perceptual Motor Subscale</td>
                                <td class="interpret" bgcolor="#CC0000">greatly elevated</td>
                                <td align="center">99%</td>
                                <td align="center">81</td>
                                <td colspan="8">
                                    <div class="graph" style="width: 81%"></div>
                                </td>
                            </tr>
                            <tr class="odd">
                                <td>Subcortical Subscale</td>
                                <td class="interpret" bgcolor="#CC0000">greatly elevated</td>
                                <td align="center">99%</td>
                                <td align="center">93</td>
                                <td colspan="8">
                                    <div class="graph" style="width: 93%"></div>
                                </td>
                            </tr>
                            <tr class="even">
                                <td>Delayed Maturation Subscale</td>
                                <td class="interpret" bgcolor="#CC0000">greatly elevated</td>
                                <td align="center">99%</td>
                                <td align="center">75</td>
                                <td colspan="8">
                                    <div class="graph" style="width: 75%"></div>
                                </td>
                            </tr>
                            <tr class="odd">
                                <td>Emotional Subscale</td>
                                <td class="interpret" bgcolor="#CC0000">greatly elevated</td>
                                <td align="center">98%</td>
                                <td align="center">70</td>
                                <td colspan="8">
                                    <div class="graph" style="width: 70%"></div>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="16">&nbsp;</td>
                            </tr>
                            <tr class="axis">
                                <td colspan="16">Additional Clincal Scales</td>
                            </tr>
                            <tr class="even">
                                <td>Emotional Lability</td>
                                <td class="interpret" bgcolor="#CC0000">greatly elevated</td>
                                <td align="center">99%</td>
                                <td align="center">75</td>
                                <td colspan="8">
                                    <div class="graph" style="width: 75%"></div>
                                </td>
                            </tr>
                            <tr class="odd">
                                <td>Disinhibition</td>
                                <td class="interpret" bgcolor="#CC0000">greatly elevated</td>
                                <td align="center">99%</td>
                                <td align="center">74</td>
                                <td colspan="8">
                                    <div class="graph" style="width: 74%"></div>
                                </td>
                            </tr>
                            <tr class="even">
                                <td>Apathy</td>
                                <td class="interpret" bgcolor="#CC0000">greatly elevated</td>
                                <td align="center">99%</td>
                                <td align="center">73</td>
                                <td colspan="8">
                                    <div class="graph" style="width: 73%"></div>
                                </td>
                            </tr>
                            <tr class="odd">
                                <td>Paranoia</td>
                                <td class="interpret" bgcolor="#ff9900">moderately elevated</td>
                                <td align="center">94%</td>
                                <td align="center">66</td>
                                <td colspan="8">
                                    <div class="graph" style="width: 66%"></div>
                                </td>
                            </tr>
                            <tr class="even">
                                <td>Psychotic Thinking</td>
                                <td class="interpret" bgcolor="#CC0000">greatly elevated</td>
                                <td align="center">99%</td>
                                <td align="center">93</td>
                                <td colspan="8">
                                    <div class="graph" style="width: 93%"></div>
                                </td>
                            </tr>
                            <tr class="odd">
                                <td>Emotional Coldness</td>
                                <td class="interpret" bgcolor="#CC0000">greatly elevated</td>
                                <td align="center">99%</td>
                                <td align="center">72</td>
                                <td colspan="8">
                                    <div class="graph" style="width: 72%"></div>
                                </td>
                            </tr>
                            <tr class="even">
                                <td>Sleep Disturbances</td>
                                <td class="interpret" bgcolor="#CC0000">greatly elevated</td>
                                <td align="center">99%</td>
                                <td align="center">84</td>
                                <td colspan="8">
                                    <div class="graph" style="width: 84%"></div>
                                </td>
                            </tr>
                            <tr class="odd">
                                <td>Social Anxiety</td>
                                <td class="interpret" bgcolor="#ff9900">moderately elevated</td>
                                <td align="center">93%</td>
                                <td align="center">65</td>
                                <td colspan="8">
                                    <div class="graph" style="width: 65%"></div>
                                </td>
                            </tr>
                            <tr class="even">
                                <td>Social Withdrawl</td>
                                <td class="interpret" bgcolor="#ff9900">moderately elevated</td>
                                <td align="center">95%</td>
                                <td align="center">66</td>
                                <td colspan="8">
                                    <div class="graph" style="width: 66%"></div>
                                </td>
                            </tr>
                            <tr class="odd">
                                <td>Self-Esteem</td>
                                <td class="interpret" bgcolor="#CC0000">greatly elevated</td>
                                <td align="center">99%</td>
                                <td align="center">89</td>
                                <td colspan="8">
                                    <div class="graph" style="width: 89%"></div>
                                </td>
                            </tr>
                            <tr class="even">
                                <td>Autism Spectrum Disorder</td>
                                <td class="interpret" bgcolor="#ff9900">moderately elevated</td>
                                <td align="center">93%</td>
                                <td align="center">65</td>
                                <td colspan="8">
                                    <div class="graph" style="width: 65%"></div>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="16">&nbsp;</td>
                            </tr>
                            <tr class="axis">
                                <td colspan="16">Hostility Scales</td>
                            </tr>
                            <tr class="even">
                                <td>Antisocial Triumvirate</td>
                                <td class="interpret" bgcolor="#CC0000">greatly elevated</td>
                                <td align="center">99%</td>
                                <td align="center">85</td>
                                <td colspan="8">
                                    <div class="graph" style="width: 85%"></div>
                                </td>
                            </tr>
                            <tr class="odd">
                                <td>Dangerousness</td>
                                <td class="interpret" bgcolor="#CC0000">greatly elevated</td>
                                <td align="center">99%</td>
                                <td align="center">85</td>
                                <td colspan="8">
                                    <div class="graph" style="width: 85%"></div>
                                </td>
                            </tr>
                            <tr class="even">
                                <td>Conduct Disorder-Aggressive Subtype</td>
                                <td class="interpret" bgcolor="#CC0000">greatly elevated</td>
                                <td align="center">99%</td>
                                <td align="center">101</td>
                                <td colspan="8">
                                    <div class="graph" style="width: 100%"></div>
                                </td>
                            </tr>
                            <tr class="odd">
                                <td>Conduct Disorder-Delinquent Subtype</td>
                                <td class="interpret" bgcolor="#CC0000">greatly elevated</td>
                                <td align="center">99%</td>
                                <td align="center">73</td>
                                <td colspan="8">
                                    <div class="graph" style="width: 73%"></div>
                                </td>
                            </tr>
                            <tr class="even">
                                <td>Tendency to Deny Blatant Pathology</td>
                                <td class="interpret" bgcolor="#CC0000">greatly elevated</td>
                                <td align="center">99%</td>
                                <td align="center">83</td>
                                <td colspan="8">
                                    <div class="graph" style="width: 83%"></div>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>

        </div>
        <div class="lightbox-target" id="NF">
            <div style="color: #000; width: 500px; padding: 6px; background: #E6E6F0; font-size: 13px; margin-left: auto; margin-right: auto; display: block; border: 4px solid white; box-shadow: 0px 0px 8px rgba(0,0,0,.3); border-radius: 5px;">
                <b style="font-size: 14px;">Norm Frequency:</b><br>
                How to detect tendencies of Denial or Malingering: Most of the 250 items are stated blatantly pathologically, i.e., endorsement of the item with a 3 or 4 is an endorsement of psychopathology. The column Norm Frequency is based on a normal sample of responding, thus, only 30 times (on average) did the normal sample answer (4) Strongly True, and only 54 times (on average) did the normal sample answer (3) More True than False. Therefore, the normal sample chose (3) or (4) a total of 84 times, which indicates even a normal sample will report some psychopathology.<br>
                <br>
                It may indicative of Denial if your patient (Patient heading) chose (3) or (4) less than 84 times. You may use the Standard Deviation (SD) column for an expected range of normal scores. For an answer of (4) Strongly True, the standardized Norm Frequency is 30 and the SD is 18. If your patient has a (4) frequency of less than 30, then your patient might be denying more than the average normal person. If your patient has a total of less than 84 for items (3) and (4), then your patient might also be denying too much.<br>
                <br>
                It may also indicative of Denial if your patient chose (1) or (2) more than 166 times. For an answer of (1) Strongly False, the standardized Norm Frequency is 93. If your patient has a (1) frequency of one SD more than 93, i.e., 133, then your patient might be again denying more than the average normal person.<br>
                <br>
                In clinical practice, particularly in institutional settings, Denial is more common than Malingering. However, if your patient does have an exceptionally high total sum for (3) and (4) answers, e.g., over 160, then the patient may either consciously or unconsciously exaggerating their psychopathology, and it may represent a cry for help.
            </div>
            <a class="lightbox-close" href="#"></a>
        </div>
        <div class="lightbox-target" id="Patient">
            <div style="color: #000; width: 500px; padding: 6px; background: #E6E6F0; font-size: 13px; margin-left: auto; margin-right: auto; display: block; border: 4px solid white; box-shadow: 0px 0px 8px rgba(0,0,0,.3); border-radius: 5px;">
                <b style="font-size: 14px;">Patient:</b><br>
                This table reports the frequency for which the Patient chose<br>
                (1) Strongly False<br>
                (2) More False than True<br>
                (3) More True than False, or<br>
                (4) Strongly True.<br>
                <br>
                It also reports the frequencies for which the purportedly normal sample (Norm Frequency [SD]) chose
                <br>
                (1) Strongly False<br>
                (2) More False than True<br>
                (3) More True than False, or<br>
                (4) Strongly True.
            </div>
            <a class="lightbox-close" href="#"></a>
        </div>
        <script type="text/javascript">
            $(function () {
                $("#tabs").tabs();
            });

            function save() {

                console.info('test');
                document.execCommand('SaveAs', true, 'error_log');
            }
</script>


        <div class="push">&nbsp;</div>


        <div class="footer">
            <div class="container">
                <div class="onethird">&nbsp;</div>
                <div class="onethird">&nbsp;</div>
                <div class="onethird">
                </div>
            </div>
        </div>
    </body>
</asp:Content>
<asp:Content ID="Content10" ContentPlaceHolderID="price" runat="server">
</asp:Content>
