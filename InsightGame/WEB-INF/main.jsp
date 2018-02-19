<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insight Game</title>

</head>
<body>
	<div id="navigation">
		<jsp:include page="navigation.jsp" />

		<script type="text/javascript" src="js/main.js?v=lkdjflajelkafjklj"></script>

		<script type="text/javascript" src="js/main.js?v=21d3sf31j"></script>

	</div>

	<div id="InsightGame" style="margin-top: 8.5%; overflow: hidden;">
		<section class="mb-0">
		<div class="container">
			<h2 class="text-center text-uppercase text-secondary mb-0" style="font-size: 2rem;">Game Issues Rank</h2>
			<div class="row">
				<h3 class="text-center" style="margin: 0 auto;">issues.jsp</h3>
			</div>
			<div style="margin: 0 auto; width: 80%">
				<%-- 				<jsp:include page="contents/issues.jsp" /> --%>

			</div>
		</div>

		</section>
	</div>

		<div class="container1">
			<hr class="star-dark mb-5">
			<h2 class="text-center text-uppercase text-secondary mb-0" style="font-size: 2rem;">game calendar</h2>
			<div style="margin: 0 auto; margin-top: 30px; width: 60%">
				<jsp:include page="contents/calendar.jsp" />
			</div>

		</div>

			<!-- 			<h2 class="text-center text-uppercase text-secondary mb-0">통계, -->
			<!-- 				뉴스, 출시</h2> -->
			<!-- 			<hr class="star-dark mb-5"> -->
			<!-- 			<div class="row"> -->

			<!-- 				<div class="col-md-6 col-lg-4"> -->
			<!-- 					<h3 class="text-center">gameInterest.jsp</h3> -->
			<!-- 					<a class="portfolio-item d-block mx-auto" href="#portfolio-modal-1"></a> -->
			<!-- 								<div id="issues"> -->
			<%-- 									<jsp:include page="gameInterest.do" /> --%>
			<!-- 								</div> -->
			<!-- 				</div> -->

			<!-- 				<div class="col-md-6 col-lg-4"> -->
			<!-- 					<h3 class="text-center">news.jsp</h3> -->
			<!-- 					<a class="portfolio-item d-block mx-auto" href="#portfolio-modal-1"></a> -->
			<!-- 								<div id="issues"> -->
			<%-- 									<jsp:include page="gameNews.do" /> --%>
			<!-- 								</div> -->
			<!-- 				</div> -->

			<!-- 				<div class="col-md-6 col-lg-4"> -->
			<!-- 					<h3 class="text-center">calendar.jsp</h3> -->
			<!-- 					<a class="portfolio-item d-block mx-auto" href="#portfolio-modal-1"></a> -->
			<!-- 								<div id="issues"> -->
			<%-- 									<jsp:include page="gameCalendar.do" /> --%>
			<!-- 								</div> -->
			<!-- 				</div> -->

			<!-- 			</div> -->
		</div>

		<section class="mb-0">
		<div class="container">
			<hr class="star-dark mb-5">
			<h2 class="text-center text-uppercase text-secondary mb-0" style="font-size: 2rem;">change top games - view</h2>
				<div id="GI" style="margin: 0 auto; width: 85%;"></div>
			<!-- 			<div style="margin: 0 auto; width: 80%;"> -->
<%-- 								<jsp:include page="contents/gameInterest.jsp" /> --%>
<!-- 			</div> -->
		</div>

		</section>

		<div class="container1">
			<hr class="star-dark mb-5">
			<h2 class="text-center text-uppercase text-secondary mb-0" style="font-size: 2rem;">game rank - platform</h2>
			<div id="gameRanking" style="margin: 0 auto;"></div>
		</div>
		
		<section class="mb-0">
			<div class="container">
				<hr class="star-dark mb-5">
				<h2 class="text-center text-uppercase text-secondary mb-0" style="font-size: 2rem;">game rank - genre</h2>
				<div id="gameRankingAsGenre" style="margin: 0 auto;"></div>
		</div>
		</section>
		
		<div class="container1" style="padding-bottom: 96px;">
			<hr class="star-dark mb-5">
			<h2 class="text-center text-uppercase text-secondary mb-0" style="font-size: 2rem;">유형별 게임 인기 변화</h2>
			<div id="" style="margin: 0 auto;"></div>
		</div>
		
<!-- 				<div id="kkk"></div> -->

<!-- 					<div id="issues"> -->
<%-- 						<jsp:include page="contents/gameRankAsGenre.jsp" /> --%>
<!-- 					</div> -->
<!-- 				</div> -->
<!-- 					<div id="issues"> -->
<%-- 						<jsp:include page="contents/gameRank.jsp" /> --%>
<!-- 					</div> -->

<!-- 				<div class="col-md-6"> -->
<!-- 					<h3 class="text-center">제작사 순위</h3> -->
<!-- 					<div id="issues"> -->
<%-- 						<jsp:include page="contents/gameRankAsCompany.jsp" /> --%>
<!-- 					</div> -->
<!-- 				</div> -->

</body>
</html>