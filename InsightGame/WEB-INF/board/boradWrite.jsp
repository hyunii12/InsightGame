<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript">



</script>
</head>
<body>
	<div style="position: relative;">
		<div class="input-group-prepend" id="headerDropbox" style="position: relative;">
			
			<button id="headerBtn" class="btn btn-outline-secondary dropdown-toggle" type="button"
				data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"
				style="width: 120px;">잡담</button>
				
				<div id="headerSelect" class="dropdown-menu">
					<button class="dropdown-item" type="button" value="잡담"
					onclick='setHeader($(this).val())'>잡담</button>
					<button class="dropdown-item" type="button" value="게임"
					onclick='setHeader($(this).val())'>게임</button>
					<button class="dropdown-item" type="button" value="스트리머"
					onclick='setHeader($(this).val())'>스트리머</button>
				</div>
		</div>
<!-- 			<div id="headerSelect" class="dropdown-menu"> -->
				
<!-- 				<h6 class="dropdown-header">말머리</h6> -->
<!-- 				<button class="dropdown-item" type="button" value="잡담" -->
<!-- 					onclick='setHeader($(this).val())'>잡담</button> -->
<!-- 				<button class="dropdown-item" type="button" value="게임" -->
<!-- 					onclick='setHeader($(this).val())'>게임</button> -->
<!-- 				<button class="dropdown-item" type="button" value="스트리머" -->
<!-- 					onclick='setHeader($(this).val())'>스트리머</button> -->
<!-- 			</div> -->
			
			<span class="counter" style="position: absolute; border-radius: 0.5em; padding: 0 .5em 0 .5em; font-size: 0.75em; top: 100px; right: 77px; z-index: 960;">###</span>
			<button class="btn btn-outline-secondary my-2 my-sm-0" onclick="location.reload()"
				style="position: absolute; padding: .3rem .4rem; left: 95%; top: 6.5px;">
				<img style="width: 15px; height: 15px;" src="img/refresh-arrow.png">
			</button>
		

	</div>
	<div class="input-group" style="margin-bottom: 0; margin-top: 3.5px;">
		<textarea id="writeContent" class="form-control writeLimit" rows="3"
			placeholder="댓글을 입력해 주세요" style="max-height: 78px;"></textarea>
		<div class="input-group-btn">
			<button type="button" id="writeBtn" class="btn btn-default">등록</button>
		</div>
	</div>

</body>
</html>