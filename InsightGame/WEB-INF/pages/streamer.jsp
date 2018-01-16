<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div id="navigation">
		<jsp:include page="../navigation.jsp" />
	</div>

	<div id="InsightGame" style="margin-top:10%; overflow:hidden;">
		<!-- Portfolio Grid Section -->
		<section class="bg-primary text-white mb-0" id="about">
		<div class="container">
			<h2 class="text-center text-uppercase text-white">Streamer Issues
				Rank</h2>
			<hr class="star-light mb-5">
			<div class="row">
				<h3 class="text-center text-white" style="margin: 0 auto;">issues.jsp</h3>
				<!-- 			<div id="issues"> -->
				<%-- 				<jsp:include page="StreamerIssues.do" /> --%>
				<!-- 			</div> -->
			</div>

		</div>
		</section>

		<!-- Portfolio Grid Section -->
		<section class="portfolio" id="portfolio">
		<div class="container">
			<h2 class="text-center text-uppercase text-secondary mb-0">Streamer Rank</h2>
			<hr class="star-dark mb-5">
			<div class="row">

				<div class="col-md-6 col-lg-4">
					<h3 class="text-center">옵션1. 시간</h3>
					<a class="portfolio-item d-block mx-auto" href="#portfolio-modal-1"></a>
					<!-- 			<div id="issues"> -->
					<%-- 				<jsp:include page="gameInterest.do" /> --%>
					<!-- 			</div> -->
				</div>

				<div class="col-md-6 col-lg-4">
					<h3 class="text-center">옵션2. 팔로우</h3>
					<a class="portfolio-item d-block mx-auto" href="#portfolio-modal-1"></a>
					<!-- 			<div id="issues"> -->
					<%-- 				<jsp:include page="gameNews.do" /> --%>
					<!-- 			</div> -->
				</div>

				<div class="col-md-6 col-lg-4">
					<h3 class="text-center">옵션3. IRL/방송 시간</h3>
					<a class="portfolio-item d-block mx-auto" href="#portfolio-modal-1"></a>
					<!-- 			<div id="issues"> -->
					<%-- 				<jsp:include page="gameCalendar.do" /> --%>
					<!-- 			</div> -->
				</div>

			</div>
		</div>
		</section>

		<!-- Portfolio Grid Section -->
		<section class="bg-primary text-white mb-0" id="about">
		<div class="container">
			<h2 class="text-center text-uppercase text-white">인기 게임</h2>
			<hr class="star-light mb-5">
			<div class="row">
				<h3 class="text-center text-white" style="margin: 0 auto;">스트리머별</h3>
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
					<h3 class="text-center">스트리머 게시글 - 키워드별</h3>

					<!-- 			<div id="issues"> -->
					<jsp:include page="gameInterest.do" />
					<!-- 								</div> -->
				</div>

				<div class="col-md-6">
					<h3 class="text-center">스트리머 게시글 - 시간대별</h3>

					<!-- 			<div id="issues"> -->
					<jsp:include page="gameNews.do" />
					<!-- 								</div> -->
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
				<h3 class="text-center text-white" style="margin: 0 auto;">전체 스트리머</h3>
				<!-- 			<div id="issues"> -->
				<%-- 				<jsp:include page="gameInterest.do" /> --%>
				<!-- 			</div> -->
			</div>
		</div>
		</section>
		
	</div>

</body>
</html>