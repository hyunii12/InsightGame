<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>게임이슈랭크</title>
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
			["key1", 80, 120, 150, 50 ],
			["key2", 50, 30, 200, 70],
			["key3", 100, 100, 200, 70],
			["key4", 100, 200, 310, 200, 100, 125],
			["key5", 50, 90, 200, 10, 80, 120],
			["key6", 90, 100, 200, 300]
		    ],
		    groups: [
		      [
		    	  "key1",
		    	  "key2",
		    	  "key3",
		    	  "key4",
		    	  "key5",
		    	  "key6"
		    	  
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