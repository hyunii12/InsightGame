<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>스트리머레이더차트</title>
<script src='https://code.jquery.com/jquery-1.9.1.min.js'></script>
<script src='js/Chart.bundle.js'></script>
<script src='js/utils.js'></script>
<script type="text/javascript">
$(document).ready(function() {
	
	 var ctx = $("#myChart").get(0).getContext("2d");
	 new Chart(ctx).Radar(data);
	
	var myRadarChart = new Chart(ctx, {
	    type: 'radar',
	    data: data,
	    options: options
	});
	
 var data = {
  labels : ["Eating", "Drinking", "Sleeping", "Designing", "Coding", "Partying", "Running"],
  datasets : [{
   fillColor : "rgba(220,220,220,0.5)",
   strokeColor : "rgba(220,220,220,1)",
   pointColor : "rgba(220,220,220,1)",
   pointStrokeColor : "#fff",
   data : [65, 59, 90, 81, 56, 55, 40]
  }, {
   fillColor : "rgba(151,187,205,0.5)",
   strokeColor : "rgba(151,187,205,1)",
   pointColor : "rgba(151,187,205,1)",
   pointStrokeColor : "#fff",
   data : [28, 48, 40, 19, 96, 27, 100]
  }]
 };
 

 
});

  
    </script>
</head>
<body>

<div>
<canvas id="myChart" width="400" height="400"></canvas>
</div>

</body>

</html>