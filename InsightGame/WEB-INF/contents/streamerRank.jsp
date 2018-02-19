<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<script src="http://code.jquery.com/jquery-1.4.4.min.js"></script>
<script src="https://canvasjs.com/assets/script/canvasjs.min.js"></script>
<style type="text/css">

#chartContainer1 {

}
#chartContainer2 {

}
#chartContainer3 {

}
#chartContainer4 {

}

</style>
<head>

<script>
$(document).ready(function(){
	
var chart1 = new CanvasJS.Chart("chartContainer1", {
	animationEnabled: true,
	title:{
		text: "¿ó_°ÔÀÓ¹æ¼Û",
		verticalAlign: "center",
		dockInsidePlotArea: true
	},
	data: [{
		type: "doughnut",
		startAngle: 60,
		indexLabelFontSize: 16,
		indexLabel: "{label} - #percent%",
		toolTipContent: "<b>{label}:</b> {y} (#percent%)",
		dataPoints: [
			{ y: ${wooptime[0]}, label: "${woopname[0]}" },
			{ y: ${wooptime[1]}, label: "${woopname[1]}" },
			{ y: ${wooptime[2]}, label: "${woopname[2]}" },
			{ y: ${wooptime[2]}, label: "${woopname[3]}" }
		]
	}]
});


var chart2 = new CanvasJS.Chart("chartContainer2",
		{
	animationEnabled: true,
	title:{
		text: "Ç³¿ù·®",
		verticalAlign: "center",
		dockInsidePlotArea: true
	},
	data: [{
		type: "doughnut",
		startAngle: 60,
		indexLabelFontSize: 16,
		indexLabel: "{label} - #percent%",
		toolTipContent: "<b>{label}:</b> {y} (#percent%)",
		dataPoints: [
			{ y: ${pungtime[0]}, label: "${pungname[0]}" },
			{ y: ${pungtime[1]}, label: "${pungname[1]}" }			
						
		]
	}]
	    });

var chart3 = new CanvasJS.Chart("chartContainer3",
		{
	animationEnabled: true,
	title:{
		text: "¼­»õº½³É",
		verticalAlign: "center",
		dockInsidePlotArea: true
	},
	data: [{
		type: "doughnut",
		startAngle: 60,
		indexLabelFontSize: 16,
		indexLabel: "{label} - #percent%",
		toolTipContent: "<b>{label}:</b> {y} (#percent%)",
		dataPoints: [
			{ y: ${seotime[0]}, label: "${seoname[0]}" },
			{ y: ${seotime[1]}, label: "${seoname[1]}" }			
						
		]
	}]
	    });

var chart4 = new CanvasJS.Chart("chartContainer4",
		{
	animationEnabled: true,
	title:{
		text: "±èµµ",
		verticalAlign: "center",
		dockInsidePlotArea: true
	},
	data: [{
		type: "doughnut",
		startAngle: 60,
		indexLabelFontSize: 16,
		indexLabel: "{label} - #percent%",
		toolTipContent: "<b>{label}:</b> {y} (#percent%)",
		dataPoints: [
			{ y: ${kimtime[0]}, label: "${kimname[0]}"},
			{ y: ${kimtime[1]}, label: "${kimname[1]}"},
			{ y: ${kimtime[2]}, label: "${kimname[2]}"},
			{ y: ${kimtime[3]}, label: "${kimname[3]}"}
										
		]
	}]
	    });

chart1.render();
chart2.render();
chart3.render();
chart4.render();

// var sum = 0;
// for( var i = 0; i < chart1.options.data[0].dataPoints.length; i++ ) {
//     sum += chart1.options.data[0].dataPoints[i].y;
   
// }

// $("#sum" ).innerhtml( "Total: " + sum );

});
</script>
</head>
<body>

		<div id="chartContainer1" style="height: 370px;	width: 400px; display: inline-block;"></div>
		<div id="chartContainer2" style="height: 370px;	width: 400px; display: inline-block;"></div>
		<div id="chartContainer3" style="height: 370px;	width: 400px; display: inline-block;"></div>
		<div id="chartContainer4" style="height: 370px;	width: 400px; display: inline-block;"></div>

</body>
</html>