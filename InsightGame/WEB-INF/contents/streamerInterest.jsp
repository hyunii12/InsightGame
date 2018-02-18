<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<style rel="stylesheet">


div.streamerheader {
  background-color: #327a81;
  color: white;
  font-size: 1.5em;
  padding: 1rem;
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
  width: 800px;
}

table.streamerinterest {
  width: 100%;
}
table.streamerinterest td, table.streamerinterest th {
  color: #2b686e;
  padding: 10px;
}
table.streamerinterest td {
  text-align: center;
  vertical-align: middle;
}
table.streamerinterest td:last-child {
  font-size: 0.95em;
  line-height: 1.4;
  text-align: center;
}
table.streamerinterest th {
  background-color: #daeff1;
  font-weight: 300;
  text-align: center;
}
table.streamerinterest tr:nth-child(2n) {
  background-color: white;
}
table.streamerinterest tr:nth-child(2n+1) {
  background-color: #edf7f8;
}

@media screen and (max-width: 700px) {
  table.streamerinterest, tr, td {
    display: block;
  }

table.streamerinterest td:first-child {
    position: absolute;
    top: 50%;
    -webkit-transform: translateY(-50%);
            transform: translateY(-50%);
    width: 100px;
  }
 table.streamerinterest td:not(:first-child) {
    clear: both;
    margin-left: 100px;
    padding: 4px 20px 4px 90px;
    position: relative;
    text-align: left;
  }
 table.streamerinterest td:not(:first-child):before {
    color: #91ced4;
    content: '';
    display: block;
    left: 0;
    position: absolute;
  }
 

 table.streamerinterest tr {
    padding: 10px 0;
    position: relative;
  }
 table.streamerinterest tr:first-child {
    display: none;
  }
}
@media screen and (max-width: 500px) {
  .header {
    background-color: transparent;
    color: white;
    font-size: 2em;
    font-weight: 700;
    padding: 0;
    text-shadow: 2px 2px 0 rgba(0, 0, 0, 0.1);
  }


 table.streamerinterest td:first-child {
    background-color: #c8e7ea;
    border-bottom: 1px solid #91ced4;
    border-radius: 10px 10px 0 0;
    position: relative;
    top: 0;
    -webkit-transform: translateY(0);
            transform: translateY(0);
    width: 100%;
  }
  
  table.streamerinterest td:not(:first-child) {
    margin: 0;
    padding: 5px 1em;
    width: 100%;
  }
  table.streamerinterest td:not(:first-child):before {
    font-size: .8em;
    padding-top: 0.3em;
    position: relative;
  }
 table.streamerinterest td:last-child {
    padding-bottom: 1rem !important;
  }

  table.streamerinterest tr {
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
<body>

	<div class="table-users">
		
		<table class="streamerinterest">
			<tr>
				<th scope="row">스트리머</th>
				<td>스트리머1</td>
				<td>스트리머2</td>
				<td>스트리머3</td>
				<td>스트리머4</td>
				<td>스트리머5</td>
			</tr>

			<tr>
				<th scope="row">1</th>
				<td>게임</td>
				<td>게임</td>
				<td>게임</td>
				<td>게임</td>
				<td>게임</td>

			</tr>
			<tr>
				<th scope="row">2</th>
				<td>게임</td>
				<td>게임</td>
				<td>게임</td>
				<td>게임</td>
				<td>게임</td>
			</tr>

			<tr>
				<th scope="row">3</th>
				<td>게임</td>
				<td>게임</td>
				<td>게임</td>
				<td>게임</td>
				<td>게임</td>
			</tr>

			<tr>
				<th scope="row">4</th>
				<td>게임</td>
				<td>게임</td>
				<td>게임</td>
				<td>게임</td>
				<td>게임</td>

			</tr>
			<tr>
				<th scope="row">5</th>
				<td>게임</td>
				<td>게임</td>
				<td>게임</td>
				<td>게임</td>
				<td>게임</td>
			</tr>


		</table>
	</div>


</body>
</html>