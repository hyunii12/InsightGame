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

		<script type="text/javascript">
			$(document)
					.ready(
							function() {
								$('.collapse')
										.on(
												'show.bs.collapse',
												function() {
													var id = $(this).attr('id');
													$('a[href="#' + id + '"]')
															.closest(
																	'.panel-heading')
															.addClass(
																	'active-faq');
													$(
															'a[href="#'
																	+ id
																	+ '"] .panel-title span')
															.html(
																	'<i class="glyphicon glyphicon-minus"></i>');
												});
								$('.collapse')
										.on(
												'hide.bs.collapse',
												function() {
													var id = $(this).attr('id');
													$('a[href="#' + id + '"]')
															.closest(
																	'.panel-heading')
															.removeClass(
																	'active-faq');
													$(
															'a[href="#'
																	+ id
																	+ '"] .panel-title span')
															.html(
																	'<i class="glyphicon glyphicon-plus"></i>');
												});
							});
		</script>

		<div class="container">
			<div
				style="position: relative; left: 0px; width: 75%; padding-top: 30px; margin-left: auto; margin-right: auto;">
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
								<div class="panel-heading" style="box-sizing: border-box;">

									<jsp:include page="contents/calendar.jsp" />

								</div>
							</div>
						</div>
					</div>

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
				<div id="GI"></div>
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
				<h2 class="text-center text-uppercase text-secondary mb-0" style="font-size: 2rem;">game rank - </h2>
		</div>
		</section>


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