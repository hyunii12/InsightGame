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
	<div id="navigation">
		<jsp:include page="../navigation.jsp" />
	</div>

	<div id="InsightGame" style="margin-top:8.5%; overflow:hidden;">
		<!-- Portfolio Grid Section -->
		<section class="bg-primary text-white mb-0" id="about">
		<div class="container">
			<h2 class="text-center text-uppercase text-white">gameInformation.jsp</h2>
			<h2 class="text-center text-uppercase text-secondary">검색키워드: ${what }</h2>
			<h3 class="text-center text-uppercase text-secondary">게임 상세정보: ${giId }</h3>			
			<hr class="star-light mb-5">
			<div class="row">
				<a href="gameDetail.jsp"><h3 class="text-center text-white" style="margin: 0 auto;">gameDetail.jsp</h3></a>
				<!-- 			<div id="issues"> -->
				<%-- 				<jsp:include page="gameIssues.do" /> --%>
				<!-- 			</div> -->
			</div>

		</div>
		</section>

		<!-- Portfolio Grid Section -->
		<section class="portfolio" id="portfolio">
		<div class="container">
			<h2 class="text-center text-uppercase text-secondary mb-0">issues.jsp</h2>
			<hr class="star-dark mb-5">

		</div>
		</section>

		<!-- Portfolio Grid Section -->
		<section class="bg-primary text-white mb-0" id="about">
		<div class="container">
			<h2 class="text-center text-uppercase text-white">검색 게임 정보</h2>
			<hr class="star-light mb-5">
			<div class="row">
				<h3 class="text-center text-white" style="margin: 0 auto;">gameInterest.jsp</h3>
				<h3 class="text-center text-white" style="margin: 0 auto;">news.jsp</h3>
				<h3 class="text-center text-white" style="margin: 0 auto;">gameWalkthrough.jsp</h3>
				<h3 class="text-center text-white" style="margin: 0 auto;">gameRecommend.jsp</h3>
				<!-- 			<div id="issues"> -->
				<%-- 				<jsp:include page="gameInterest.do" /> --%>
				<!-- 			</div> -->
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
					<h3 class="text-center">111</h3>

					<!-- 			<div id="issues"> -->
					<jsp:include page="gameInterest.do" />
					<!-- 								</div> -->
				</div>

				<div class="col-md-6">
					<h3 class="text-center">222</h3>

					<!-- 			<div id="issues"> -->
					<jsp:include page="gameNews.do" />
					<!-- 								</div> -->
				</div>

				<div class="col-md-6">
					<h3 class="text-center">333</h3>

					<!-- 			<div id="issues"> -->
					<jsp:include page="gameCalendar.do" />
					<!-- 								</div> -->
				</div>

				<div class="col-md-6">
					<h3 class="text-center">444</h3>

					<!-- 			<div id="issues"> -->
					<jsp:include page="gameCalendar.do" />
					<!-- 								</div> -->
				</div>
			</div>
		</div>
		</section>
	</div>

</body>
</html>