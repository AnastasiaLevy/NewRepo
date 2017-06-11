﻿<%@ Page Title="" Language="C#" MasterPageFile="~/TestPage.Master" AutoEventWireup="true" CodeBehind="Personality.aspx.cs" Inherits="TestSite.Tests.Personality" %>

<asp:Content ID="Content1" ContentPlaceHolderID="tags" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="li" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="testName" runat="server">
    The Short-Form of the Coolidge Axis II Inventory (SCATI)
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="testDescription" runat="server">
    The SCATI is a 70-item inventory that assesses five primary criteria for 14 personality disorders, according to DSM-IV-TR (12 personality disorders) and DSM-III-R (sadistic and self-defeating personality disorders). There are three versions: a self-report form, and two significant other forms (one for reporting about a male adult and one for reporting about a female adult). The SCATI has demonstrated reliability and validity, and it has been designed and normed on adults ages 15 and older. The SCATI can be used to assess the presence of personality disorders and differentiate among 14 personality disorders.
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="contentAbout" runat="server">
</asp:Content>
<asp:Content ID="Content6" ContentPlaceHolderID="contentMeasure" runat="server">
</asp:Content>
<asp:Content ID="Content7" ContentPlaceHolderID="contentDetails" runat="server">
</asp:Content>
<asp:Content ID="Content8" ContentPlaceHolderID="contentResearch" runat="server">
    <p>Coolidge, F. L., Segal, D. L., Cahill, B. S. & Simenson, J. T. (2010). Psychometric properties of a brief inventory for the screening of personality disorders: The SCATI. Psychology and Psychotherapy: Theory, Research and Practice, 83, 395-405. doi:10.1348/147608310X486363. [click here for PDF copy]</p>

    <p>Watson, D. C., & Sinha, B. K. (2007). A normative study of the Coolidge axis‐II inventory, short form. Psychology and Psychotherapy: Theory, Research and Practice, 80(3), 437-441. [click here for PDF copy]</p>
</asp:Content>
<asp:Content ID="Content9" ContentPlaceHolderID="sampleReport" runat="server">
        <h3> Sample Report:</h3>
    <script type="text/javascript" async="" src="http://178.62.94.173/web/js/ga.js"></script><script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
    <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.8.16/jquery-ui.min.js"></script>
    <script type="text/javascript" src="http://178.62.94.173/web/js/jquery.dataTables.min.js"></script>
    <script type="text/javascript" src="http://178.62.94.173/web/js/slidedeck.jquery.lite.js"></script>

    <script src="http://178.62.94.173/web/js/jquery.featureList.js" type="text/javascript"></script>
    <script src="http://178.62.94.173/web/js/jquery.autotab.js" type="text/javascript"></script>
    <link rel="stylesheet" href="http://178.62.94.173/web/css/slidedeck.skin.css" type="text/css" media="screen">

    <link href="/css" rel="stylesheet" type="text/css">
    <link rel="stylesheet" href="http://178.62.94.173/web/css/validationEngine.jquery.css" type="text/css" media="screen" charset="utf-8">
    <link rel="stylesheet" href="http://178.62.94.173/web/css/fredcool/jquery-ui-1.8.4.custom.css" type="text/css">
    <link rel="stylesheet" href="http://178.62.94.173/web/css/reset.css" type="text/css">
    <link rel="stylesheet" href="http://178.62.94.173/web/css/960_12_10_10.css" type="text

        


     <div class="wrapper">
            <div class="headcontainer">
                <div class="container_12">
                    <div class="grid_3 "><a href="http://coolidgetests.com/"><img src="http://178.62.94.173/web/imgs/logo.png" border="0"></a></div>
                    <div class="grid_8">&nbsp;</div>
                    <div class="grid_1"></div>
                </div>
            </div>
        
            <div class="navstripe"></div>
		

            <div class="container_12">
                    <div class="grid_2 ">&nbsp;</div>
                    <div class="grid_10" style="text-align:right">
                        <div class="rightalign">
                        
                            <div class="navcontainer">

                            </div>

                                              <!--  <div class="navcontright"></div> -->
                    </div>
                         <div class="clear"></div>
                    </div>
            </div>
        
            <div class="clear" style="margin-bottom: 35px">&nbsp;</div>

            <div id="tabs" class="ui-tabs ui-widget ui-widget-content ui-corner-all">
    <ul class="ui-tabs-nav ui-helper-reset ui-helper-clearfix ui-widget-header ui-corner-all">
        <li class="ui-state-default ui-corner-top"><a href="#rawdata">Data</a></li>
        <li class="ui-state-default ui-corner-top"><a href="#PersonalityTraits">Charts</a></li>
        <li class="ui-state-default ui-corner-top"><a href="#explanations">Scale Item Analysis</a></li>
    </ul>
    <div id="rawdata" style="page-break-before: always;" class="ui-tabs-panel ui-widget-content ui-corner-bottom ui-tabs-hide">					<!-- Begin Raw Data -->
        <!--<div class="printable"><a href="http://coolidgetests.com/account/SCATI_resultsPrint.php?transaction_id=214" target="_blank"><img src="./Coolidge Tests _ Online Psychological Assessments_files/printer.png" border="0">  Print This Report</a></div>-->
        <div class="printable"><div style="float:right;margin-top:7px;"><form action="" name="download" method="post"> <input type="submit" name="download" value="Export to CSV"></form></div></div>
       
		
		<table class="chartlegend">
			<tbody><tr>
				<td>Patient Name: Jane Doe</td>
				<td style="width:25px"></td>
				<td>Test Name: The Short-Form of the Coolidge Axis II Inventory (SCATI)</td>
			</tr>
			<tr>
				<td>Gender: Female</td>
				<td style="width:50px"></td>
				<td>Test Date: May 27, 2015</td>
			</tr>
			<tr>
				<td>Patient Age: 36</td>
				<td style="width:25px"></td>
				<td>Data Provided By: self</td>
			</tr>
		</tbody></table>
		<table class="chart" width="35%">
			<tbody><tr>
				<td colspan="5">&nbsp;</td>
			</tr>
			<tr>
				<td colspan="5" style="background:#CCC"><strong>Profile Validity</strong></td>
			</tr>
			<tr>
				<td colspan="5">Answer Frequency (response pattern):</td>
			</tr>
			<tr>
				<td><strong>Raw Scores:</strong></td>
				<td><div style="float:left;margin-top:2px;"><strong>Patient</strong></div><div style="float:left;"><a class="lightbox" href="#Patient"> <img src="http://178.62.94.173/web/imgs/Help.png"></a></div></td>
				<td><div style="float:left;margin-top:2px;"><strong>Norm<br> Frequency</strong></div><div style="float:left;"><a class="lightbox" href="#NF"> <img style="margin-top:8px;" src="http://178.62.94.173/web/imgs/Help.png"></a></div></td>
				<td style="text-align:center;"><div style="float:left;margin-top:2px;"><strong>(SD)</strong></div></td>
			</tr><tr>
						<td>1 = Strongly False (SF)</td>
						<td>13</td>
						<td>32.8</td>
						<td>(13.5)</td>
					</tr><tr>
						<td>2 = More False Than True (MF)</td>
						<td>24</td>
						<td>22.8</td>
						<td>(9.4)</td>
					</tr><tr>
						<td>3 = More True Than False (MT)</td>
						<td>22</td>
						<td>11.3</td>
						<td>(6.8)</td>
					</tr><tr>
						<td>4 = Strongly True (ST)</td>
						<td>11</td>
						<td>2.9</td>
						<td>(3.8)</td>
					</tr></tbody></table>
		<table class="chart" width="100%" style="background:#e7e7e7">
			<tbody><tr>
				<th colspan="20">&nbsp;</th>            
			</tr><tr>   
						<td style="background:#ebebeb; text-align:right; width:6%">1.</td>
						<td style="background:#fff; text-align:center">1</td>   
						<td style="background:#ebebeb; text-align:right; width:6%">8.</td>
						<td style="background:#fff; text-align:center">2</td>   
						<td style="background:#ebebeb; text-align:right; width:6%">15.</td>
						<td style="background:#fff; text-align:center">3</td>   
						<td style="background:#ebebeb; text-align:right; width:6%">22.</td>
						<td style="background:#fff; text-align:center">4</td>   
						<td style="background:#ebebeb; text-align:right; width:6%">29.</td>
						<td style="background:#fff; text-align:center">3</td>   
						<td style="background:#ebebeb; text-align:right; width:6%">36.</td>
						<td style="background:#fff; text-align:center">2</td>   
						<td style="background:#ebebeb; text-align:right; width:6%">43.</td>
						<td style="background:#fff; text-align:center">1</td>   
						<td style="background:#ebebeb; text-align:right; width:6%">50.</td>
						<td style="background:#fff; text-align:center">2</td>   
						<td style="background:#ebebeb; text-align:right; width:6%">57.</td>
						<td style="background:#fff; text-align:center">1</td>   
						<td style="background:#ebebeb; text-align:right; width:6%">64.</td>
						<td style="background:#fff; text-align:center">2</td></tr><tr>   
						<td style="background:#ebebeb; text-align:right; width:6%">2.</td>
						<td style="background:#fff; text-align:center">2</td>   
						<td style="background:#ebebeb; text-align:right; width:6%">9.</td>
						<td style="background:#fff; text-align:center">3</td>   
						<td style="background:#ebebeb; text-align:right; width:6%">16.</td>
						<td style="background:#fff; text-align:center">4</td>   
						<td style="background:#ebebeb; text-align:right; width:6%">23.</td>
						<td style="background:#fff; text-align:center">3</td>   
						<td style="background:#ebebeb; text-align:right; width:6%">30.</td>
						<td style="background:#fff; text-align:center">2</td>   
						<td style="background:#ebebeb; text-align:right; width:6%">37.</td>
						<td style="background:#fff; text-align:center">1</td>   
						<td style="background:#ebebeb; text-align:right; width:6%">44.</td>
						<td style="background:#fff; text-align:center">2</td>   
						<td style="background:#ebebeb; text-align:right; width:6%">51.</td>
						<td style="background:#fff; text-align:center">1</td>   
						<td style="background:#ebebeb; text-align:right; width:6%">58.</td>
						<td style="background:#fff; text-align:center">2</td>   
						<td style="background:#ebebeb; text-align:right; width:6%">65.</td>
						<td style="background:#fff; text-align:center">3</td></tr><tr>   
						<td style="background:#ebebeb; text-align:right; width:6%">3.</td>
						<td style="background:#fff; text-align:center">3</td>   
						<td style="background:#ebebeb; text-align:right; width:6%">10.</td>
						<td style="background:#fff; text-align:center">4</td>   
						<td style="background:#ebebeb; text-align:right; width:6%">17.</td>
						<td style="background:#fff; text-align:center">3</td>   
						<td style="background:#ebebeb; text-align:right; width:6%">24.</td>
						<td style="background:#fff; text-align:center">2</td>   
						<td style="background:#ebebeb; text-align:right; width:6%">31.</td>
						<td style="background:#fff; text-align:center">1</td>   
						<td style="background:#ebebeb; text-align:right; width:6%">38.</td>
						<td style="background:#fff; text-align:center">2</td>   
						<td style="background:#ebebeb; text-align:right; width:6%">45.</td>
						<td style="background:#fff; text-align:center">3</td>   
						<td style="background:#ebebeb; text-align:right; width:6%">52.</td>
						<td style="background:#fff; text-align:center">2</td>   
						<td style="background:#ebebeb; text-align:right; width:6%">59.</td>
						<td style="background:#fff; text-align:center">3</td>   
						<td style="background:#ebebeb; text-align:right; width:6%">66.</td>
						<td style="background:#fff; text-align:center">4</td></tr><tr>   
						<td style="background:#ebebeb; text-align:right; width:6%">4.</td>
						<td style="background:#fff; text-align:center">4</td>   
						<td style="background:#ebebeb; text-align:right; width:6%">11.</td>
						<td style="background:#fff; text-align:center">3</td>   
						<td style="background:#ebebeb; text-align:right; width:6%">18.</td>
						<td style="background:#fff; text-align:center">2</td>   
						<td style="background:#ebebeb; text-align:right; width:6%">25.</td>
						<td style="background:#fff; text-align:center">1</td>   
						<td style="background:#ebebeb; text-align:right; width:6%">32.</td>
						<td style="background:#fff; text-align:center">2</td>   
						<td style="background:#ebebeb; text-align:right; width:6%">39.</td>
						<td style="background:#fff; text-align:center">3</td>   
						<td style="background:#ebebeb; text-align:right; width:6%">46.</td>
						<td style="background:#fff; text-align:center">4</td>   
						<td style="background:#ebebeb; text-align:right; width:6%">53.</td>
						<td style="background:#fff; text-align:center">3</td>   
						<td style="background:#ebebeb; text-align:right; width:6%">60.</td>
						<td style="background:#fff; text-align:center">4</td>   
						<td style="background:#ebebeb; text-align:right; width:6%">67.</td>
						<td style="background:#fff; text-align:center">3</td></tr><tr>   
						<td style="background:#ebebeb; text-align:right; width:6%">5.</td>
						<td style="background:#fff; text-align:center">3</td>   
						<td style="background:#ebebeb; text-align:right; width:6%">12.</td>
						<td style="background:#fff; text-align:center">2</td>   
						<td style="background:#ebebeb; text-align:right; width:6%">19.</td>
						<td style="background:#fff; text-align:center">1</td>   
						<td style="background:#ebebeb; text-align:right; width:6%">26.</td>
						<td style="background:#fff; text-align:center">2</td>   
						<td style="background:#ebebeb; text-align:right; width:6%">33.</td>
						<td style="background:#fff; text-align:center">3</td>   
						<td style="background:#ebebeb; text-align:right; width:6%">40.</td>
						<td style="background:#fff; text-align:center">4</td>   
						<td style="background:#ebebeb; text-align:right; width:6%">47.</td>
						<td style="background:#fff; text-align:center">3</td>   
						<td style="background:#ebebeb; text-align:right; width:6%">54.</td>
						<td style="background:#fff; text-align:center">4</td>   
						<td style="background:#ebebeb; text-align:right; width:6%">61.</td>
						<td style="background:#fff; text-align:center">3</td>   
						<td style="background:#ebebeb; text-align:right; width:6%">68.</td>
						<td style="background:#fff; text-align:center">2</td></tr><tr>   
						<td style="background:#ebebeb; text-align:right; width:6%">6.</td>
						<td style="background:#fff; text-align:center">2</td>   
						<td style="background:#ebebeb; text-align:right; width:6%">13.</td>
						<td style="background:#fff; text-align:center">1</td>   
						<td style="background:#ebebeb; text-align:right; width:6%">20.</td>
						<td style="background:#fff; text-align:center">2</td>   
						<td style="background:#ebebeb; text-align:right; width:6%">27.</td>
						<td style="background:#fff; text-align:center">3</td>   
						<td style="background:#ebebeb; text-align:right; width:6%">34.</td>
						<td style="background:#fff; text-align:center">4</td>   
						<td style="background:#ebebeb; text-align:right; width:6%">41.</td>
						<td style="background:#fff; text-align:center">3</td>   
						<td style="background:#ebebeb; text-align:right; width:6%">48.</td>
						<td style="background:#fff; text-align:center">2</td>   
						<td style="background:#ebebeb; text-align:right; width:6%">55.</td>
						<td style="background:#fff; text-align:center">3</td>   
						<td style="background:#ebebeb; text-align:right; width:6%">62.</td>
						<td style="background:#fff; text-align:center">2</td>   
						<td style="background:#ebebeb; text-align:right; width:6%">69.</td>
						<td style="background:#fff; text-align:center">1</td></tr><tr>   
						<td style="background:#ebebeb; text-align:right; width:6%">7.</td>
						<td style="background:#fff; text-align:center">1</td>   
						<td style="background:#ebebeb; text-align:right; width:6%">14.</td>
						<td style="background:#fff; text-align:center">2</td>   
						<td style="background:#ebebeb; text-align:right; width:6%">21.</td>
						<td style="background:#fff; text-align:center">3</td>   
						<td style="background:#ebebeb; text-align:right; width:6%">28.</td>
						<td style="background:#fff; text-align:center">4</td>   
						<td style="background:#ebebeb; text-align:right; width:6%">35.</td>
						<td style="background:#fff; text-align:center">3</td>   
						<td style="background:#ebebeb; text-align:right; width:6%">42.</td>
						<td style="background:#fff; text-align:center">2</td>   
						<td style="background:#ebebeb; text-align:right; width:6%">49.</td>
						<td style="background:#fff; text-align:center">1</td>   
						<td style="background:#ebebeb; text-align:right; width:6%">56.</td>
						<td style="background:#fff; text-align:center">2</td>   
						<td style="background:#ebebeb; text-align:right; width:6%">63.</td>
						<td style="background:#fff; text-align:center">1</td>   
						<td style="background:#ebebeb; text-align:right; width:6%">70.</td>
						<td style="background:#fff; text-align:center">2</td></tr></tbody></table>    </div>
	<div id="PersonalityTraits" style="page-break-before: always;" class="chartw ui-tabs-panel ui-widget-content ui-corner-bottom ui-tabs-hide">					<!-- Begin Personality Traits -->
        <!--<div class="printable"><a href="http://coolidgetests.com/account/SCATI_resultsPrint.php?transaction_id=214" target="_blank"><img src="./Coolidge Tests _ Online Psychological Assessments_files/printer.png" border="0">  Print This Report</a></div>-->
        
         <div class="printable"><div style="float:right;margin-top:7px;"><form action="" name="download" method="post"> <input type="submit" name="download" value="Export to CSV"></form></div></div>
        
		<table class="chartlegend">
			<tbody><tr>
				<td>Patient Name: Jane Doe</td>
				<td style="width:25px"></td>
				<td>Test Name: The Short-Form of the Coolidge Axis II Inventory (SCATI)</td>
			</tr>
			<tr>
				<td>Gender: Female</td>
				<td style="width:50px"></td>
				<td>Test Date: May 27, 2015</td>
			</tr>
			<tr>
				<td>Patient Age: 36</td>
				<td style="width:25px"></td>
				<td>Data Provided By: self</td>
			</tr>
		</tbody></table>
		<table class="chart" width="1000" style="background:#e7e7e7;margin-top:10px;">
		<tbody><tr><th style="text-align:left;width:250px">Scale</th>
		<th style="text-align:left;width:150px">%tile</th>
		<th style="text-align:left;width:150px">TScore</th>
		<th style="text-align:right;width:50px">10</th>
		<th style="text-align:right;width:50px">20</th>
				<th style="text-align:right;width:50px">30</th>
				<th style="text-align:right;width:50px">40</th>
				<th style="text-align:right;width:50px">50</th>
				<th style="text-align:right;width:50px">60</th>
				<th style="text-align:right;width:50px">70</th>
				<th style="text-align:right;width:50px">80</th>
				<th style="text-align:right;width:50px">90</th>
				<th style="text-align:right;width:50px">100</th>
							</tr><tr class="">
								<td>Dependent</td>
								<td><span>99%</span></td>
								<td><span>89</span></td>
								<td colspan="10">
										<div class="graph" style="width:445px"></div>
									</td>
							</tr>
							<tr class="">
								<td>Sadistic</td>
								<td><span>99%</span></td>
								<td><span>80</span></td>
								<td colspan="10">
										<div class="graph" style="width:400px"></div>
									</td>
							</tr>
							<tr class="">
								<td>Self-Defeating</td>
								<td><span>99%</span></td>
								<td><span>73</span></td>
								<td colspan="10">
										<div class="graph" style="width:365px"></div>
									</td>
							</tr>
							<tr class="">
								<td>Schizoid</td>
								<td><span>97%</span></td>
								<td><span>69</span></td>
								<td colspan="10">
										<div class="graph" style="width:345px"></div>
									</td>
							</tr>
							<tr class="">
								<td>Passive-Aggressive</td>
								<td><span>96%</span></td>
								<td><span>68</span></td>
								<td colspan="10">
										<div class="graph" style="width:340px"></div>
									</td>
							</tr>
							<tr class="">
								<td>Borderline</td>
								<td><span>94%</span></td>
								<td><span>66</span></td>
								<td colspan="10">
										<div class="graph" style="width:330px"></div>
									</td>
							</tr>
							<tr class="">
								<td>Depressive</td>
								<td><span>89%</span></td>
								<td><span>62</span></td>
								<td colspan="10">
										<div class="graph" style="width:310px"></div>
									</td>
							</tr>
							<tr class="">
								<td>Avoidant</td>
								<td><span>84%</span></td>
								<td><span>60</span></td>
								<td colspan="10">
										<div class="graph" style="width:300px"></div>
									</td>
							</tr>
							<tr class="">
								<td>Schizotypal</td>
								<td><span>81%</span></td>
								<td><span>59</span></td>
								<td colspan="10">
										<div class="graph" style="width:295px"></div>
									</td>
							</tr>
							<tr class="">
								<td>Histrionic</td>
								<td><span>73%</span></td>
								<td><span>56</span></td>
								<td colspan="10">
										<div class="graph" style="width:280px"></div>
									</td>
							</tr>
							<tr class="">
								<td>Paranoid</td>
								<td><span>71%</span></td>
								<td><span>55</span></td>
								<td colspan="10">
										<div class="graph" style="width:275px"></div>
									</td>
							</tr>
							<tr class="">
								<td>Obsessive-Compulsive</td>
								<td><span>66%</span></td>
								<td><span>54</span></td>
								<td colspan="10">
										<div class="graph" style="width:270px"></div>
									</td>
							</tr>
							<tr class="">
								<td>Antisocial</td>
								<td><span>62%</span></td>
								<td><span>53</span></td>
								<td colspan="10">
										<div class="graph" style="width:265px"></div>
									</td>
							</tr>
							<tr class="">
								<td>Narcissistic</td>
								<td><span>29%</span></td>
								<td><span>44</span></td>
								<td colspan="10">
										<div class="graph" style="width:220px"></div>
									</td>
							</tr></tbody></table>	</div>
	<div id="explanations" style="page-break-before: always;" class="ui-tabs-panel ui-widget-content ui-corner-bottom">				<!-- Begin Explanations -->
		<!--<div class="printable"><a href="http://coolidgetests.com/account/resultsPrint.php?transaction_id=214" target="_blank"><img src="./Coolidge Tests _ Online Psychological Assessments_files/printer.png" border="0">  Print This Report</a></div>-->
		<div class="printable"><div style="float:right;margin-top:7px;"><form action="" name="download" method="post"> <input type="submit" name="download" value="Export to CSV"></form></div></div>
		
		<table class="chartlegend">
			<tbody><tr>
				<td>Patient Name: Jane Doe</td>
				<td style="width:25px"></td>
				<td>Test Name: The Short-Form of the Coolidge Axis II Inventory (SCATI)</td>
			</tr>
			<tr>
				<td>Gender: Female</td>
				<td style="width:50px"></td>
				<td>Test Date: May 27, 2015</td>
			</tr>
			<tr>
				<td>Patient Age: 36</td>
				<td style="width:25px"></td>
				<td>Data Provided By: self</td>
			</tr>
		</tbody></table><br><br><table class="explanations"><tbody><tr><th colspan="2" class="scale_row">Avoidant</th></tr><tr class="bordered"><td class="stronglytrue" width="18%"><span>strongly true</span></td><td>16.I am unwilling to get involved with people unless I am certain they will like me. </td></tr><tr><th colspan="2" class="scale_row">Borderline</th></tr><tr class="bordered"><td class="mostlytrue" width="18%"><span>mostly true</span></td><td>3.I am very afraid of being abandoned by someone.</td></tr><tr class="bordered"><td class="mostlytrue" width="18%"><span>mostly true</span></td><td>17.I tend to have intense but unstable relationships.</td></tr><tr class="bordered"><td class="mostlytrue" width="18%"><span>mostly true</span></td><td>45.I have been very impulsive in my spending money, sex, drug use, shoplifting, reckless driving, or binge eating. </td></tr><tr class="bordered"><td class="mostlytrue" width="18%"><span>mostly true</span></td><td>59.I have repeatedly made suicidal threats or gestures, or I have repeatedly hurt myself on purpose. </td></tr><tr><th colspan="2" class="scale_row">Dependent</th></tr><tr class="bordered"><td class="stronglytrue" width="18%"><span>strongly true</span></td><td>4.I have trouble making everyday decisions.</td></tr><tr class="bordered"><td class="stronglytrue" width="18%"><span>strongly true</span></td><td>46.I have trouble doing things on my own. </td></tr><tr class="bordered"><td class="stronglytrue" width="18%"><span>strongly true</span></td><td>60.I have done unpleasant or degrading things in order to get people to like me. </td></tr><tr><th colspan="2" class="scale_row">Depressive</th></tr><tr class="bordered"><td class="mostlytrue" width="18%"><span>mostly true</span></td><td>5.I usually feel gloomy, unhappy, joyless, or cheerless.</td></tr><tr class="bordered"><td class="mostlytrue" width="18%"><span>mostly true</span></td><td>33.I criticize myself or blame myself a lot.</td></tr><tr class="bordered"><td class="mostlytrue" width="18%"><span>mostly true</span></td><td>47.I worry a lot. </td></tr><tr class="bordered"><td class="mostlytrue" width="18%"><span>mostly true</span></td><td>61.I am negative, critical, or judgmental towards others. </td></tr><tr><th colspan="2" class="scale_row">Passive-Aggressive</th></tr><tr class="bordered"><td class="stronglytrue" width="18%"><span>strongly true</span></td><td>10.I tend to resist doing things that other people ask me to do.</td></tr><tr class="bordered"><td class="stronglytrue" width="18%"><span>strongly true</span></td><td>66.I am envious or resentful of people who are better off or have more than I have. </td></tr><tr><th colspan="2" class="scale_row">Sadistic</th></tr><tr class="bordered"><td class="mostlytrue" width="18%"><span>mostly true</span></td><td>11.I have been cruel or violent to show I am in charge in a relationship.</td></tr><tr class="bordered"><td class="mostlytrue" width="18%"><span>mostly true</span></td><td>39.I have used harsh treatment or severe discipline to control someone in my care.</td></tr><tr class="bordered"><td class="mostlytrue" width="18%"><span>mostly true</span></td><td>53.The suffering of humans or animals amuses me. </td></tr><tr class="bordered"><td class="mostlytrue" width="18%"><span>mostly true</span></td><td>67.I have told lies to harm or inflict pain on others. </td></tr><tr><th colspan="2" class="scale_row">Self-Defeating</th></tr><tr class="bordered"><td class="stronglytrue" width="18%"><span>strongly true</span></td><td>40.I usually feel bad or guilty when something good happens to me.</td></tr><tr class="bordered"><td class="stronglytrue" width="18%"><span>strongly true</span></td><td>54.I have a tendency to get people angry or upset at me and then I feel terrible or humiliated about it. </td></tr><tr><th colspan="2" class="scale_row">Schizoid</th></tr><tr class="bordered"><td class="stronglytrue" width="18%"><span>strongly true</span></td><td>28.I almost always prefer solitary (by myself) activities.</td></tr></tbody></table>	</div>	
</div>
<div class="lightbox-target" id="NF">
   <div style="color:#000;width:500px;padding:6px;background:#E6E6F0;font-size:13px;margin-left: auto;margin-right: auto;display: block;border: 4px solid white;box-shadow: 0px 0px 8px rgba(0,0,0,.3);border-radius:5px;"><b style="font-size:14px;">Norm Frequency:</b><br><br>How to detect tendencies of Denial or Malingering: Almost all of the 70 SCATI items are stated blatantly pathologically, i.e., endorsement of the item with a 3 or 4 is an endorsement of psychopathology. The column Norm Frequency is based on a normal sample of responding, thus, only 2.9 times (on average) did the normal sample answer (4) Strongly True, and only 11.3 times (on average) did the normal sample answer (3) More True than False. Therefore, the normal sample chose (3) or (4) a total of 14.2 times, which indicates even a normal sample will report some psychopathology.<br><br>

It may indicative of Denial if your patient (Patient heading) chose (3) or (4) well less than 14 times. It may also indicative of Denial if your patient chose (1) or (2) more than 55.6 times.<br><br>

In clinical practice, particularly in institutional settings, Denial is more common than Malingering. However, if your patient does have an exceptionally high total sum for (3) and (4) answers, e.g., well over 25 times answering (3) and (4) in total, then the patient may either have serious psychopathology, may be consciously or unconsciously exaggerating their psychopathology, and it could also represent a cry for help.<br><br>
</div>
   <a class="lightbox-close" href="#"></a>
</div>
<div class="lightbox-target" id="Patient">
<div style="color:#000;width:500px;padding:6px;background:#E6E6F0;font-size:13px;margin-left: auto;margin-right: auto;display: block;border: 4px solid white;box-shadow: 0px 0px 8px rgba(0,0,0,.3);border-radius:5px;">
<b style="font-size:14px;">Patient:</b><br>This table reports the frequency for which the Patient chose<br>(1) Strongly False<br>(2) More False than True<br>(3) More True than False, or<br>(4) Strongly True.<br><br>In the adjacent column(Norm Frequency), the frequencies are reported for a purportedly normal sample.  <br>(1) Strongly False<br>(2) More False than True<br>(3) More True than False, or<br>(4) Strongly True.
</div><a class="lightbox-close" href="#"></a>
</div>
<script type="text/javascript">
    $(function() {
        $("#tabs").tabs();
    });
    
   function save()
   {
     
   console.info('test');
   document.execCommand('SaveAs',true,'error_log');
   }
</script>
        
			
		<div class="push">&nbsp;</div>
	</div>

	<div class="footer">
		<div class="container">
			<div class="onethird">&nbsp;</div>
			<div class="onethird">&nbsp;</div>
			<div class="onethird">
				<!--<img class="hawd" src="http://178.62.94.173/web/imgs/hawd.png">-->
				<!--Website by <a href="http://www.highaltitudedesign.com">High Altitude Design</a>-->
			</div>
		</div>
	</div>




</asp:Content>
<asp:Content ID="Content10" ContentPlaceHolderID="price" runat="server">
</asp:Content>
