<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>유형별게임순위</title>
<style type="text/css">
body{
	font-family:Arial, Helvetica, sans-serif;
	margin:0 auto;
}
a:link {
	color: #666;
	font-weight: bold;
	text-decoration:none;
}
a:visited {
	color: #666;
	font-weight:bold;
	text-decoration:none;
}
a:active,
a:hover {
	color: #bd5a35;
	text-decoration:underline;
}


table.gameRankAsType a:link {
	color: #666;
	font-weight: bold;
	text-decoration:none;
}
table.gameRankAsType a:visited {
	color: #999999;
	font-weight:bold;
	text-decoration:none;
}
table.gameRankAsType a:active,
table.gameRankAsType a:hover {
	color: #bd5a35;
	text-decoration:underline;
}
table.gameRankAsType {
	font-family:Arial, Helvetica, sans-serif;
	color:#666;
	font-size:12px;
	text-shadow: 1px 1px 0px #fff;
	background:#eaebec;
	margin:20px;
	border:#ccc 1px solid;

	-moz-border-radius:3px;
	-webkit-border-radius:3px;
	border-radius:3px;

	-moz-box-shadow: 0 1px 2px #d1d1d1;
	-webkit-box-shadow: 0 1px 2px #d1d1d1;
	box-shadow: 0 1px 2px #d1d1d1;
}
table.gameRankAsType th {
	padding:15px;
	border-top:1px solid #fafafa;
	border-bottom:1px solid #e0e0e0;

	background: #ededed;
	background: -webkit-gradient(linear, left top, left bottom, from(#ededed), to(#ebebeb));
	background: -moz-linear-gradient(top,  #ededed,  #ebebeb);
}
table.gameRankAsType th:first-child{
	text-align: left;
	padding-left:20px;
}
table.gameRankAsType tr:first-child th:first-child{
	-moz-border-radius-topleft:3px;
	-webkit-border-top-left-radius:3px;
	border-top-left-radius:3px;
}
table.gameRankAsType tr:first-child th:last-child{
	-moz-border-radius-topright:3px;
	-webkit-border-top-right-radius:3px;
	border-top-right-radius:3px;
}
table.gameRankAsType tr{
	text-align: center;
	padding-left:20px;
}
table.gameRankAsType tr td:first-child{
	text-align: left;
	padding-left:20px;
	border-left: 0;
}
table.gameRankAsType tr td {
	padding:8px;
	border-top: 1px solid #ffffff;
	border-bottom:1px solid #e0e0e0;
	border-left: 1px solid #e0e0e0;
	
	background: #fafafa;
	background: -webkit-gradient(linear, left top, left bottom, from(#fbfbfb), to(#fafafa));
	background: -moz-linear-gradient(top,  #fbfbfb,  #fafafa);
}
table.gameRankAsType tr.even td{
	background: #f6f6f6;
	background: -webkit-gradient(linear, left top, left bottom, from(#f8f8f8), to(#f6f6f6));
	background: -moz-linear-gradient(top,  #f8f8f8,  #f6f6f6);
}
table.gameRankAsType tr:last-child td{
	border-bottom:0;
}
table.gameRankAsType tr:last-child td:first-child{
	-moz-border-radius-bottomleft:3px;
	-webkit-border-bottom-left-radius:3px;
	border-bottom-left-radius:3px;
}
table.gameRankAsType tr:last-child td:last-child{
	-moz-border-radius-bottomright:3px;
	-webkit-border-bottom-right-radius:3px;
	border-bottom-right-radius:3px;
}
table.gameRankAsType tr:hover td{
	background: #f2f2f2;
	background: -webkit-gradient(linear, left top, left bottom, from(#f2f2f2), to(#f0f0f0));
	background: -moz-linear-gradient(top,  #f2f2f2,  #f0f0f0);	
}

</style>

</head>

<body>


<table class="gameRankAsType" cellspacing='0' style="width:850px">
	<tr>
		<th>순위</th>
		<th>온라인(PC)</th>
		<th>모바일</th>
		<th>닌텐도(DS)</th>
		<th>플레이스테이션(PS4)</th>
		<th>xBox</th>
		<th>닌텐도(Switch)</th>
		<th>플레이스테이션(PSvita)</th>
	</tr>
    
	<tr>
		<td>1</td>
		<td style="width: 116px;">${pcbrank[0].name}</td>
		<td style="width: 116px;">${mobilebrank[0].name}</td>
		<td style="width: 116px;">${dsrank[0].name}</td>
		<td style="width: 116px;">${ps4brank[0].name}</td>
		<td style="width: 116px;">${xboxbrank[0].name}</td>
		<td style="width: 116px;">${switchbrank[0].name}</td>
		<td style="width: 116px;">${psvitabrank[0].name}</td>
	</tr>
	
	<tr class='even'>
		<td>2</td>
		<td>${pcbrank[1].name}</td>
		<td>${mobilebrank[1].name}</td>
		<td>${dsrank[1].name}</td>
		<td>${ps4brank[1].name}</td>
		<td>${xboxbrank[1].name}</td>
		<td>${switchbrank[1].name}</td>
		<td>${psvitabrank[1].name}</td>
	</tr>

	<tr>
		<td>3</td>
		<td>${pcbrank[2].name}</td>
		<td>${mobilebrank[2].name}</td>
		<td>${dsrank[2].name}</td>
		<td>${ps4brank[2].name}</td>
		<td>${xboxbrank[2].name}</td>
		<td>${switchbrank[2].name}</td>
		<td>${psvitabrank[2].name}</td>
	</tr>
	<tr class='even'>
		<td>4</td>
		<td>${pcbrank[3].name}</td>
		<td>${mobilebrank[3].name}</td>
		<td>${dsrank[3].name}</td>
		<td>${ps4brank[3].name}</td>
		<td>${xboxbrank[3].name}</td>
		<td>${switchbrank[3].name}</td>
		<td>${psvitabrank[3].name}</td>
	</tr>
	
    <tr>
		<td>5</td>
		<td>${pcbrank[4].name}</td>
		<td>${mobilebrank[4].name}</td>
		<td>${dsrank[4].name}</td>
		<td>${ps4brank[4].name}</td>
		<td>${xboxbrank[4].name}</td>
		<td>${switchbrank[4].name}</td>
		<td>${psvitabrank[4].name}</td>
	</tr>

</table>



</body>
</html>