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
<!-- 	<div id="navigation"> -->
<%-- 		<jsp:include page="../navigation.jsp" /> --%>
<!-- 	</div> -->

<div id="navigation">
		<jsp:include page="../navigation.jsp" />

		<script type="text/javascript" src="js/main.js?v=lkdjflajelkafjklj"></script>

		<script type="text/javascript" src="js/main.js?v=21d3sf31j"></script>

	</div>

	<div id="InsightGame" style="margin-top: 8.5%; overflow: hidden;">

		<section class="mb-0">
			<h2 class="text-center text-uppercase text-secondary mb-0" style="font-size: 2rem;">streamer info</h2>
			
			<div style="display: flex">
				<div style="margin-left: 15%;">

				</div>
			
				<div style="width: 45%; margin-right: 9.9%; margin-left: 9.9%; margin-top: 2%;">
					<table id="boardTable" class="table" align="center" style="margin: 0 auto;">
						<tr style="text-align: left;">
							<td rowspan="4" style="border-top: 0; vertical-align: middle;"><img src="${streamerInfo.strPicture}" style="border-radius: 8px;"></td>
							<td style="text-align: left; border-top: 0; padding-top: 18px; min-width: 300px;">
							<span style="color: navy; font-size: 2rem; line-height: 35px; display:inline-block;'">
							<b>${streamerInfo.strName }<br>(${streamerInfo.siId })</b></span>
							<a href="${streamerInfo.strTwitchUrl }">
							<img src="img/tw_logo.png" style="width: 32px; height: 32px; margin-left: 0px; margin-bottom: 65px; display: inline-block;"></a>
							</td>
						</tr>
						<tr>
							<td style="border-top: 0;"><img src="img/worldwide.png" style="margin-left: 1px; margin-right: 8px; width:22px; height: 22px;"><span style="color: grey">Korea</span></td>
						</tr>
						<tr>
							<td style="border-top: 0;"><img src="img/gamecontroller.png" style="margin-right: 7px;"><span style="color: grey">${streamerInfo.strGameCategory }</span></td>
						</tr>
						<tr>
							<td style="border-top: 0; padding-bottom: 18px;"><a href="${streamerInfo.strTgdUrl }" style="text-decoration:none"><img src="img/tgd_logo.png" style="width: 27px; height: 27px;">
							<span style="color: purple; font-size: 0.9rem;">트게더</span></a></td>
						</tr>
					</table>
				</div>
			</div>
		</section>

		<div class="container">
			<hr class="star-dark mb-5">
			<h2 class="text-center text-uppercase text-secondary mb-0" style="font-size: 2rem;">streamer game info</h2>
			<div style="position: relative; left: 0px; width: 75%; padding-top: 30px; margin-left: auto; margin-right: auto;">
				<div class="row">
					<div class="col-md-12 col-md-offset-3" style="margin-left: auto; margin-right: auto;">
	
					</div>
					</div>
			</div>
		</div>

		<div class="container1" style="margin-left: 9.8%; margin-right: 9.8%;">
			<hr class="star-dark mb-5">
			
			<div class="row">

				<div class="col-md-6">
					<h3 class="text-center text-uppercase text-secondary mb-0">
					total tgd post - ${streamerInfo.strName }</h3>
						<jsp:include page="streamercount.jsp" />					
				</div>


				<div class="col-md-6">

					<h3 class="text-center text-uppercase text-secondary mb-0">
					change followers - ${streamerInfo.strName }</h3>
					<div style="margin: 0 auto;">
						<jsp:include page="streamerfow.jsp" />
					</div>
				</div>

			</div>
		</div>
		
		<section class="mb-0">
			<div class="container">
				<hr class="star-dark mb-5">
				<h2 class="text-center text-uppercase text-secondary mb-0"
				style="font-size: 2rem;">hot clip - ${streamerInfo.strName }</h2>
				<div class="row">
					<div style="margin: 0 auto;">
						<jsp:include page="hotclips2.jsp" />
					</div>
				</div>
		</div>
		</section>
	</div>

</body>
</html>