<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>핫클립 재생</title>
</head>
<body>

	<table>
		<c:forEach items="${cliplist}" var="list" begin="0" end="4"
			varStatus="status">
			<td><a href ="${list.cp_url}"><img src="${list.cp_img}" width="200px" height="150px" style="padding-left: 5px"></a><br>${list.cp_title}<br>${list.cp_display}&nbsp; 조회수 : ${list.cp_view}<br>${list.cp_game}</td>
		</c:forEach>
	</table>



</body>
</html>