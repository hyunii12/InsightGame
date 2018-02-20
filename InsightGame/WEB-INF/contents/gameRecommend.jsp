<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here!</title>
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
/*   border: 1px solid #327a81; */
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

<div class="table-users" style="width:20%; height: 280px;">
		
	<table class="gameRankAsType" cellspacing='0' style="font-size: 0.9rem">
		<tr>
			<th colspan="2" style="font-weight:bold">게임 추천</th>
		</tr>
		<tr>
			<th scope="row" style="font-weight:bold">1</th>
			<td style="width: 128px; height: 50px;">
			<a href="searchGame.do?searchSelect=&search=${gameTitle[0]}" style="text-decoration: none;">${gameTitle[0]}</a></td>
		</tr>
		<tr>
			<th scope="row" style="font-weight:bold; width: 50px; height: 50px;">2</th>
			<td><a href="searchGame.do?searchSelect=&search=${gameTitle[1]}" style="text-decoration: none;">${gameTitle[1]}</a></td>
		</tr>
		<tr>
			<th scope="row" style="font-weight:bold; width: 50px; height: 50px;">3</th>
			<td><a href="searchGame.do?searchSelect=&search=${gameTitle[2]}" style="text-decoration: none;">${gameTitle[2]}</a></td>
		</tr>
		<tr>
			<th scope="row" style="font-weight:bold; width: 50px; height: 50px;">4</th>
			<td><a href="searchGame.do?searchSelect=&search=${gameTitle[3]}" style="text-decoration: none;">${gameTitle[3]}</a></td>
		</tr>
	    <tr>
			<th scope="row" style="font-weight:bold; width: 50px; height: 50px;">5</th>
			<td><a href="searchGame.do?searchSelect=&search=${gameTitle[4]}" style="text-decoration: none;">${gameTitle[4]}</a></td>
		</tr>
	</table>

</div>

</body>
</html>