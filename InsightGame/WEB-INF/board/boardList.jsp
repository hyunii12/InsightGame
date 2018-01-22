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
<script type="text/javascript">
function writeBtn_comment(bId){
	
}
function commentBtn(bId){
	var targetTr = $('#tr_'+bId);
	if(targetTr.next('tr').attr('id') == 'tr_cmt_'+bId){
		targetTr.next('tr').remove()
		targetTr.find('button[name=commentBtn]').text('댓글')
		targetTr.css("background", "");
	}
	else{
		targetTr.find('button[name=commentBtn]').text('취소')
		targetTr.css('background', 'red');
		targetTr.after(function(){
			// tr> td1('ㄴ') td2,3,4('input') td5(작성자) td6('button')
			return '<tr id=tr_cmt_'+bId+'><td>ㄴ</td>'+
				'<td colspan="3"><input id="writeComment" type="text" class="form-control" aria-label="..."></td>'+
				'<td>작성자</td>'+
				'<td><button type="button" id="writeBtn_comment" class="btn btn-default">등록</button></td></tr>';
		});
	}
}
</script>
</body>
</html>