<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>hot tgd</title>
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
		<c:forEach items="${tgdlist}" var="list" varStatus="status">
			<td style="vertical-align:top; width: 202px; max-width:202px;">
			${list.tg_title}
			</td>
		</c:forEach>
	</table>
	</div>


</body>
</html>