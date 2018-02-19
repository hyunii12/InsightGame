<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<script src="//code.jquery.com/jquery-1.11.0.min.js"></script>
<script src="https://d3js.org/d3.v4.min.js"></script>
<script src="js/billboard.js"></script>
<link rel="stylesheet" href="css/billboard.css">
<script src="http://code.jquery.com/jquery-1.4.4.min.js"></script>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title></title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script>
   $(document).ready(
         function() {

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

            var overlist2 = JSON.parse(overlist);
            var Leaguelist2 = JSON.parse(Leaguelist);
            var Heartlist2 = JSON.parse(Heartlist);
            var Fortnitelist2 = JSON.parse(Fortnitelist);
            var Dotalist2 = JSON.parse(Dotalist);
            var BATTLElist2 = JSON.parse(BATTLElist);
            var wowlist2 = JSON.parse(wowlist);
            var gtalist2 = JSON.parse(gtalist);
            var ctlist2 = JSON.parse(ctlist);
            var IRLlist2 = JSON.parse(IRLlist);

            
            var today = new Date();
            var dd = today.getDate();
            var mm = today.getMonth() + 01; //January is 0!
            var yyyy = today.getFullYear();

            var minusdd = today.getDate() - 01;

		    if (mm < 10) {
               mm = '0' + mm
            }

//             today = yyyy + '-' + mm + '-' + dd
//             yesterday = yyyy + '-' + mm + '-' + minusdd
          
				var today = new Date();
				var dd = today.getDate();
				var mm = today.getMonth() + 01; //January is 0!
				var yyyy = today.getFullYear();

				var minusdd = today.getDate() - 01;
				var minusdd2 = today.getDate() - 02;
				var minusdd3 = today.getDate() - 03;
				var minusdd4 = today.getDate() - 04;
				var minusdd5 = today.getDate() - 05;
				

				if (mm < 10) {
					mm = '0' + mm
				}

// 				today = yyyy + '-' + mm + '-' + dd
				yesterday = yyyy + '-' + mm + '-' + minusdd
				TDA = yyyy + '-' + mm + '-' + minusdd2
				TDA3 = yyyy + '-' + mm + '-' + minusdd3
				TDA4 = yyyy + '-' + mm + '-' + minusdd4
				TDA5 = yyyy + '-' + mm + '-' + minusdd5

				var chart = bb.generate({
					data : {
						x : "x",
						columns : [
								[ "x", TDA5,TDA4,TDA3,TDA,yesterday,today],
								[ "Overwatch", overlist2[0],overlist2[1],overlist2[2],overlist2[3],overlist2[4],overlist2[5]],
								[ "League of Legends", Leaguelist2[0], Leaguelist2[1], Leaguelist2[2], Leaguelist2[3], Leaguelist2[4], Leaguelist2[5]],
								[ "Hearthstone", Heartlist2[0], Heartlist2[1], Heartlist2[2], Heartlist2[3], Heartlist2[4], Heartlist2[5]],
								[ "Fortnite", Fortnitelist2[0], Fortnitelist2[1], Fortnitelist2[2], Fortnitelist2[3], Fortnitelist2[4], Fortnitelist2[5]],
								[ "Dota 2", Dotalist2[0], Dotalist2[1], Dotalist2[2], Dotalist2[3], Dotalist2[4], Dotalist2[5]],
								[ "PLAYERUNKNOWN'S BATTLEGROUNDS", BATTLElist2[0], BATTLElist2[1], BATTLElist2[2], BATTLElist2[3], BATTLElist2[4], BATTLElist2[5]],
								[ "World of Warcraft", wowlist2[0], wowlist2[1], wowlist2[2], wowlist2[3], wowlist2[4], wowlist2[5]],
								[ "Grand Theft Auto V", gtalist2[0], gtalist2[1], gtalist2[2], gtalist2[3], gtalist2[4], gtalist2[5]],
								[ "Counter-Strike: Global Offensive", ctlist2[0], ctlist2[1], ctlist2[2], ctlist2[3], ctlist2[4], ctlist2[5]],						
 								[ "IRL", IRLlist2[0], IRLlist2[1], IRLlist2[2], IRLlist2[3], IRLlist2[4], IRLlist2[5]] ]
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
			})
</script>

</head>
<body>
   <div id="TimeseriesChart"></div>
</body>
</html>