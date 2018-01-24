<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<!-- Plugin jQuery&Bootstrap.js -->
<script src="https://code.jquery.com/jquery-3.2.1.min.js"
	integrity="sha256-hwg4gsxgFZhOsEEamdOYGBf13FyQuiTwlAQgxVSNgt4="
	crossorigin="anonymous"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
	integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
	crossorigin="anonymous"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.3/js/bootstrap.min.js"
	integrity="sha384-a5N7Y/aK3qNeh15eJKGWxsqtnX/wWdSZSKp+81YjTmS15nvnvxKHuzaWwXHDli+4"
	crossorigin="anonymous"></script>
	
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
<script type="text/javascript">
function setSearchHeader(data){
	$('input[name="searchSelect"]').attr('value', data);
	if(data === 'game')
		$('#navSearchFrm').attr('action', 'searchGame.do')
		$('#searchSelectBtn').html('게임&nbsp;');
	if(data === 'streamer')
		$('#navSearchFrm').attr('action', 'searchStreamer.do')
		$('#searchSelectBtn').html('스트리머&nbsp;');
	
}

</script>
</head>
<body>
	<nav class="navbar navbar-expand-lg bg-secondary fixed-top text-uppercase" id="mainNav" style="padding-bottom: 1.5%; z-index: 4; position: fixed; overflow: hidden; ">
	<div class="container">
		<a class="navbar-brand js-scroll-trigger" href="main.do">Insight
			Game</a>
		<div id="navbarResponsive">
			<ul class="navbar-nav ml-auto ">
				<li>
					<form class="form-inline" role="search" id="navSearchFrm"
						method="get" action="searchGame.do" style="margin: 0 auto;">
<!-- 						<select name="searchSelect" id="searchSelect" -->
<!-- 							class="form-control mr-sm-2"> -->
<!-- 							<option value="game" style="color: black;">게임</option> -->
<!-- 							<option value="streamer" style="color: black;">스트리머</option> -->
<!-- 						</select> -->

						<input type="hidden" name="searchSelect">
						<div class="input-group-prepend" id="headerDropbox">
						    <button id="searchSelectBtn" class="btn btn-secondary dropdown-toggle" type="button" 
						    data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">게임&nbsp;</button>
						    <div class="dropdown-menu">
						      <button class="dropdown-item" type="button" value="game" onclick='setSearchHeader($(this).val())'>게임</button>
						      <button class="dropdown-item" type="button" value="streamer" onclick='setSearchHeader($(this).val())'>스트리머</button>
						    </div>
						</div>
						
						<input class="form-control mr-sm-2" type="text"
							style="width: 250px; border: 0; margin: 0 auto;"
							placeholder="Search" name="search">
						<button class="btn btn-outline-success my-2 my-sm-0" type="submit"
							style="margin-right: 55px;">
							<img src="img/search.png">
						</button>
					</form>
				</li>
			</ul>
		</div>
		<div id="navbarResponsive">
			<ul class="navbar-nav ml-auto">
				<li class="nav-item mx-0 mx-lg-1"><a href="loginForm.do"><img
						src="img/login.png"></a></li>

			</ul>
		</div>
	</div>
	</nav>

	<div>
		<div class="bg-secondary"
			style="position: fixed; left: 0px; top: 100px; width: 100%; padding-left: 22%; padding-bottom: 1%; z-index: 5;">
			<a class="navbar-brand js-scroll-trigger" href="InsightGame.do"
				style="color: white; font-weight: bold;">게임</a>
		</div>
		<div style="position: fixed; right: 45%; top: 100px; z-index: 6;">
			<a class="navbar-brand js-scroll-trigger" href="InsightStreamer.do"
				style="color: white; font-weight: bold;">스트리머</a>
		</div>
		<div style="position: fixed; left: 73%; top: 100px; z-index: 7;">
			<a class="navbar-brand js-scroll-trigger" href="board.do"
				style="color: white; font-weight: bold;">게시판</a>
		</div>
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