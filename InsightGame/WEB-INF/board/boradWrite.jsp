<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
</head>
<body>
	<div class="input-group mb-3">
	  	<div class="input-group-prepend" id="headerDropbox">
		    <button id="headerBtn" class="btn btn-outline-secondary dropdown-toggle" type="button" 
		    data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">말머리</button>
		    <div id="headerSelect" class="dropdown-menu">
		      <h6 class="dropdown-header" >게임헤더</h6>
		      <div role="separator" class="dropdown-divider"></div>
		      <button class="dropdown-item" type="button" value="game1" onclick='setHeader($(this).val())'>게임1</button>
		      <button class="dropdown-item" type="button" value="game2" onclick='setHeader($(this).val())'>게임2</button>
		      <button class="dropdown-item" type="button" value="game3" onclick='setHeader($(this).val())'>게임3</button>
		      <button class="dropdown-item" type="button" value="game4" onclick='setHeader($(this).val())'>게임4</button>
		      <button class="dropdown-item" type="button" value="game5" onclick='setHeader($(this).val())'>게임5</button>
		    </div>
		</div>
	  	<input id="writeContent" type="text" class="form-control" aria-label="...">
		<div class="input-group-btn">
		    <!-- Buttons -->
		   	<button type="button" id="writeBtn" class="btn btn-default">등록</button>
		</div>
	</div>
	
</body>
</html>