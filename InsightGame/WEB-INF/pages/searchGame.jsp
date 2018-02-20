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

		<div class="container" style="padding-bottom: 96px;">
			<h2 class="text-center text-uppercase text-secondary mb-0">game info</h2>
			<div style="display: flex">
			<div style="margin-left: 19%;"></div>
			

			<div style="width: 51%; margin-right: 9.9%; margin-left: 9.9%; margin-top: 2%;">
				<table id="boardTable" class="table" align="center" style="margin: 0 auto;">
						<tr>
						<td rowspan="6" style="max-width: 230px; width: 230px; border-top: 0; vertical-align: middle;">
						<img src="${gameInfo.picture}" style="width: 233px; height: 303px; border-radius: 8px;"></td>
							<td colspan="2" style="border-top: 0; padding-left: 27px; padding-bottom: 10px; vertical-align: middle;">
							<b><span style="font-size: 1.2rem;">${gameInfo.title }</span></b></td>
						</tr>
						<tr>
							<td style="width: 103px; border-top: 0; padding-left: 27px; padding-bottom: 10px;">
							<span style="color: grey; width: 103px;">플랫폼</span></td>
							<td style="border-top: 0; padding-bottom: 10px; width: 200px;">
							<span style="color: grey">${gameInfo.platform }</span></td>
						</tr>
						<tr>
							<td style="width: 103px; border-top: 0; padding-left: 27px; padding-bottom: 10px;">
							<span style="color: grey">장르</span></td>
							<td style="border-top: 0; padding-bottom: 10px;">
							<span style="color: grey">${gameInfo.genre }</span></td>
						</tr>
						<tr>
							<td style="width: 103px; border-top: 0; padding-left: 27px; padding-bottom: 10px;">
							<span style="color: grey">제작사</span></td>
							<td style="border-top: 0; padding-bottom: 10px;">
							<span style="color: grey">${gameInfo.production }</span></td>
						</tr>
						<tr>
							<td style="width: 103px; border-top: 0; padding-left: 27px; padding-bottom: 10px;">
							<span style="color: grey">이용등급</span></td>
							<td style="border-top: 0; padding-bottom: 10px;">
							<span style="color: grey">${gameInfo.age }</span></td>
						</tr>
						<tr>
							<td style="width: 103px; border-top: 0; padding-left: 27px; padding-bottom: 10px;">
							<span style="color: grey">출시년도</span></td>
							<td style="border-top: 0; padding-bottom: 10px;">
							<span style="color: grey">${gameInfo.release }</span></td>
						</tr>

					</table>

				</div>
			</div>
			</div>
		</div>


	<div class="container">
		<h2 class="text-center text-uppercase text-secondary mb-0">issuesChart.jsp</h2>
		

	</div>

	<section class="mb-0">
	<div class="container">
		<hr class="star-dark mb-5">
		<h2 class="text-center text-uppercase text-secondary mb-0" style="font-size: 2rem;">game Recommend</h2>
		<jsp:include page="../contents/gameRecommend.jsp"></jsp:include>
		<div class="row">
<!-- 			<h3 class="text-center" style="margin: 0 auto;">gameInterest.jsp</h3> -->
		</div>
	</div>
	</section>
	<!-- Portfolio Grid Section -->
<!-- 	<div class="container1"> -->
<!-- 		<h2 class="text-center text-uppercase text-secondary mb-0">그래프 4개</h2> -->
<!-- 		<hr class="star-dark mb-5"> -->
<!-- 		<div class="row"> -->

<!-- 			<div class="col-md-6"> -->
<!-- 				<h3 class="text-center">111</h3> -->

				<!-- 			<div id="issues"> -->
<%-- 				<jsp:include page="gameInterest.do" /> --%>
				<!-- 								</div> -->
<!-- 			</div> -->

<!-- 			<div class="col-md-6"> -->
<!-- 				<h3 class="text-center">222</h3> -->

				<!-- 			<div id="issues"> -->
<%-- 				<jsp:include page="gameNews.do" /> --%>
				<!-- 								</div> -->
<!-- 			</div> -->

<!-- 			<div class="col-md-6"> -->
<!-- 				<h3 class="text-center">333</h3> -->

				<!-- 			<div id="issues"> -->
<%-- 				<jsp:include page="gameCalendar.do" /> --%>
				<!-- 								</div> -->
<!-- 			</div> -->

<!-- 			<div class="col-md-6"> -->
<!-- 				<h3 class="text-center">444</h3> -->

				<!-- 			<div id="issues"> -->
<%-- 				<jsp:include page="gameCalendar.do" /> --%>
				<!-- 								</div> -->
<!-- 			</div> -->
<!-- 		</div> -->
<!-- 	</div> -->


</body>
</html>