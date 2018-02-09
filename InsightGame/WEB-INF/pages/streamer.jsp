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
	<div id="navigation">
		<jsp:include page="../navigation.jsp" />
	</div>

	<div id="InsightGame" style="margin-top: 8.5%; overflow: hidden;">
		<!-- Portfolio Grid Section -->
		<section class="bg-primary text-white mb-0" id="about">
		<div class="container">
			<h2 class="text-center text-uppercase text-white">Streamer
				Issues Rank</h2>
			<hr class="star-light mb-5">
			<div class="row">
				<!-- 				<h3 class="text-center text-white" style="margin: 0 auto;">issues.jsp</h3> -->
				<div style="margin: 0 auto">
					<jsp:include page="../contents/streamerRadarChart.jsp" />
				</div>
			</div>

		</div>
		</section>

		<!-- Portfolio Grid Section -->
		<section class="portfolio" id="portfolio">
		<div class="container">
			<h2 class="text-center text-uppercase text-secondary mb-0">Streamer
				Rank</h2>
			<hr class="star-dark mb-5">
			<div class="row">
				<div style="margin: 0 auto">
					<jsp:include page="../contents/streamerRank.jsp" />
				</div>

				<!-- 				<div class="col-md-6 col-lg-4"> -->
				<!-- 					<h3 class="text-center">옵션1. 시간</h3> -->
				<!-- 					<a class="portfolio-item d-block mx-auto" href="#portfolio-modal-1"></a> -->
				<!-- 								<div id="issues"> -->
				<%-- 									<jsp:include page="gameInterest.do" /> --%>
				<!-- 								</div> -->
				<!-- 				</div> -->

				<!-- 				<div class="col-md-6 col-lg-4"> -->
				<!-- 					<h3 class="text-center">옵션2. 팔로우</h3> -->
				<!-- 					<a class="portfolio-item d-block mx-auto" href="#portfolio-modal-1"></a> -->
				<!-- 								<div id="issues"> -->
				<%-- 									<jsp:include page="gameNews.do" /> --%>
				<!-- 								</div> -->
				<!-- 				</div> -->

				<!-- 				<div class="col-md-6 col-lg-4"> -->
				<!-- 					<h3 class="text-center">옵션3. IRL/방송 시간</h3> -->
				<!-- 					<a class="portfolio-item d-block mx-auto" href="#portfolio-modal-1"></a> -->
				<!-- 								<div id="issues"> -->
				<%-- 									<jsp:include page="gameCalendar.do" /> --%>
				<!-- 								</div> -->
			</div>
		</div>
		</section>

		<!-- Portfolio Grid Section -->
		<section class="bg-primary text-white mb-0" id="about">
		<div class="container">
<!-- 			<h2 class="text-center text-uppercase text-white">인기 게임</h2> -->
<!-- 			<hr class="star-light mb-5"> -->
			<div class="row">
<!-- 				<h3 class="text-center text-white" style="margin: 0 auto;">스트리머별</h3> -->
				<div id="issues" align="center">
					<jsp:include page="../contents/streamerInterest.jsp" />
				</div>
			</div>
		</div>
		</section>

		<!-- Portfolio Grid Section -->
		<section class="portfolio" id="portfolio">
		<div class="container1">
			<h2 class="text-center text-uppercase text-secondary mb-0">그래프
				4개</h2>
			<hr class="star-dark mb-5">
			<div class="row">

				<div class="col-md-6">
					<h3 class="text-center">스트리머 게시글 - 키워드별</h3>

<!-- 							
<%-- 					<jsp:include page="gameInterest.do" /> --%>
					<!-- 								</div> -->
				</div>

				<div class="col-md-6">
					<h3 class="text-center">스트리머 게시글 - 시간대별</h3>

<!-- 					<div id="issues"></div> -->
				</div>

				<div class="col-md-6">
					<h3 class="text-center">전체 게시글 - 키워드별</h3>

					<!-- 			<div id="issues"> -->
					<jsp:include page="gameCalendar.do" />
					<!-- 								</div> -->
				</div>

				<div class="col-md-6">
					<h3 class="text-center">전체 게시글 - 시간대별</h3>

					<!-- 			<div id="issues"> -->
					<jsp:include page="gameCalendar.do" />
					<!-- 								</div> -->
				</div>
			</div>
		</div>
		</section>

		<!-- Portfolio Grid Section -->
		<section class="bg-primary text-white mb-0" id="about">
		<div class="container">
			<h2 class="text-center text-uppercase text-white">핫 클립</h2>
			<hr class="star-light mb-5">
			<div class="row">
				<!-- 				<h3 class="text-center text-white" style="margin: 0 auto;">전체 스트리머</h3> -->
				<div style="margin: 0 auto">
					<jsp:include page="../contents/hotclips.jsp" >
						<jsp:param value="${cliplist}" name="name"/>
					
					</jsp:include>
				</div>
			</div>
		</div>
		</section>

	</div>

</body>
</html>