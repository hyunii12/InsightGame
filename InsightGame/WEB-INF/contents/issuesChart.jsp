<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
	<title>Game Issue Rank</title>
</head>
<body>
	<div id="div_gameIssuesRank_chart"  style="width: 940px">
		<script type="text/javascript">
		$(function(){
			
		});
		var dd = {
			  data: {
			    x: "x",
			    columns: [
				["x", "2013-01-01", "2013-01-02", "2013-01-03", "2013-01-04", "2013-01-05", "2013-01-06"],
				["data1", 30, 200, 100, 400, 150, 250],
				["data2", 130, 340, 200, 500, 250, 350]
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
			  bindto: "#gameIssues_TimeseriesChart"
			}
		var chart = bb.generate(dd);
		
			setTimeout(function() {
				chart.load({
					columns: [
						['data3', 400, 500, 450, 700, 600, 500]
					]
				});
			}, 1000);
		</script>
		<div id="gameIssues_TimeseriesChart"></div>		
	</div>
</body>
</html>