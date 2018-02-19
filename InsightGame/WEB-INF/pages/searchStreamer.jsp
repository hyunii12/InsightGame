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
		<!-- Portfolio Grid Section -->
		<section class="mb-0">
			<h2 class="text-center text-uppercase text-secondary mb-0" style="font-size: 2rem;">streamer info</h2>
			
			<div style="display: flex">
				<div style="margin-left: 15%;">

				</div>

				<div style="width: 45%; margin-right: 9.9%; margin-left: 9.9%;">
					<table id="boardTable" class="table" align="center" style="margin: 0 auto; margin-top: 4%;">
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

		<!-- Portfolio Grid Section -->
		<section class="portfolio">
		<div class="container">
			<hr class="star-dark mb-5">
			<h2 class="text-center text-uppercase text-secondary mb-0">issues.jsp</h2>
		</div>
		</section>

		<!-- Portfolio Grid Section -->
		<section class="mb-0">
		<div class="container">
			<hr class="star-dark mb-5">
			<h2 class="text-center text-uppercase">스트리머 게임 정보</h2>
			<div style="position: relative; left: 0px; width: 75%; padding-top: 30px; margin-left: auto; margin-right: auto;">
<style>
.faq-cat-content {
	margin-top: 25px;
}

.faq-cat-tabs li a {
	padding: 15px 10px 15px 10px;
	background-color: #ffffff;
	border: 1px solid #dddddd;
	color: #777777;
}

.nav-tabs li a:focus, .panel-heading a:focus {
	outline: none;
}

.panel-heading a, .panel-heading a:hover, .panel-heading a:focus {
	text-decoration: none;
	color: #777777;
}

.faq-cat-content .panel-heading:hover {
	background-color: #efefef;
}

.active-faq {
	border-left: 5px solid #888888;
}

.panel-faq .panel-heading .panel-title span {
	font-size: 13px;
	font-weight: normal;
}
</style>

				<div class="row">
					<div class="col-md-12 col-md-offset-3"
						style="margin-left: auto; margin-right: auto;">
						<!-- Nav tabs category -->
						<ul class="nav nav-tabs faq-cat-tabs nav-pills">
							<li class="nav-item"><a class="nav-link active"
								href="#faq-cat-1" role="tab" data-toggle="tab">통계</a></li>
							<li class="nav-item"><a href="#faq-cat-2" class="nav-link"
								role="tab" data-toggle="tab">뉴스</a></li>
							<li class="nav-item"><a href="#faq-cat-3" class="nav-link"
								role="tab" data-toggle="tab">출시일정</a></li>
						</ul>
						<!-- Tab panes -->
						<div class="tab-content faq-cat-content" style="padding-top: 30px">
							<div class="tab-pane active container" id="faq-cat-1">
								<div class="panel-group" id="accordion-cat-1">
									<div class="panel panel-default panel-faq">
										<div class="panel-heading">
											<a data-toggle="collapse" data-parent="#accordion-cat-1"
												href="#faq-cat-1-sub-1">
												<h4 class="panel-title">
													주요정보 <span class="pull-right"><i
														class="glyphicon glyphicon-plus"></i></span>
												</h4>
											</a>
										</div>
										<div id="faq-cat-1-sub-1" class="panel-collapse collapse">
											<div class="panel-body">
												<div class="row form-group">
													<div class="col-sm-2">Fever</div>
													<div class=" col-sm-3 btn-group" data-toggle="buttons">
														<label class="btn btn-primary btn-sm  active"> <input
															type="checkbox" autocomplete="off" checked>Yes
														</label> <label class="btn btn-primary btn-sm"> <input
															type="checkbox" autocomplete="off">No
														</label>
													</div>
												</div>

												<div class="row form-group">
													<div class="col-sm-2">Fever</div>
													<div class=" col-sm-3 btn-group" data-toggle="buttons">
														<label class="btn btn-primary btn-sm  active"> <input
															type="checkbox" autocomplete="off" checked>Yes
														</label> <label class="btn btn-primary btn-sm"> <input
															type="checkbox" autocomplete="off">No
														</label>
													</div>
												</div>


												<div class="row form-group">
													<div class="col-sm-2">Fever</div>
													<div class=" col-sm-3 btn-group" data-toggle="buttons">
														<label class="btn btn-primary btn-sm  active"> <input
															type="checkbox" autocomplete="off" checked>Yes
														</label> <label class="btn btn-primary btn-sm"> <input
															type="checkbox" autocomplete="off">No
														</label>
													</div>
												</div>
											</div>
										</div>
									</div>

									<div class="panel panel-default panel-faq">
										<div class="panel-heading">
											<a data-toggle="collapse" data-parent="#accordion-cat-1"
												href="#faq-cat-1-sub-2">
												<h4 class="panel-title">
													히스토리<span class="pull-right"><i
														class="glyphicon glyphicon-plus"></i></span>
												</h4>
											</a>
										</div>
										<div id="faq-cat-1-sub-2" class="panel-collapse collapse">
											<div class="panel-body">
												<div class="row form-group">
													<div class="col-sm-2">Fever</div>
													<div class=" col-sm-3 btn-group" data-toggle="buttons">
														<label class="btn btn-primary btn-sm  active"> <input
															type="checkbox" autocomplete="off" checked>Yes
														</label> <label class="btn btn-primary btn-sm"> <input
															type="checkbox" autocomplete="off">No
														</label>
													</div>
												</div>

												<div class="row form-group">
													<div class="col-sm-2">Fever</div>
													<div class=" col-sm-3 btn-group" data-toggle="buttons">
														<label class="btn btn-primary btn-sm  active"> <input
															type="checkbox" autocomplete="off" checked>Yes
														</label> <label class="btn btn-primary btn-sm"> <input
															type="checkbox" autocomplete="off">No
														</label>
													</div>
												</div>

												<div class="row form-group">
													<div class="col-sm-2">Fever</div>
													<div class=" col-sm-3 btn-group" data-toggle="buttons">
														<label class="btn btn-primary btn-sm  active"> <input
															type="checkbox" autocomplete="off" checked>Yes
														</label> <label class="btn btn-primary btn-sm"> <input
															type="checkbox" autocomplete="off">No
														</label>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>

							<div class="tab-pane container" id="faq-cat-2">
								<div class="panel-group" id="accordion-cat-2">
									<div class="panel panel-default panel-faq">
										<div class="panel-heading">
											<a data-toggle="collapse" data-parent="#accordion-cat-2"
												href="#faq-cat-2-sub-1">
												<h4 class="panel-title">
													Nested item #11 <span class="pull-right"><i
														class="glyphicon glyphicon-plus"></i></span>
												</h4>
											</a>
										</div>
										<div id="faq-cat-2-sub-1" class="panel-collapse collapse">
											<div class="panel-body"></div>
										</div>
									</div>
									<div class="panel panel-default panel-faq">
										<div class="panel-heading">
											<a data-toggle="collapse" data-parent="#accordion-cat-2"
												href="#faq-cat-2-sub-2">
												<h4 class="panel-title">
													Nested item #2 <span class="pull-right"><i
														class="glyphicon glyphicon-plus"></i></span>
												</h4>
											</a>
										</div>
										<div id="faq-cat-2-sub-2" class="panel-collapse collapse">
											<div class="panel-body">하아아이</div>
										</div>
									</div>
								</div>
							</div>

							<div class="tab-pane container" id="faq-cat-3">
								<div class="panel-heading">
								<script type="text/javascript">
								$(function(){
									
									inputSchedule(result);					
								});
								</script>
									<jsp:include page="../contents/calendar.jsp" />
								</div>
							</div>
						</div>
					</div>

				</div>
			</div>
		</div>
		</section>

		<!-- Portfolio Grid Section -->
		<section class="portfolio">
		<div class="container1">
			<hr class="star-dark mb-5">
			<h2 class="text-center text-uppercase text-secondary mb-0">그래프
				4개</h2>
			
			<div class="row">

				<div class="col-md-6">
					<h3 class="text-center">111</h3>

								<div id="kkk"></div>
					
					
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

		<!-- Portfolio Grid Section -->
		<section class="mb-0">
		<div class="container">
			<hr class="star-dark mb-5">
			<h2 class="text-center text-uppercase text-secondary mb-0" style="font-size: 2rem;">
			hot clip</h2>
			<div class="row">
				<h3 class="text-center text-white" style="margin: 0 auto;">hotclips.jsp</h3>
				
				<jsp:include page="hotclips2.jsp" />
				
				
			</div>
		</div>
		</section>
	</div>

</body>
</html>