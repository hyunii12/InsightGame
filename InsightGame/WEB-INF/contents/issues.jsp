<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
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
		    type: "bar",
		    columns: [
			["data1", 120, 200, 300, 100, 150, 250],
			["data2", 50, 29, 17, 40, 15, 25],
			["data3", 100, 320, 210, 340, 215, 125]
		    ],
		    groups: [
		      [
		        "data1",
		        "data2",
		        "data3"
		      ]
		    ],
		    order: "asc"
		  },
		  tooltip: {
		    order: "desc"
		  },
		  bindto: "#TooltipOrder"
		});
	
}
</script>
<link rel="stylesheet" href="css/billboard.css">
</head>
<body>
<div id="TooltipOrder"></div>
</body>
</html>