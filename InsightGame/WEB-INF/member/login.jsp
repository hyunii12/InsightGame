<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
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
	<div id="wrap">
		<div id="navigation">
			<jsp:include page="../navigation.jsp" />
		</div>
		<div style="margin-top: 15%; text-align: center;">
			<!-- 			<a href="login.do">로그인</a><br> -->

			<!-- 네이버 로그인 화면으로 이동 시키는 URL -->
			<!-- 네이버 로그인 화면에서 ID, PW를 올바르게 입력하면 callback 메소드 실행 요청 -->
			<div class="container" style="display: inline-block;">
				<a href="${naverurl}"><img width="126" height="75"
					src="${pageContext.request.contextPath}/img/naverlogin.PNG" /></a><br>
				<!-- 			<a href="joinForm.do">회원가입</a> -->
				<!-- 				<a href="https://api.twitch.tv/kraken/oauth2/authorize?response_type=code -->
				<!-- 				&client_id=ghty8lutmj1064oembb9g8195fr9eg&redirect_uri=http://localhost:8080/InsightGame/callback.do&client_secret=nlquky5njenvf5snprt1zy88og7gvk"> -->
				<!-- 				Connect With Twitch!</a><br> -->
				<a href="${twitchurl}"><img width="126" height="75"
					src="${pageContext.request.contextPath}/img/naverlogin.PNG" /></a><br>
			</div>
		</div>
	</div>
</body>
</html>