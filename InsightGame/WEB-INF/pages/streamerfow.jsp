<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<script src="//code.jquery.com/jquery-1.11.0.min.js"></script>
<script src="https://d3js.org/d3.v4.min.js"></script>
<script src="js/billboard.js"></script>
<link rel="stylesheet" href="css/billboard.css">
<script src="http://code.jquery.com/jquery-1.4.4.min.js"></script>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>스트리머 팔로워</title>
<script>

$(document).ready(
		function() {
			
			var chart = bb.generate({
				  data: {
				    columns: [
					["data1", 30, 200, 100, 400, 150, 250],
					["data2", 130, 100, 140, 200, 150, 50]
				    ],
				    type: "bar"
				  },
				  bar: {
				    width: {
				      ratio: 0.5
				    }
				  },
				  bindto: "#BarChart"
				});
			
			
		}
		)
</script>
</head>
<body>
${streamerfow[0].str_name}

${streamerfow[0].str_followers_num}
${streamerfow[1].str_date}



<div id="BarChart"></div>
</body>
</html>