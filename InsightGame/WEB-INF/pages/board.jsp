<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
    <div id="wrap">
        <div id="navigation">
            <jsp:include page="../navigation.jsp" />
        </div>
        <div style="margin-top: 12%">
			<style>
				#div_write{margin-left:20px;margin-right:20px}
			</style>
        	<div id="div_write">
				<jsp:include page="../board/boradWrite.jsp" />    	
        	</div>
        	<div id="div_boardList" style="text-align: center">
	        	<jsp:include page="../board/boardList.jsp" />
        	</div>
        </div>
    </div>
</body>
</html>