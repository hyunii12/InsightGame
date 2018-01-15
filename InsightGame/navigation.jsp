<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
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
	<div>
	
	<nav class="navbar navbar-expand-lg bg-secondary fixed-top text-uppercase" id="mainNav" style="padding-bottom: 45px; z-index: 1;">
		<div class="container">
		<a class="navbar-brand js-scroll-trigger" href="main.do">Insight Game</a>
		<button
			class="navbar-toggler navbar-toggler-right text-uppercase bg-primary text-white rounded"
			type="button" data-toggle="collapse" data-target="#navbarResponsive"
			aria-controls="navbarResponsive" aria-expanded="false"
			aria-label="Toggle navigation">
			Menu <i class="fa fa-bars"></i>
		</button>
		<div id="navbarResponsive" style="margin: 0 auto;">
			<ul class="navbar-nav ml-auto">
				<li>
					<form class="form-inline" role="search" id="header_search"
						method="get" action=SearchedRestaurantsServlet
						style="margin: 0 auto;">
						<input class="form-control mr-sm-2" type="text"
							style="width: 250px;" placeholder="Search" name="m.mName">
						<button class="btn btn-outline-success my-2 my-sm-0" type="submit">검색</button>
					</form>
				</li>
			</ul>
		</div>
		<div id="navbarResponsive">
			<ul class="navbar-nav ml-auto">
				<li class="nav-item mx-0 mx-lg-1"><a
					class="nav-link py-3 px-0 px-lg-3 rounded js-scroll-trigger"
					href="login.do">로그인</a></li>
			</ul>
		</div>
		</nav>
	</div>
	<div>
		<div class="bg-secondary" style="position: fixed; left: 0px; top: 100px; width: 100%; padding-left: 22%; padding-bottom: 15px; z-index: 2;">
				<a class="nav-link py-3 px-0 px-lg-3 rounded js-scroll-trigger"
					href="login.do">게임</a></div>
			<div style="position: fixed; right: 46%; top: 100px; z-index: 3;">
			<a class="nav-link py-3 px-0 px-lg-3 rounded js-scroll-trigger"
					href="login.do">스트리머</a></div>
			<div style="position: fixed; left: 71%; top: 100px; z-index: 4;">
			<a class="nav-link py-3 px-0 px-lg-3 rounded js-scroll-trigger"
					href="login.do">게시판</a></div>

	</div>
	
 <!-- Navigation --> 


	<!-- 	<div class="navigation"> -->
	<!-- 		<table> -->
	<!-- 			<tr> -->
	<!-- 				<td width="400px" height="50px" align="center" bgcolor="grey"> -->
	<!-- 					<a href="main.do">main.jsp</a> -->
	<!-- 				</td> -->
	<!-- 				<td width="400px" height="50px" align="center" bgcolor="grey"> -->
	<!-- 					<a href="searchGame.do">searchGame</a><br> <a -->
	<!-- 					href="searchStreamer.do">searchStreamer</a> -->
	<!-- 				</td> -->
	<!-- 				<td width="400px" height="50px" align="center" bgcolor="grey"> -->
	<!-- 					<a href="login.do">login.jsp</a> -->
	<!-- 				</td> -->
	<!-- 			</tr> -->
	<!-- 			<tr> -->
	<!-- 				<td width="400px" height="50px" align="center" bgcolor="grey"> -->
	<!-- 					<a href="InsightGame.do">game.jsp</a> -->
	<!-- 				</td> -->
	<!-- 				<td width="400px" height="50px" align="center" bgcolor="grey"> -->
	<!-- 					<a href="InsightStreamer.do">streamer.jsp</a> -->
	<!-- 				</td> -->
	<!-- 				<td width="400px" height="50px" align="center" bgcolor="grey"> -->
	<!-- 					<a href="board.do">board.jsp</a> -->
	<!-- 				</td> -->
	<!-- 			</tr> -->
	<!-- 		</table> -->
	<!-- 	</div> -->
</body>
</html>