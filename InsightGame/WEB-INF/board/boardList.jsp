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
		<tbody id="bodyBoardTable">
			<c:forEach items="${boardList }" var="list">
				<c:if test="${list.groupLevel eq 0 }">
					<tr id="tr_${list.bId }" class="boards_tr" style="cursor: pointer" 
					onclick="<c:if test="${list.cmts != 0}">openComments(${list.bId})</c:if>">
						<td name="bId" value="${list.bId }" >${list.bId }</td>
						<td name="header" value="${list.header }">[${list.header }]</td>
						<td name="content" value="${list.content }">${list.content}<c:if test="${list.cmts != 0}">[${list.cmts }]</c:if></td>
						<td name="writer" value="${list.writer }">${list.writer}</td>
						<td><fmt:formatDate pattern="yyyy-MM-dd(HH:mm:ss)" value="${list.regDate }"/></td>
						<td>
							<button class="btn btn-secondary btn-sm" name="commentBtn" onclick="commentBtn(${list.bId })">댓글</button>
				<%-- 		<c:if test="${loginState }"> --%>
								<button class="btn btn-secondary btn-sm" name="modifyBtn" onclick="modifyBtn(${list.bId })">수정</button>
								<button class="btn btn-secondary btn-sm" name="deleteBtn" onclick="deleteBtn(${list.bId })">삭제</button>
				<%-- 		</c:if> --%>
						</td>
					</tr>
				</c:if>
			</c:forEach>
		</tbody>
		<tfoot>
			<tr><td colspan='6'><button id="getListBtn" class="btn btn-outline-secondary btn-lg btn-block">더보기</button></tr>
		</tfoot>
	</table>
</body>
</html>