<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
</head>
<body>
<script type="text/javascript">
<!-- 글쓰기 ajax: 로그인상태 확인 -->
$(document).ready(function(){
	$.ajax({
		url: 'searchBoard_ajax.do',
		dataType : 'json',
		data : 'searchKeyword='+searchKeyword+'&search='+search,
		success : function(data) {
			if (data) {
				$('#boardTable tbody').empty();
				listUpload(data);
			}
		},
		error : function(xhr, status, error){alert('error')}
		
	})
});
</script>
	<div class="input-group">
	  <input id="writeContent" type="text" class="form-control" aria-label="...">
	  <div class="input-group-btn">
	    <!-- Buttons -->
	    <button type="button" class="btn btn-default">등록</button>
	  </div>
	</div>
</body>
</html>