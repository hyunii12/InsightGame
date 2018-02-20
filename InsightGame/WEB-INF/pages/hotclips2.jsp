<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>hot2 clip</title>
<style type="text/css">
	.ellip {
		white-space:nowrap;
		overflow:hidden;
		text-overflow:ellipsis;
	}
</style>
</head>
<body>

<div>
	<table style="margin-top: 30px; margin-bottom: 4px;">
		<c:forEach items="${streamerclip}" var="list" begin="0" end="4"	varStatus="status">
			<td style="vertical-align:top; width: 202px; max-width:202px;">
			<a href ="${list.cp_url}">
			<img src="${list.cp_img}" width="195px" height="150px" style="border-radius: 8px; padding-left: 2.5px; padding-right: 2.5px;"></a>
		</c:forEach>
	</table>
	</div>
	
	<div style="position: relative;">
	<table style="margin: 0;">
		<c:forEach items="${streamerclip}" var="list" begin="0" end="4"	varStatus="status">
			<td class="ellip" style="padding-left: 11px; padding-right: 11px; padding-top:0px; vertical-align:top; width: 202px; max-width: 202px;">
				<a href ="${list.cp_url}" style="text-decoration:none">
					<span style="color: black; font-size: 14px;">${list.cp_title}</span></a><br>
					<span style="color: gray; font-size: 14px;">${list.cp_game}</span><br>
					<span style="color: purple; font-size: 14px; font-weight:bold">${list.cp_display}</span>
			</td>
		</c:forEach>
	</table>
	</div>
</body>
</html>