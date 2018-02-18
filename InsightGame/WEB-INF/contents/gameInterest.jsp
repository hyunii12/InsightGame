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

            if (mm < 10) {
               mm = '0' + mm
            }

//             today = yyyy + '-' + mm + '-' + dd
            yesterday = yyyy + '-' + mm + '-' + minusdd
          
				var today = new Date();
				var dd = today.getDate();
				var mm = today.getMonth() + 01; //January is 0!
				var yyyy = today.getFullYear();

				var minusdd = today.getDate() - 01;
				var minusdd2 = today.getDate() - 02;

				if (mm < 10) {
					mm = '0' + mm
				}

// 				today = yyyy + '-' + mm + '-' + dd
				yesterday = yyyy + '-' + mm + '-' + minusdd
				TDA = yyyy + '-' + mm + '-' + minusdd2

				var chart = bb.generate({
					data : {
						x : "x",
						columns : [
								[ "x", TDA,yesterday,today],
								[ "Overwatch", overlist2[0],overlist2[1],overlist2[2]],
								[ "League of Legends", Leaguelist2[0], Leaguelist2[1], Leaguelist2[2]],
								[ "Hearthstone", Heartlist2[0], Heartlist2[1], Heartlist2[2]],
								[ "Fortnite", Fortnitelist2[0], Fortnitelist2[1], Fortnitelist2[2]],
								[ "Dota 2", Dotalist2[0], Dotalist2[1], Dotalist2[2]],
								[ "PLAYERUNKNOWN'S BATTLEGROUNDS", BATTLElist2[0], BATTLElist2[1], BATTLElist2[2]],
								[ "World of Warcraft", wowlist2[0], wowlist2[1], wowlist2[2]],
								[ "Grand Theft Auto V", gtalist2[0], gtalist2[1], gtalist2[2]],
								[ "Counter-Strike: Global Offensive", ctlist2[0], ctlist2[1], ctlist2[2]],						
 								[ "IRL", IRLlist2[0], IRLlist2[1], IRLlist2[2]] ]
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