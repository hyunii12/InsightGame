<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>�帣�����Ӽ���</title>
<style rel="stylesheet">
div.gameRankAsGenreheader {
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
	width: 1000px;
}

table.gameRankAsGenre {
	width: 100%;
}

table.gameRankAsGenre td, table th {
	color: #2b686e;
	padding: 10px;
}

table.gameRankAsGenre td {
	text-align: center;
	vertical-align: middle;
}

table.gameRankAsGenre td:last-child {
	font-size: 0.95em;
	line-height: 1.4;
	text-align: center;
}

table.gameRankAsGenre th {
	background-color: #daeff1;
	font-weight: 300;
	text-align: center;
}

table.gameRankAsGenre tr:nth-child(2n) {
	background-color: white;
}

table.gameRankAsGenre tr:nth-child(2n+1) {
	background-color: #edf7f8;
}

@media screen and (max-width: 700px) {
	table.gameRankAsGenre, tr, td {
		display: block;
	}
	td:first-child {
		position: absolute;
		top: 50%;
		-webkit-transform: translateY(-50%);
		transform: translateY(-50%);
		width: 100px;
	}
	td:not (:first-child ) {
		clear: both;
		margin-left: 100px;
		padding: 4px 20px 4px 90px;
		position: relative;
		text-align: left;
	}
	td:not (:first-child ):before {
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
		font-size: 2em;
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
	td:not (:first-child ) {
		margin: 0;
		padding: 5px 1em;
		width: 100%;
	}
	td:not (:first-child ):before {
		font-size: .8em;
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


	<div class="table-users" style="width: 940px">

		<table class="gameRankAsGenre" cellspacing='0'>
			<tr>
				<th scope="row" style="font-weight:bold">����</th>
				<th style="font-weight:bold">FPS/RTS/TPS</th>
				<th style="font-weight:bold">MO/MMORPG</th>
				<th style="font-weight:bold">�׼�/������</th>
				<th style="font-weight:bold">����/����/����</th>
				<th style="font-weight:bold">������/����/���̽�</th>
			</tr>

			<tr>
				<th scope="row" style="font-weight:bold">1</th>
				<td>${fpsrank[0].name}</td>
				<td>${mmorpgrank[0].name}</td>
				<td>${actionrank[0].name}</td>
				<td>${board_puzzle_musicrank[0].name}</td>
				<td>${sportrank[0].name}</td>
			</tr>

			<tr>
				<th scope="row" style="font-weight:bold">2</th>
				<td>${fpsrank[1].name}</td>
				<td>${mmorpgrank[1].name}</td>
				<td>${actionrank[1].name}</td>
				<td>${board_puzzle_musicrank[1].name}</td>
				<td>${sportrank[1].name}</td>
			</tr>


			<tr>
				<th scope="row" style="font-weight:bold">3</th>
				<td>${fpsrank[2].name}</td>
				<td>${mmorpgrank[2].name}</td>
				<td>${actionrank[2].name}</td>
				<td>${board_puzzle_musicrank[2].name}</td>
				<td>${sportrank[2].name}</td>
			</tr>
			<tr>
				<th scope="row" style="font-weight:bold">4</th>
				<td>${fpsrank[3].name}</td>
				<td>${mmorpgrank[3].name}</td>
				<td>${actionrank[3].name}</td>
				<td>${board_puzzle_musicrank[3].name}</td>
				<td>${sportrank[3].name}</td>
			</tr>

			<tr>
				<th scope="row" style="font-weight:bold">5</th>
				<td>${fpsrank[4].name}</td>
				<td>${mmorpgrank[4].name}</td>
				<td>${actionrank[4].name}</td>
				<td>${board_puzzle_musicrank[4].name}</td>
				<td>${sportrank[4].name}</td>
			</tr>

		</table>

	</div>


</body>
</html>