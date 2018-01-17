<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class="container" style="margin-top: 15%">
		<div id="navigation">
			<jsp:include page="../navigation.jsp" />
		</div>
		<div>
			<div style="float: left; width: 50%;">
				<a href="#"><img src="img/gameimg1.jpg" style="width: 360px;"></a>
			</div>
			<div style="float: left; width: 50%;">
				<table id="boardTable" class="table" align="center">
					<thead>
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

					</thead>
					<tbody>
						<c:forEach items="" var="list">
							<%-- 				<tr style="cursor: pointer" onclick="alert(${list.bId})"> --%>
							<tr style="cursor: pointer">
								<td>1</td>
								<td>2</td>
								<td>3</td>
								<td>4</td>
								<td>5</td>
								<td>
									<button class="btn btn-info">수정</button>
									<button class="btn btn-danger">삭제</button>
								</td>
							</tr>
						</c:forEach>
					</tbody>
					<!-- 		<tfoot><tr><td colspan='7'>여기는 바닥</td></tr> </tfoot> -->
				</table>
			</div>
		</div>
</body>
</html>