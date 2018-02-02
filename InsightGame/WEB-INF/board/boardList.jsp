<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
</head>
<body>
	<table id="boardTable" class="table" align="center">
		<tbody>
			<c:forEach items="${boardList }" var="list">
				<c:if test="${list.groupLevel eq 0 }">

					<td name="bId" value="${list.bId }" style="text-align:left;  padding-top: 15px; padding-bottom:1px; padding-left:1px;" >${list.writer}</td>
					<td style="text-align:right;  padding-top: 15px; padding-bottom:1px;">
						<button class="btn btn-secondary btn-sm" name="modifyBtn"
							onclick="modifyBtn(${list.bId })">수정</button>
						<button class="btn btn-secondary btn-sm" name="deleteBtn"
							onclick="deleteBtn(${list.bId })">삭제</button>
					</td>

					<tr>
						<td colspan="2" name="header" value="${list.header }" style="text-align:left; padding:0px 1px;">[${list.header }] ${list.content}<c:if
								test="${list.cmts != 0}">[${list.cmts }]</c:if></td>
					</tr>

					<tr>
						<td colspan="2" style="text-align:left; padding:0px 1px;"><fmt:formatDate pattern="yyyy-MM-dd(HH:mm:ss)"
								value="${list.regDate }" /></td>
					</tr>

					<tr id="tr_${list.bId }" class="boards_tr" style="cursor: pointer"
						onclick="<c:if test="${list.cmts != 0}">openComments(${list.bId})</c:if>">
						<td colspan="2" style="text-align:left;">
							<button class="btn btn-secondary btn-sm" name="commentBtn"
								onclick="commentBtn(${list.bId })">댓글</button>
							<%-- 		<c:if test="${loginState }"> --%>

							<%-- 		</c:if> --%>
						</td>
					</tr>


				</c:if>
			</c:forEach>
		</tbody>
		<tfoot>
			<tr>
				<td colspan='2'><button id="getListBtn"
						class="btn btn-outline-secondary btn-lg btn-block">더보기</button>
			</tr>
		</tfoot>
	</table>
</body>
</html>