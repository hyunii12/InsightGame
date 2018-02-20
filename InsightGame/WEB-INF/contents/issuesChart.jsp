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
	<div id="div_gameIssuesRank_chart"  style="margin: 0 auto; width: 85%;">
		<script type="text/javascript">
		$(function(){
			var today = new Date();
            var dd = today.getDate();
            var mm = today.getMonth() + 01; //January is 0!
            var yyyy = today.getFullYear();

            var minusdd = today.getDate() - 01;

		    if (mm < 10) {
               mm = '0' + mm
            }

//             today = yyyy + '-' + mm + '-' + dd
//             yesterday = yyyy + '-' + mm + '-' + minusdd
          
				var today = new Date();
				var dd = today.getDate();
				var mm = today.getMonth() + 01; //January is 0!
				var yyyy = today.getFullYear();

				var minusdd = today.getDate() - 01;
				var minusdd2 = today.getDate() - 02;
				var minusdd3 = today.getDate() - 03;
				var minusdd4 = today.getDate() - 04;
				var minusdd5 = today.getDate() - 05;
				

				if (mm < 10) {
					mm = '0' + mm
				}

// 				today = yyyy + '-' + mm + '-' + dd
				yesterday = yyyy + '-' + mm + '-' + minusdd
				TDA = yyyy + '-' + mm + '-' + minusdd2
				TDA3 = yyyy + '-' + mm + '-' + minusdd3
				TDA4 = yyyy + '-' + mm + '-' + minusdd4
				TDA5 = yyyy + '-' + mm + '-' + minusdd5

			var chart = bb.generate({
				  data: {
					    x: "x",
					    columns: [
					    [ "x", TDA5,TDA4,TDA3,TDA,yesterday,today],
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
					});
			
				setTimeout(function() {
					chart.load({
						columns: [
							['data3', 400, 500, 450, 700, 600, 500]
						]
					});
				}, 1000);
			
		});
		</script>
		<div id="gameIssues_TimeseriesChart"></div>		
	</div>
</body>
</html>