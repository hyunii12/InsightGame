<%@ page language="java" contentType="text/html; charset=EUC-KR"
<<<<<<< HEAD
	pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
=======
    pageEncoding="EUC-KR"%>
<script src="//code.jquery.com/jquery-1.11.0.min.js"></script>
<script src="https://d3js.org/d3.v4.min.js"></script>
<script src="js/billboard.js"></script>
<link rel="stylesheet" href="css/billboard.css">
<script src="http://code.jquery.com/jquery-1.4.4.min.js"></script>
>>>>>>> branch 'master' of https://github.com/hyunii12/InsightGame.git
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<script src='js/jquery.min.js'></script>
<script src="https://d3js.org/d3.v4.min.js"></script>
<script src="js/billboard.js"></script>
<link rel="stylesheet" href="css/billboard.css">
<title>스트리머 팔로워</title>
<script>
	$(document).ready(
			function() {
				
				var str_followers_num0 = "${streamerfow[0].str_followers_num}"
				var str_followers_num1 = "${streamerfow[1].str_followers_num}"
						    
				var chart = bb.generate({
					  data: {
					    x: "x",
					    columns: [
						["x", "2018-02-19","2018-02-20"],
						["Number of Follower", str_followers_num0, str_followers_num1]						
					    ],
					    type: "bar"
					  },
					  axis: {
					    x: {
					      type: "category",
					      tick: {
					        rotate: 0,
					        multiline: false
					      },
					      height: 40
					    }
					  },
					  bindto: "#RotateXAxisTickText"
					});				
			});		
</script>
</head>
<body>

	<div id="RotateXAxisTickText"></div>

</body>
</html>