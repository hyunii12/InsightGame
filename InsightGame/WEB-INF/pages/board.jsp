<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
    <div class="container" style="margin-top: 15%">
        <div id="navigation" style="z-index: 2;">
            <jsp:include page="../navigation.jsp" />
        </div>


        <div>
			<script src="js/board.js"></script>
			<style>
				#div_write{margin-left:20px;margin-right:20px}
			</style>
        	<div id="div_write">
				<jsp:include page="../board/boradWrite.jsp" />    	
        	</div>
        	<div id="div_boardList" style="text-align: center; margin-top: 3%;">
	        	<jsp:include page="../board/boardList.jsp" />
        	</div>
        </div>
    </div>

</body>
</html>