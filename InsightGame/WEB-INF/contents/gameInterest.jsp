<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<script src="https://d3js.org/d3.v4.min.js"></script>
<script src="js/billboard.js"></script>
<link rel="stylesheet" href="css/billboard.css">
<script src="http://code.jquery.com/jquery-1.4.4.min.js"></script>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title></title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script>
	$(document).ready(
			function() {

				var game = "${game}"
				var OverwatchView = "${OverwatchView}"
							
				var OverwatchView2=JSON.parse(OverwatchView);
 				alert(OverwatchView2)
 				
				var OverwatchView3=JSON.stringify(OverwatchView2)
			
				
				var chart = bb.generate({
					data : {
						x : "x",
						columns : [
						// 		["x", "2013-01-01", "2013-01-02", "2013-01-03", "2013-01-04", "2013-01-05", "2013-01-06"],
								[ "x", "2018-02-08", "2018-02-09","2018-02-10" ],
								[ "Overwatch", OverwatchView2],
 								[ "data2", 130, 340,500] ]
					},
					axis : {
						x : {
							type : "timeseries",
							tick : {
								format : "%Y-%m-%d"
							}
						}
					},
					bindto : "#TimeseriesChart"
				});

			});
</script>

</head>
<body>
	<div id="TimeseriesChart"></div>
</body>
</html>