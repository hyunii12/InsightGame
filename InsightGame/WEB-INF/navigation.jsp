<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<!-- Plugin jQuery&Bootstrap.js -->
<script src="https://code.jquery.com/jquery-3.2.1.min.js"
	integrity="sha256-hwg4gsxgFZhOsEEamdOYGBf13FyQuiTwlAQgxVSNgt4="
	crossorigin="anonymous"></script>
<script	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
	integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
	crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.3/js/bootstrap.min.js"
	integrity="sha384-a5N7Y/aK3qNeh15eJKGWxsqtnX/wWdSZSKp+81YjTmS15nvnvxKHuzaWwXHDli+4"
	crossorigin="anonymous"></script>
	
<!-- Bootstrap core CSS -->
<link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

<!-- Custom fonts for this template -->
<link href="vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
<link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css">
<link
	href="https://fonts.googleapis.com/css?family=Lato:400,700,400italic,700italic"	rel="stylesheet" type="text/css">

<!-- Plugin CSS -->
<link href="vendor/magnific-popup/magnific-popup.css" rel="stylesheet" type="text/css">

<!-- Custom styles for this template -->
<link href="css/freelancer.min.css" rel="stylesheet">

<script type="text/javascript">
	function setSearchHeader(data) {
		$('input[name="searchSelect"]').attr('value', data);
		if (data === 'game') {
			$('#navSearchFrm').attr('action', 'searchGame.do')
			$('#searchSelectBtn').html('게임　 　');
		}
		if (data === 'streamer') {
			$('#navSearchFrm').attr('action', 'searchStreamer.do')
			$('#searchSelectBtn').html('스트리머 ');
		}

	}
</script>

<!-- Load D3.js -->
<script src="https://d3js.org/d3.v4.min.js"></script>

<!-- Load billboard.js with style -->
<script src="js/billboard.js" charset="UTF-8"></script>

<link rel="stylesheet" href="css/billboard.css">

<link href='css/fullcalendar.min.css' rel='stylesheet' />
<link href='css/fullcalendar.print.min.css' rel='stylesheet' media='print' />
<script src='js/moment.min.js'></script>
<script src='js/jquery.min.js'></script>
<script src='js/fullcalendar.min.js'></script>

</head>
<body>
	<nav class="navbar navbar-expand-lg bg-secondary fixed-top text-uppercase"
		id="mainNav" style="padding-bottom: 1.5%; ">
	<div class="container">
		<a class="navbar-brand js-scroll-trigger" href="main.do">Insight
			Game</a>
		<div id="navbarResponsive" style="margin-right: 18.3%">
			<ul class="navbar-nav ml-auto ">
				<li>
					<form class="form-inline" role="search" id="navSearchFrm"
						method="get" action="searchGame.do" style="margin: 0 auto;">
						<input type="hidden" name="searchSelect">
						<div class="input-group-prepend" id="headerDropbox"
							style="position: relative;">
							<button id="searchSelectBtn"
								class="btn btn-secondary dropdown-toggle" type="button"
								data-toggle="dropdown" aria-haspopup="true"
								aria-expanded="false" style="width: 118px;">게임　 　</button>
							<div class="dropdown-menu" style="z-index: 1053;">
								<button class="dropdown-item" type="button" value="game"
									onclick='setSearchHeader($(this).val())'>게임</button>
								<button class="dropdown-item" type="button" value="streamer"
									onclick='setSearchHeader($(this).val())'>스트리머</button>
							</div>
						</div>
						<input class="form-control mr-sm-2" type="text"
							style="width: 247px; border: 0; margin-left: 3px"
							placeholder="Search" name="search">
						<button class="btn btn-outline-success my-2 my-sm-0" type="submit">
							<img src="img/search.png">
						</button>
					</form>
				</li>
			</ul>
		</div>

	<% String id= (String)session.getAttribute("user_id"); %>	
	
	<% if (id == null) { %>
				<div id="navbarResponsive">
					<ul class="navbar-nav ml-auto">
						<li class="nav-item mx-0 mx-lg-1"><a href="loginForm.do"><img
								src="img/login.png"></a></li>
					</ul>
				</div>
	<% } else { %>
				<div id="navbarResponsive">
					<ul class="navbar-nav ml-auto">
						<li class="nav-item mx-0 mx-lg-1"><a href="logout.do"><img
								src="img/logout.png"></a></li>
					</ul>
				</div>
	<%  } %>

		
<!-- 		<div id="navbarResponsive"> -->
<!-- <ul class="navbar-nav ml-auto"> -->
<!-- <li class="nav-item mx-0 mx-lg-1"> -->
<%-- <c:choose> --%>
<%-- <c:when test="${sessionScope.naverurl ne null}"> --%>
<!-- <a href="logout.do"> -->
<!-- <img src="img/logout.png"> -->
<!-- </a> -->
<%-- </c:when> --%>
<%-- <c:when test="${twitchurl ne null}"> --%>
<!-- <a href="logout.do"> -->
<!-- <img src="img/logout.png"> -->
<!-- </a> -->
<%-- </c:when> --%>
<%-- <c:when test="${googleurl ne null}"> --%>
<!-- <a href="logout.do"> -->
<!-- <img src="img/logout.png"> -->
<!-- </a> -->
<%-- </c:when> --%>
<%-- <c:otherwise> --%>
<!-- <a href="loginForm.do"> -->
<!-- <img src="img/login.png"> -->
<!-- </a> -->
<%-- </c:otherwise> --%>
<%-- </c:choose> --%>
<!-- </li></ul></div> -->

	</div>
	</nav>


	<div class="bg-secondary" style="position: fixed; left: 0px; top: 100px; width: 100%; padding-left: 22%; padding-bottom: 1%; z-index: 1028;">
		<a class="navbar-brand js-scroll-trigger" href="InsightGame.do"
			style="color: white; font-weight: bold;">GAME</a>
	</div>
	<div style="position: fixed; right: 45.5%; top: 100px; z-index: 1039;">
		<a class="navbar-brand js-scroll-trigger" href="InsightStreamer.do"
			style="color: white; font-weight: bold;">STREAMER</a>
	</div>
	<div style="position: fixed; left: 73%; top: 100px; z-index: 1030;">
		<a class="navbar-brand js-scroll-trigger" href="board.do"
			style="color: white; font-weight: bold;">BOARD</a>
	</div>

</body>
</html>