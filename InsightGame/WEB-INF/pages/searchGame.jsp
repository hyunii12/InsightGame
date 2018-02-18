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
	
	<div id="InsightGame" style="margin-top: 15.6%; overflow: hidden;">
		<!-- Portfolio Grid Section -->

		<div class="container">
			<h2 class="text-center text-uppercase">gameInformation.jsp</h2>
			<h2 class="text-center text-uppercase text-secondary">
				검색키워드:${searchWord }</h2>
			<h3 class="text-center text-uppercase text-secondary">게임 상세정보:
				${gameInfo.title }</h3>

			<div style="display: flex">
				<div style="margin-left: 15%;">
					<a href="#"><img src="img/gameimg1.jpg" style="width: 240px;"></a>
				</div>

				<div style="width: 45%; margin-left: 30px;">
					<table id="boardTable" class="table" align="center">
						<tr>
							<td>게임명</td>
							<td>${gameInfo.title }</td>
						</tr>
						<tr>
							<td>플랫폼</td>
							<td>${gameInfo.platform }</td>
						</tr>
						<tr>
							<td>장르</td>
							<td>${gameInfo.genre }</td>
						</tr>
						<tr>
							<td>제작사</td>
							<td>${gameInfo.production }</td>
						</tr>
						<tr>
							<td>이용등급</td>
							<td>${gameInfo.age }</td>
						</tr>
						<tr>
							<td>출시년도</td>
							<td>${gameInfo.release }</td>
						</tr>


						<!-- 					<tbody> -->
						<%-- 						<c:forEach items="" var="list"> --%>
						<%-- 											<tr style="cursor: pointer" onclick="alert(${list.bId})"> --%>
						<!-- 							<tr style="cursor: pointer"> -->
						<!-- 								<td>1</td> -->
						<!-- 								<td>2</td> -->
						<!-- 								<td>3</td> -->
						<!-- 								<td>4</td> -->
						<!-- 								<td>5</td> -->
						<!-- 								<td> -->
						<!-- 									<button class="btn btn-info">수정</button> -->
						<!-- 									<button class="btn btn-danger">삭제</button> -->
						<!-- 								</td> -->
						<!-- 							</tr> -->
						<%-- 						</c:forEach> --%>
						<!-- 					</tbody> -->

					</table>

				</div>

			</div>

		</div>
	</div>


	<div class="container">
		<h2 class="text-center text-uppercase text-secondary mb-0">issues.jsp</h2>
		<hr class="star-dark mb-5">

	</div>


	<div class="container">
		<h2 class="text-center text-uppercase">검색 게임 정보</h2>

		<div class="row">
			<h3 class="text-center" style="margin: 0 auto;">gameInterest.jsp</h3>
			<h3 class="text-center" style="margin: 0 auto;">news.jsp</h3>
			<h3 class="text-center" style="margin: 0 auto;">gameWalkthrough.jsp</h3>
			<h3 class="text-center" style="margin: 0 auto;">gameRecommend.jsp</h3>
			<!-- 			<div id="issues"> -->
			<%-- 				<jsp:include page="gameInterest.do" /> --%>
			<!-- 			</div> -->
		</div>
	</div>

	<!-- Portfolio Grid Section -->
	<div class="container1">
		<h2 class="text-center text-uppercase text-secondary mb-0">그래프 4개</h2>
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


</body>
</html>