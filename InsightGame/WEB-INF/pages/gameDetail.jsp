<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
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
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div id="navigation">
		<jsp:include page="../navigation.jsp" />
	</div>
	<script type="text/javascript">
	$(document).ready(function() {
	    $('.collapse').on('show.bs.collapse', function() {
	        var id = $(this).attr('id');
	        $('a[href="#' + id + '"]').closest('.panel-heading').addClass('active-faq');
	        $('a[href="#' + id + '"] .panel-title span').html('<i class="glyphicon glyphicon-minus"></i>');
	    });
	    $('.collapse').on('hide.bs.collapse', function() {
	        var id = $(this).attr('id');
	        $('a[href="#' + id + '"]').closest('.panel-heading').removeClass('active-faq');
	        $('a[href="#' + id + '"] .panel-title span').html('<i class="glyphicon glyphicon-plus"></i>');
	    });
	});
	</script>
		
	<div style="margin: 15%;">
		<div style="float: left; width: 40%;">
			<a href="#"><img src="img/gameimg1.jpg" style="width: 240px;"></a>
		</div>

		<div style="float: left; width: 50%;">
			<table id="boardTable" class="table" align="center">
				<tr>
					<td>게임명</td>
					<td>게임명 내용</td>
				</tr>
				<tr>
					<td>플랫폼</td>
					<td>플랫폼 내용</td>
				</tr>
				<tr>
					<td>장르</td>
					<td>장르 내용</td>
				</tr>
				<tr>
					<td>제작사</td>
					<td>제작사 내용</td>
				</tr>
				<tr>
					<td>이용등급</td>
					<td>이용등급 내용</td>
				</tr>
				<tr>
					<td>출시년도</td>
					<td>출시년도 내용</td>
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


	<!-- Portfolio Grid Section -->


	<div style="position: fixed; left: 0px; top: 550px; width: 50%;">
		<h2 class="text-center text-uppercase">게임소개</h2>
		<div class="row">
			<h3 class="text-center" style="margin: 0 auto;">gameIntroduct.jsp</h3>
			<!-- 			<div id="issues"> -->
			<%-- 				<jsp:include page="gameIssues.do" /> --%>
			<!-- 			</div> -->
		</div>
	</div>

	<div style="position: fixed; left: 49%; top: 550px; width: 50%;">
		<h2 class="text-center text-uppercase">시리즈</h2>
		<div class="row">
			<h3 class="text-center" style="margin: 0 auto;">issues.jsp</h3>
			<!-- 			<div id="issues"> -->
			<%-- 				<jsp:include page="gameIssues.do" /> --%>
			<!-- 			</div> -->
		</div>
	</div>
	
<!-- 	<table id="boardTable" class="table" align="center" style="position: fixed; left: 0px; top: 700px; width: 50%;"> -->
<!-- 		<thead> -->
<!-- 			<tr> -->
<!-- 				<th>히스토리</th> -->
<!-- 				<th>뉴스기사</th> -->
<!-- 				<th>프리뷰/리뷰</th> -->
<!-- 				<th>스크린샷</th> -->
<!-- 				<th>동영상</th> -->
<!-- 				<th>공략</th> -->
<!-- 			</tr> -->
<!-- 		</thead> -->
<!-- 	</table> -->

	<div style="position: fixed; left: 0px; top: 700px; width: 100%; padding-top: 30px">
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
		
		.nav-tabs li a:focus,
		.panel-heading a:focus {
		    outline: none;
		}
		
		.panel-heading a,
		.panel-heading a:hover,
		.panel-heading a:focus {
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
		<div class="container">
		<div class="row">
			<div class="col-md-12 col-md-offset-3">
				<!-- Nav tabs category -->
				<ul class="nav nav-tabs faq-cat-tabs nav-pills">
					<li class="nav-item"><a class="nav-link active" href="#faq-cat-1" role="tab" data-toggle="tab">히스토리</a></li>
					<li class="nav-item"><a href="#faq-cat-2" class="nav-link" role="tab" data-toggle="tab">뉴스기사</a></li>
					<li class="nav-item"><a href="#faq-cat-2" class="nav-link" role="tab" data-toggle="tab">프리뷰/리뷰</a></li>
					<li class="nav-item"><a href="#faq-cat-2" class="nav-link" role="tab" data-toggle="tab">스크린샷</a></li>
					<li class="nav-item"><a href="#faq-cat-2" class="nav-link" role="tab" data-toggle="tab">동영상</a></li>
					<li class="nav-item"><a href="#faq-cat-2" class="nav-link" role="tab" data-toggle="tab">공략</a></li>
				</ul>
				<!-- Tab panes -->
				<div class="tab-content faq-cat-content" style="padding-top: 30px">
					<div class="tab-pane active in fade" id="faq-cat-1">
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
					<div class="tab-pane fade" id="faq-cat-2">
						<div class="panel-group" id="accordion-cat-2">
							<div class="panel panel-default panel-faq">
								<div class="panel-heading">
									<a data-toggle="collapse" data-parent="#accordion-cat-2"
										href="#faq-cat-2-sub-1">
										<h4 class="panel-title">
											Nested item #1 <span class="pull-right"><i
												class="glyphicon glyphicon-plus"></i></span>
										</h4>
									</a>
								</div>
								<div id="faq-cat-2-sub-1" class="panel-collapse collapse">
									<div class="panel-body">

									</div>
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
									<div class="panel-body">

									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	</div>
	
</body>
</html>