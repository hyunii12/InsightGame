<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insight Game</title>
<!-- Bootstrap core CSS -->
<link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

<!-- Custom fonts for this template -->
<link href="vendor/font-awesome/css/font-awesome.min.css"
	rel="stylesheet" type="text/css">
<link href="https://fonts.googleapis.com/css?family=Montserrat:400,700"
	rel="stylesheet" type="text/css">
<link
	href="https://fonts.googleapis.com/css?family=Lato:400,700,400italic,700italic"
	rel="stylesheet" type="text/css">

<!-- Plugin CSS -->
<link href="vendor/magnific-popup/magnific-popup.css" rel="stylesheet"
	type="text/css">

<!-- Custom styles for this template -->
<link href="css/freelancer.min.css" rel="stylesheet">
</head>
<body>

        <div id="navigation" style="z-index: 2;">
            <jsp:include page="../navigation.jsp" />
        </div>


        <div class="container" style="margin-top: 15%; width:77%;">
<!-- 			<script src="js/board.js"></script> -->
<<<<<<< HEAD
			<script src="js/board.js?v=1111asd22JF12j"></script>
=======

			<script src="js/board.js?v=asdf11231s12j"></script>
>>>>>>> branch 'master' of https://github.com/hyunii12/InsightGame.git
			<style>
				#div_write{margin-left:20px;margin-right:20px}
			</style>
        	<div id="div_write">
				<jsp:include page="../board/boradWrite.jsp" />    	
        	</div>
        	<button class="btn btn-outline-secondary my-2 my-sm-0" onclick="location.reload()"><img style="size: 0.5em" src="img/refresh-arrow.png"></button>
        	<div id="div_boardList" style="text-align: center; margin-top: 3%;">
	        	<jsp:include page="../board/boardList.jsp" />
        	</div>
        </div>


</body>
</html>