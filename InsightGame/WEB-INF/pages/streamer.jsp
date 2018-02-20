<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
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
	<!-- 	<div id="navigation"> -->
	<%-- 		<jsp:include page="../navigation.jsp" /> --%>
	<!-- 	</div> -->


	<div id="navigation">
		<jsp:include page="../navigation.jsp" />

		<script type="text/javascript"
			src="js/main.js?v=lSSSSddSSffj">
		</script>
	</div>



	<div id="InsightGame" style="margin-top: 8.5%; overflow: hidden;">

		<section class="mb-0">
		<div class="container">
			<h2 class="text-center text-uppercase text-secondary mb-0"
				style="font-size: 2rem;">Streamer Followers Rank</h2>
			<div class="row">
				<div style="width:75%; margin: 0 auto;">
					<div id="SI"></div>
				</div>
			</div>

		</div>
		</section>

		<div class="container">
			<hr class="star-dark mb-5">
			<h2 class="text-center text-uppercase text-secondary mb-0" style="font-size: 2rem;">
			top streamers</h2>
				<div id="streamer_rank" style="text-align: center;">
					<jsp:include page="../contents/streamerRank.jsp" />
				</div>
		</div>


		<section class="mb-0">
		<div class="container">
			<hr class="star-dark mb-5">
			<h2 class="text-center text-uppercase text-secondary mb-0"
				style="font-size: 2rem;">top games - streamer</h2>
			<div class="row">
				<!-- 				<div id="streamerInterest" align="center" style="margin: 0 auto;"> -->
				<%-- 					<jsp:include page="../contents/streamerInterest.jsp" /> --%>
				<!-- 				</div> -->

				<div id="streamer_top" style="margin: 0 auto;"></div>
			</div>
		</div>
		</section>



		<div class="container1" style="margin-left: 9.8%; margin-right: 9.8%;">
			<hr class="star-dark mb-5">

			<div class="row">
				
				<div class="col-md-6">
					<h3 class="text-center text-uppercase text-secondary mb-0">total tgd post - keyword</h3>

<!-- 					<div style="margin: 0 auto;"> -->
<%-- 						<jsp:include page="../contents/streamerBoardKeyword.jsp" /> --%>
<!-- 					</div> -->

				</div>

				<div class="col-md-6">
					<h3 class="text-center text-uppercase text-secondary mb-0">total tgd post - daily</h3>
					<div>
						<div id="kkk"></div>
					</div>
				</div>
			</div>
		</div>

		<section class="mb-0">
		<div class="container">
			<hr class="star-dark mb-5">
			<h2 class="text-center text-uppercase text-secondary mb-0"
				style="font-size: 2rem;">hot clip</h2>
			<div class="row">
				<div style="margin: 0 auto;">
					<div id="hot"></div>
				</div>
			</div>
		</div>
		</section>
	
	</div>
</body>
</html>