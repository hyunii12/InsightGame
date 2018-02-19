<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<script src="//code.jquery.com/jquery-1.11.0.min.js"></script>
<script src="https://d3js.org/d3.v4.min.js"></script>
<script src="js/billboard.js"></script>
<link rel="stylesheet" href="css/billboard.css">
<script src="http://code.jquery.com/jquery-1.4.4.min.js"></script>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>StreamerIssuesRank</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script>
$(document).ready(
        function() {
		var chart = bb.generate({
			  data: {
			    columns: [
			    	["streamer1", 30, 200, 100, 400, 150, 250],
			    	["streamer2", 50, 20, 10, 40, 15, 25],
			    	["streamer3", 130, 220, 140, 200, 250, 450],
			    	["streamer4", 250, 320, 210, 240, 215, 225],
			    	["streamer5", 430, 500, 400, 280, 290, 350]
			    ],
			    type: "spline"
			  },
			  color: {
				    pattern: [
				      "#1f77b4",
				      "#aec7e8",
				      "#ff7f0e",
				      "#ffbb78",
				      "#2ca02c",
				      "#98df8a",
				      "#d62728",
				      "#ff9896",
				      "#9467bd",
				      "#c5b0d5",
				      "#8c564b",
				      "#c49c94",
				      "#e377c2",
				      "#f7b6d2",
				      "#7f7f7f",
				      "#c7c7c7",
				      "#bcbd22",
				      "#dbdb8d",
				      "#17becf",
				      "#9edae5"
				    ]
				  },
			  bindto: "#SplineChart"
			});
})
</script>

</head>
<body>
   <div id="SplineChart"></div>
</body>
</html>