<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>스트리머레이더차트</title>
<script src='js/jquery.min.js'></script>
<script src='js/Chart.bundle.js'></script>
<script src='js/utils.js'></script>
</head>

<body>
	<div style="margin: 0 auto;">
		<canvas id="radar" width="400" height="400"></canvas></div>
		<script>
			var randomScalingFactor = function() {
				return Math.round(Math.random() * 100);
			};
			var color = Chart.helpers.color;
			var config = {
				type : 'radar',
				data : {
					labels : [ "Most Wathcher", "Most Followers", "Fast Growing", "Highest Peak Viewership", "Most Popular", "Keyword", "Trending" ],
					datasets : [ {
						label : "Streamer1",
						backgroundColor : color(window.chartColors.red).alpha(0.2).rgbString(),
						borderColor : window.chartColors.red,
						pointBackgroundColor : window.chartColors.red,
						data : [
							randomScalingFactor(),
							randomScalingFactor(),
							randomScalingFactor(),
							randomScalingFactor(),
							randomScalingFactor(),
							randomScalingFactor(),
							randomScalingFactor()
						]
					}, {
						label : "Streamer2",
						backgroundColor : color(window.chartColors.blue).alpha(0.2).rgbString(),
						borderColor : window.chartColors.blue,
						pointBackgroundColor : window.chartColors.blue,
						data : [
							randomScalingFactor(),
							randomScalingFactor(),
							randomScalingFactor(),
							randomScalingFactor(),
							randomScalingFactor(),
							randomScalingFactor(),
							randomScalingFactor()
						]
					}, {
						label : "Streamer3",
						backgroundColor : color(window.chartColors.yellow).alpha(0.2).rgbString(),
						borderColor : window.chartColors.yellow,
						pointBackgroundColor : window.chartColors.yellow,
						data : [
							randomScalingFactor(),
							randomScalingFactor(),
							randomScalingFactor(),
							randomScalingFactor(),
							randomScalingFactor(),
							randomScalingFactor(),
							randomScalingFactor()
						]
					}
					
					
					]
				},
				options : {
					legend : {
						position : 'top',
					},
					title : {
						display : true,
						text : 'Streamer Radar Chart'
					},
					scale : {
						ticks : {
							beginAtZero : true
						}
					}
				}
			};
		
// 			window.onload = function() {
// 				window.myRadar = new Chart(document.getElementById("radar"), config);
// 			};
		</script>
</body>
</html>