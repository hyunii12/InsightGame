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
<<<<<<< HEAD
=======
<div id="a" style="float:left;">
	
	<c:forEach items="${cliplist}" var="list" begin="0" end="4"	varStatus="status">	
			<td><img src="${list.cp_img}" width="200px" height="150px" style="padding-left: 50px"></td><br>
			<td><a href="${list.cp_url}" style="padding-left: 50px">${list.cp_title}</a></td><br>
			<td><a href="${list.cp_url}" style="padding-left: 50px">${list.cp_display}</td></a> &nbsp;<td>조회수 : ${list.cp_view}</td><br>
			<td><a href="${list.cp_url}" style="padding-left: 50px">${list.cp_game}</a></td><br>
	</c:forEach>
>>>>>>> branch 'master' of https://github.com/hyunii12/InsightGame.git

<<<<<<< HEAD
<%-- 	<c:forEach items="${cliplist}" var="list" begin="0" end="1"	varStatus="status">	 --%>
<%-- 			<td><img src="${list.cp_img}" width="200px" height="150px" style="padding-left: 50px"></td><br> --%>
<%-- 			<td><a href="${list.cp_url}" style="padding-left: 50px">${list.cp_title}</a></td><br> --%>
<%-- 			<td><a href="${list.cp_url}" style="padding-left: 50px">${list.cp_display}</td></a> &nbsp;<td>조회수 : ${list.cp_view}</td><br> --%>
<%-- 			<td><a href="${list.cp_url}" style="padding-left: 50px">${list.cp_game}</a></td><br> --%>
<%-- 	</c:forEach> --%>
=======
</div>
    
>>>>>>> branch 'master' of https://github.com/hyunii12/InsightGame.git


<<<<<<< HEAD

=======
>>>>>>> branch 'master' of https://github.com/hyunii12/InsightGame.git
</body>
</html>

