<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript">
function modifyBtn(bId){
	alert(bId);
	var targetTr = $('#tr_'+bId);
	
	var content = $("#boardTable tr[id=tr_"+bId+"] td:nth-of-type(3)")
		.replaceWith('<td><input id="re_content" type="text" class="form-control" aria-label="..."></td>')
	var submit = $("#boardTable tr[id=tr_"+bId+"] td:nth-of-type(6)")
		.replaceWith('<button type="button" name="submitBtn" class="btn btn-info"'+
				'onclick="submitBtn('+bId+')">등록</button>');
}
function submitBtn(bId){
	var content = $('#re_content').val()
	$.ajax({
		url: "modify.do", 
		type: "post",
		dataType: "json",
		data:{	
			"bId" : bId,
			"content" : content
		}, 
		contentType: "application/x-www-form-urlencoded;charset=ISO-8859-15",
		success: function(data){
			alert('sucess')		
			location.reload()
		},
		error: function(error){
			alert('asdf')
		}
	});
}
function deleteBtn(bId){
	alert(bId)
	$.ajax({
		url: "delete.do", 
		type: "post",
		dataType: "json",
		data:{	
			"bId" : bId,
		}, 
		success: function(data){
			alert('sucess')		
			location.reload()
		},
		error:function(request,status,error){
		    alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
		}
	});
}
</script>
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
<%-- 				<tr style="cursor: pointer" onclick="alert(${list.bId})"> --%>
				<tr id="tr_${list.bId }" style="cursor: pointer">
					<td>${list.bId }</td>
					<td>[${list.header }]</td>
					<td>${list.content}</td>
					<td>${list.writer}</td>
					<td><fmt:formatDate pattern="yyyy-MM-dd" value="${list.regDate }"/></td>
					<td>
						<button class="btn btn-info" name="modifyBtn" onclick="modifyBtn(${list.bId })">수정</button>
						<button class="btn btn-danger" name="deleteBtn" onclick="deleteBtn(${list.bId })">삭제</button>
					</td>
				</tr>
			</c:forEach>
		</tbody>
<!-- 		<tfoot><tr><td colspan='7'>여기는 바닥</td></tr> </tfoot> -->
	</table>
</body>
</html>