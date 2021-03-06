<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %> 
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
					<tr>
						<td name="bId" value="${list.bId }"style="text-align: left; padding-bottom: 1px; padding-left: 1px; font-weight:bold">
						<c:set var="writer" value="${fn:split(list.writer,'@')[0]}" />${writer}</td>
						<td	style="text-align: right; padding-bottom: 1px; padding-right: 2px; vertical-align: middle;">
							<div class="btn-group dropright">
								<a data-toggle="dropdown" aria-haspopup="true"aria-expanded="false"><img src="img/dotdot.png"></a>
								<div class="dropdown-menu" style="margin-left:4px;">
									<button class="dropdown-item" name="modifyBtn" onclick="modifyBtn(${list.bId })">수정</button>
									<button class="dropdown-item" name="deleteBtn" onclick="deleteBtn(${list.bId })">삭제</button>
								</div>
							</div>
						</td>
					</tr>
					<tr id="trr_${list.bId }">
						<td colspan="2" name="header" writer="${list.writer }" header="${list.header }" content="${list.content }" style="text-align:left; padding-top: 0px; padding-bottom: 0px; padding-left: 1px; padding-right: 8px; border-top:0px;">
						<span style="color: gray">[${list.header }]</span> ${list.content}</td>	
					</tr>
					<tr>
						<td colspan="2" style="text-align: left; padding: 0px 1px; border-top:0px;"><fmt:formatDate pattern="yyyy-MM-dd (HH:mm:ss)" value="${list.regDate }" /></td>
					</tr>
					<tr id="tr_${list.bId }">
						<td colspan="2" style="text-align: left; padding-right: 5px; padding-left: 5px; padding-top: 5px; padding-bottom: 14px; border-top:0px;">
							<button class="btn btn-secondary btn-sm" name="commentBtn" value=${list.cmts }
								onclick="commentBtn(${list.bId })" style='cursor:pointer'>댓글
								<c:if test="${list.cmts != 0}">&nbsp;${list.cmts } </c:if>
							</button>
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