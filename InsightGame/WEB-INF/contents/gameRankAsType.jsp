<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>유형별게임순위</title>
<style rel="stylesheet">


div.gameRankAsTypeheader {
  background-color: #327a81;
  color: white;
  font-size: 1.5em;
  padding: 8px;
  text-align: center;
  text-transform: uppercase;
}



div.table-users {
  border: 1px solid #327a81;
  border-radius: 10px;
  box-shadow: 3px 3px 0 rgba(0, 0, 0, 0.1);
  max-width: calc(100% - 2em);
  margin: 1em auto;
  overflow: hidden;
  width: 1000px;
}

table.gameRankAsType {
  width: 100%;
}
table.gameRankAsType td, table.gameRankAsType th {
  color: #2b686e;
  padding: 5px;
}
table.gameRankAsType td {
  text-align: center;
  vertical-align: middle;
}
table.gameRankAsType td:last-child {
  font-size: 1em;
  line-height: 1.4;
  text-align: center;
}
table.gameRankAsType th {
  background-color: #daeff1;
  font-weight: 300;
  text-align: center;
}
table.gameRankAsType tr:nth-child(2n) {
  background-color: white;
}
table.gameRankAsType tr:nth-child(2n+1) {
  background-color: #edf7f8;
}

@media screen and (max-width: 700px) {
  table.gameRankAsType, tr, td {
    display: block;
  }

  td:first-child {
    position: absolute;
    top: 50%;
    -webkit-transform: translateY(-50%);
            transform: translateY(-50%);
    width: 100px;
  }
  td:not(:first-child) {
    clear: both;
    margin-left: 100px;
    padding: 4px 20px 4px 90px;
    position: relative;
    text-align: left;
  }
  td:not(:first-child):before {
    color: #91ced4;
    content: '';
    display: block;
    left: 0;
    position: absolute;
  }
 

  tr {
    padding: 10px 0;
    position: relative;
  }
  tr:first-child {
    display: none;
  }
}
@media screen and (max-width: 500px) {
  .header {
    background-color: transparent;
    color: white;
    font-size: 1em;
    font-weight: 700;
    padding: 0;
    text-shadow: 2px 2px 0 rgba(0, 0, 0, 0.1);
  }


  td:first-child {
    background-color: #c8e7ea;
    border-bottom: 1px solid #91ced4;
    border-radius: 10px 10px 0 0;
    position: relative;
    top: 0;
    -webkit-transform: translateY(0);
            transform: translateY(0);
    width: 100%;
  }
  
  td:not(:first-child) {
    margin: 0;
    padding: 5px 1em;
    width: 100%;
  }
  td:not(:first-child):before {
    font-size: 1em;
    padding-top: 0.3em;
    position: relative;
  }
  td:last-child {
    padding-bottom: 1rem !important;
  }

  tr {
    background-color: white !important;
    border: 1px solid #6cbec6;
    border-radius: 10px;
    box-shadow: 2px 2px 0 rgba(0, 0, 0, 0.1);
    margin: 0.5rem 0;
    padding: 0;
  }

  .table-users {
    border: none;
    box-shadow: none;
    overflow: visible;
  }
}

</style>
</head>

<body>


	<div class="table-users" style="width:940px">
		
<table class="gameRankAsType" cellspacing='0' style="font-size: 0.9rem">
	<tr>
		<th scope="row">순위</th>
		<th>온라인<br>(PC)</th>
		<th>모바일</th>
		<th>닌텐도<br>(DS)</th>
		<th>플레이스테이션<br>(PS4)</th>
		<th>xBox</th>
		<th>닌텐도<br>(Switch)</th>
		<th>플레이스테이션<br>(PSvita)</th>
	</tr>
    
	<tr>
		<th scope="row">1</th>
		<td style="width: 128px;">${pcbrank[0].name}</td>
		<td style="width: 128px;">${mobilebrank[0].name}</td>
		<td style="width: 128px;">${dsrank[0].name}</td>
		<td style="width: 128px;">${ps4brank[0].name}</td>
		<td style="width: 128px;">${xboxbrank[0].name}</td>
		<td style="width: 128px;">${switchbrank[0].name}</td>
		<td style="width: 128px;">${psvitabrank[0].name}</td>

	</tr>
	
	<tr>
		<th scope="row">2</th>
		<td>${pcbrank[1].name}</td>
		<td>${mobilebrank[1].name}</td>
		<td>${dsrank[1].name}</td>
		<td>${ps4brank[1].name}</td>
		<td>${xboxbrank[1].name}</td>
		<td>${switchbrank[1].name}</td>
		<td>${psvitabrank[1].name}</td>
	</tr>

	<tr>
		<th scope="row">3</th>
		<td>${pcbrank[2].name}</td>
		<td>${mobilebrank[2].name}</td>
		<td>${dsrank[2].name}</td>
		<td>${ps4brank[2].name}</td>
		<td>${xboxbrank[2].name}</td>
		<td>${switchbrank[2].name}</td>
		<td>${psvitabrank[2].name}</td>
	</tr>
	<tr>
		<th scope="row">4</th>
		<td>${pcbrank[3].name}</td>
		<td>${mobilebrank[3].name}</td>
		<td>${dsrank[3].name}</td>
		<td>${ps4brank[3].name}</td>
		<td>${xboxbrank[3].name}</td>
		<td>${switchbrank[3].name}</td>
		<td>${psvitabrank[3].name}</td>
	</tr>
	
    <tr>
		<th scope="row">5</th>
		<td>${pcbrank[4].name}</td>
		<td>${mobilebrank[4].name}</td>
		<td>${dsrank[4].name}</td>
		<td>${ps4brank[4].name}</td>
		<td>${xboxbrank[4].name}</td>
		<td>${switchbrank[4].name}</td>
		<td>${psvitabrank[4].name}</td>
	</tr>

</table>

</div>



</body>
</html>