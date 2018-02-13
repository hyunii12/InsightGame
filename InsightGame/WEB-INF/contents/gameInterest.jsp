<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title></title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">


var game = "${game}"
var OverwatchView = "${OverwatchView}"
var li = "${li}"

<script>
// 	$(document).ready(function() {


// 			});

				var game = "${game}"
				var OverwatchView = "${OverwatchView}"
							
// 				var OverwatchView2=JSON.parse(OverwatchView);
//  				alert(li)
 				
// 				var OverwatchView3=JSON.stringify(OverwatchView2)
				var OverwatchView2=JSON.parse(OverwatchView);
 				alert(OverwatchView2)
 				console.log(OverwatchView2)
				var OverwatchView3=JSON.stringify(OverwatchView2)

				var overlist = "${overlist}"
				var Leaguelist = "${Leaguelist}"
				var Heartlist = "${Heartlist}"
				var Fortnitelist = "${Fortnitelist}"
				var Dotalist = "${Dotalist}"
				var BATTLElist = "${BATTLElist}"
				var wowlist = "${wowlist}"
				var gtalist = "${gtalist}"
				var ctlist = "${ctlist}"
				var IRLlist = "${IRLlist}"
				
				alert(IRLlist)
				
 				var overlist2=JSON.parse(overlist);
 				var Leaguelist2=JSON.parse(Leaguelist);
 				var Heartlist2=JSON.parse(Heartlist);
 				var Fortnitelist2=JSON.parse(Fortnitelist);
 				var Dotalist2=JSON.parse(Dotalist);
 				var BATTLElist2=JSON.parse(BATTLElist);
 				var wowlist2=JSON.parse(wowlist);
 				var gtalist2=JSON.parse(gtalist);
 				var ctlist2=JSON.parse(ctlist);
 				var IRLlist2=JSON.parse(IRLlist);
				
 				var today = new Date();
 				var dd = today.getDate();
 				var mm = today.getMonth()+01; //January is 0!
 				var yyyy = today.getFullYear();
 				
 				var minusdd = today.getDate()-01;
 				
 				if(mm<10) {
 				    mm='0'+mm
 				} 
 				
 				today =yyyy+'-'+ mm+'-'+dd
 				yesterday=yyyy+'-'+ mm+'-'+minusdd
 				alert(yesterday)
				console.log(OverwatchView3)
				var chart = bb.generate({
					data : {
						x : "x",
						columns : [
								[ "x", yesterday,today],
								[ "Overwatch", overlist2[0],overlist2[1]],
								[ "League of Legends", Leaguelist2[0], Leaguelist2[1]],
								[ "Hearthstone", Heartlist2[0], Heartlist2[1]],
								[ "Fortnite", Fortnitelist2[0], Fortnitelist2[1]],
								[ "Dota 2", Dotalist2[0], Dotalist2[1]],
								[ "PLAYERUNKNOWN'S BATTLEGROUNDS", BATTLElist2[0], BATTLElist2[1]],
								[ "World of Warcraft", wowlist2[0], wowlist2[1]],
								[ "Grand Theft Auto V", gtalist2[0], gtalist2[1]],
								[ "Counter-Strike: Global Offensive", ctlist2[0], ctlist2[1]],						
 								[ "IRL", IRLlist2[0], IRLlist2[1]] ]
						// 		["x", "2013-01-01", "2013-01-02", "2013-01-03", "2013-01-04", "2013-01-05", "2013-01-06"],
								[ "x", "2018-02-08", "2018-02-09","2018-02-10" ],
								[ "OverwatchView2", OverwatchView2[0], OverwatchView2[1]],
 								[ "data2", 130, 340,500] ]
					},
					axis : {
						x : {
							type : "timeseries",
							tick : {
								format : "%Y-%m-%d"
							}
						}
					},
					bindto : "#TimeseriesChart"
				});
			});
</script>

</head>
<body>
	<div id="TimeseriesChart"></div>
</body>
</html>