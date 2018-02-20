<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Game Issue Rank</title>
<style rel="stylesheet">
#pagination a:before {content: "<"}
#pagination a:after {content: ">"}
div.gameIssuesRankheader {
	background-color: #327a81;
	color: white;
	font-size: 1.5em;
	padding: 1rem;
	text-align: center;
	text-transform: uppercase;
}

div.table-users {
	border: 1px solid #327a81;
	border-radius: 10px;
	box-shadow: 3px 3px 0 rgba(0, 0, 0, 0.1);
	max-width: calc(100% - 2em);
	margin: 1em auto;
	overflow: hidden;
	width: 1000px;
}

table.gameIssuesRank {
	width: 100%;
}

table.gameIssuesRank td, table th {
	color: #2b686e;
	padding: 10px;
}

table.gameIssuesRank td {
	text-align: center;
	vertical-align: middle;
}

table.gameIssuesRank td:last-child {
	font-size: 0.95em;
	line-height: 1.4;
	text-align: center;
}

table.gameIssuesRank th {
	background-color: #daeff1;
	font-weight: 300;
	text-align: center;
}

table.gameIssuesRank tr:nth-child(2n) {
	background-color: white;
}

table.gameIssuesRank tr:nth-child(2n+1) {
	background-color: #edf7f8;
}

@media screen and (max-width: 700px) {
	table.gameIssuesRank, tr, td {
		display: block;
	}
	td:first-child {
		position: absolute;
		top: 50%;
		-webkit-transform: translateY(-50%);
		transform: translateY(-50%);
		width: 100px;
	}
	td:not (:first-child ) {
		clear: both;
		margin-left: 100px;
		padding: 4px 20px 4px 90px;
		position: relative;
		text-align: left;
	}
	td:not (:first-child ):before {
		color: #91ced4;
		content: '';
		display: block;
		left: 0;
		position: absolute;
	}
	tr {
		padding: 10px 0;
		position: relative;
	}
	tr:first-child {
		display: none;
	}
}

@media screen and (max-width: 500px) {
	.header {
		background-color: transparent;
		color: white;
		font-size: 2em;
		font-weight: 700;
		padding: 0;
		text-shadow: 2px 2px 0 rgba(0, 0, 0, 0.1);
	}
	td:first-child {
		background-color: #c8e7ea;
		border-bottom: 1px solid #91ced4;
		border-radius: 10px 10px 0 0;
		position: relative;
		top: 0;
		-webkit-transform: translateY(0);
		transform: translateY(0);
		width: 100%;
	}
	td:not (:first-child ) {
		margin: 0;
		padding: 5px 1em;
		width: 100%;
	}
	td:not (:first-child ):before {
		font-size: .8em;
		padding-top: 0.3em;
		position: relative;
	}
	td:last-child {
		padding-bottom: 1rem !important;
	}
	tr {
		background-color: white !important;
		border: 1px solid #6cbec6;
		border-radius: 10px;
		box-shadow: 2px 2px 0 rgba(0, 0, 0, 0.1);
		margin: 0.5rem 0;
		padding: 0;
	}
	.table-users {
		border: none;
		box-shadow: none;
		overflow: visible;
	}
}
</style>
</head>
<body>
<c:set var='STAGE' value="1" />

	<div id="div_gameIssuesRank" class="table-users" style="width: 940px">
		<div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
			  <ol class="carousel-indicators">
			    <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
			    <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
			  </ol>
			  <div class="carousel-inner">
			    <div class="carousel-item active">
<!-- 					<img class="d-block w-100" src="..." alt="First slide"> -->
			      	<table class="gameIssuesRank" cellspacing='0'>
						<thead>
						<tr>
							<th colspan="2" scope="row" style="font-weight:bold">GAME ISSUE RANK</th>
			<!-- 				<th style="font-weight:bold">플랫폼</th> -->
			<!-- 				<th style="font-weight:bold">장르</th> -->
						</tr>
						</thead>
						<tbody>
							<c:forEach items="${todayIssuesList }" var="item" varStatus="index" begin="0" end="9">
								<tr>
									<th scope="row" style="font-weight:bold">${index.index + 1}</th>
									<td>${item.title}</td>
					<%-- 				<td>${item.name}</td> --%>
					<%-- 				<td>${item.name}</td> --%>
								</tr>
							</c:forEach>
						</tbody>
					</table>
			    </div>
			    <div class="carousel-item">
<!-- 			      <img class="d-block w-100" src="..." alt="Second slide"> -->
			       <table class="gameIssuesRank" cellspacing='0'>
						<thead>
						<tr>
							<th colspan="2" scope="row" style="font-weight:bold">GAME ISSUE RANK</th>
						</tr>
						</thead>
						<tbody>
							<c:forEach items="${todayIssuesList }" var="item" varStatus="index" begin="10" end="19">
								<tr>
									<th scope="row" style="font-weight:bold">${index.index + 1}</th>
									<td>${item.title}</td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
			    </div>
			  </div>
			  <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
			    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
			    <span class="sr-only">Previous</span>
			  </a>
			  <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
			    <span class="carousel-control-next-icon" aria-hidden="true"></span>
			    <span class="sr-only">Next</span>
			  </a>
			</div>

	</div>


</body>
</html>