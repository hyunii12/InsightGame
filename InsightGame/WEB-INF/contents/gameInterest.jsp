<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>게임 인기 변화도</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.2.1.min.js"
	integrity="sha256-hwg4gsxgFZhOsEEamdOYGBf13FyQuiTwlAQgxVSNgt4="
	crossorigin="anonymous"></script>

<!-- Load D3.js -->
<script src="https://d3js.org/d3.v4.min.js"></script>

<!-- Load billboard.js with style -->
<script src="js/billboard.js" charset="UTF-8"></script>
<script>
	window.onload = function() {
		
		var chart = bb.generate({
			  data: {
			    x: "x",
			    columns: [
				["x", "2017-09-01", "2017-10-01", "2017-11-01", "2017-12-01", "2018-01-01", "2018-02-01"],
				["game1", 30, 200, 100, 400, 150, 250],
				["game2", 50, 20, 10, 40, 15, 25],
				["game3", 130, 220, 140, 200, 250, 450],
				["game4", 250, 320, 210, 240, 215, 225],
				["game5", 430, 500, 400, 280, 290, 350],
				["game6", 100, 120, 310, 340, 415, 225]
			    ]
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
			  axis: {
			    x: {
			      type: "timeseries",
			      tick: {
			        format: "%Y-%m-%d"
			      }
			    }
			  },
			  bindto: "#TimeseriesChart"
			});

		
	}
</script>
<link rel="stylesheet" href="css/billboard.css">
</head>
<body>
	<div id="TimeseriesChart"></div>
</body>
</html>