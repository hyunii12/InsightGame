<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
</head>
<body>
	<table id="boardTable" class="table" align="center">
		<thead>
			<tr>
				<th>번호</th><th>[게임]</th><th>내용</th><th>작성자</th><th>작성시간</th><th>-</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${boardList }" var="list">
				<tr id="tr_${list.bId }" style="cursor: pointer">
					<td>${list.bId }</td>
					<td>[${list.header }]</td>
					<td>${list.content}</td>
					<td>${list.writer}</td>
					<td><fmt:formatDate pattern="yyyy-MM-dd" value="${list.regDate }"/></td>
					<td>
						<button class="btn btn-info commentBtn" name="commentBtn" onclick="commentBtn(${list.bId })">댓글</button>
<%-- 						<c:if test="${loginState }"> --%>
							<button class="btn btn-primary" name="modifyBtn" onclick="modifyBtn(${list.bId })">수정</button>
							<button class="btn btn-danger" name="deleteBtn" onclick="deleteBtn(${list.bId })">삭제</button>
<%-- 						</c:if> --%>
					</td>
				</tr>
			</c:forEach>
		</tbody>
<!-- 		<tfoot><tr><td colspan='7'>여기는 바닥</td></tr> </tfoot> -->
	</table>
</body>
</html>