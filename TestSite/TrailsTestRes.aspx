﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TrailsTestRes.aspx.cs" Inherits="TestSite.TrailsTestRes" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">
    <title></title>
    <style>
        #chartdiv {
            width: 100%;
            height: 500px;
            font-size: 11px;
        }
    </style>
        <script src="js/jquery.js"></script>
    <script src="js/sessionManager.js"></script>
</head>
<script type="text/javascript" src="https://www.amcharts.com/lib/3/amcharts.js"></script>
<script type="text/javascript" src="https://www.amcharts.com/lib/3/serial.js"></script>
<script type="text/javascript" src="https://www.amcharts.com/lib/3/themes/light.js"></script>

<body>
    <form id="form1" runat="server">
        <div>
            <div id="chartdiv"></div>
        </div>
    </form>
</body>
</html>
<script>
  
    //----------------------------------------------------------------------------------------------
    // Calculates a point Z(x), the Probability Density Function, on any normal curve. 
    // This is the height of the point ON the normal curve.
    // For values on the Standard Normal Curve, call with Mean = 0, StdDev = 1.
    function NormalDensityZx( x, Mean, StdDev ) {
        var a = x - Mean;
        return Math.exp( -( a * a ) / ( 2 * StdDev * StdDev ) ) / ( Math.sqrt( 2 * Math.PI ) * StdDev );
    }
    //----------------------------------------------------------------------------------------------
    // Calculates Q(x), the right tail area under the Standard Normal Curve. 
    function StandardNormalQx( x ) {
        if ( x === 0 ) // no approximation necessary for 0
            return 0.50;

        var t1, t2, t3, t4, t5, qx;
        var negative = false;
        if ( x < 0 ) {
            x = -x;
            negative = true;
        }
        t1 = 1 / ( 1 + ( 0.2316419 * x ) );
        t2 = t1 * t1;
        t3 = t2 * t1;
        t4 = t3 * t1;
        t5 = t4 * t1;
        qx = NormalDensityZx( x, 3.8, 1.9 ) * ( ( 0.319381530 * t1 ) + ( -0.356563782 * t2 ) +
          ( 1.781477937 * t3 ) + ( -1.821255978 * t4 ) + ( 1.330274429 * t5 ) );
        if ( negative == true )
            qx = 1 - qx;
        return qx;
    }
    //----------------------------------------------------------------------------------------------
    // Calculates P(x), the left tail area under the Standard Normal Curve, which is 1 - Q(x). 
    function StandardNormalPx( x ) {
        return 1 - StandardNormalQx( x );
    }
    //----------------------------------------------------------------------------------------------
    // Calculates A(x), the area under the Standard Normal Curve between +x and -x. 
    function StandardNormalAx( x ) {
        return 1 - ( 2 * StandardNormalQx( Math.abs( x ) ) );
    }
    //----------------------------------------------------------------------------------------------

    /**
     * Define values where to put vertical lines at
     */
    var verticals = [
       3
    ];

    /**
     * Calculate data
     */
    var chartData = [];
    var min=-4;
    var max =10;
    for ( var i = min; i < max+ 0.1; i +=0.2 ) {
        var dp = {
            category: i,
            value: NormalDensityZx( i, 3.8, 1.9 )
        };
        if ( verticals.indexOf( Math.round( i * 10 ) / 10 ) !== -1 ) {
            dp.vertical = dp.value;
        }
        chartData.push( dp );
    }

    /**
     * Create a chart
     */
    var chart = AmCharts.makeChart( "chartdiv", {
        "type": "serial",
        "theme": "light",
        "dataProvider": chartData,
        "precision": 2,
        "valueAxes": [ {
            "gridAlpha": 0.2,//line thickness
            "dashLength": 0 // really, dash length
        } ],
        "startDuration": 1, //animation time
        "graphs": [ {
            "balloonText": "[[category]]: <b>[[value]]</b>",
            "lineThickness": 3,
            "valueField": "value"
        }, {
            "balloonText": "your score",
            "fillAlphas": 10,
            "type": "column",
            "valueField": "vertical",
            "fixedColumnWidth": 2,
            "labelText": "[[value]]",//value of the point on top
            "labelOffset": 20
        } ],
        "chartCursor": {
            "categoryBalloonEnabled": false,
            "cursorAlpha": 0,
            "zoomable": false
        },
        "categoryField": "category",
        "categoryAxis": {
            "gridAlpha": 0.05,
            "startOnAxis": true,
            "tickLength": 5,
            "labelFunction": function( label, item ) {
                return '' + Math.round( item.dataContext.category * 10 ) / 10;
            }
        }

    } );
</script>