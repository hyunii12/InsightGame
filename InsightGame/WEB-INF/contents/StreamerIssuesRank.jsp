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
<title>StreamerIssuesRank</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script>
$(document).ready(
        function() {

                 var hanryang1125list = "${hanryang1125list}"
                 var saddummylist = "${saddummylist}"
                 var dingceptionlist = "${dingceptionlist}"
                 var gabrielcrolist = "${gabrielcrolist}"
                 var woowakgoodlist = "${woowakgoodlist}"
                 var ddahyonilist = "${ddahyonilist}"
                 var kimdoelist = "${kimdoelist}"
                 var zilionerlist = "${zilionerlist}"
                 var gmdkdslalist = "${gmdkdslalist}"
                 var wpghd321list = "${wpghd321list}"

                 var hanryang1125list2 = JSON.parse(hanryang1125list);
                 var saddummylist2 = JSON.parse(saddummylist);
                 var dingceptionlist2 = JSON.parse(dingceptionlist);
                 var gabrielcrolist2 = JSON.parse(gabrielcrolist);
                 var woowakgoodlist2 = JSON.parse(woowakgoodlist);
                 var ddahyonilist2 = JSON.parse(ddahyonilist);
                 var kimdoelist2 = JSON.parse(kimdoelist);
                 var zilionerlist2 = JSON.parse(zilionerlist);
                 var gmdkdslalist2 = JSON.parse(gmdkdslalist);
                 var wpghd321list2 = JSON.parse(wpghd321list);

                 
                 var today = new Date();
                 var dd = today.getDate();
                 var mm = today.getMonth() + 01; //January is 0!
                 var yyyy = today.getFullYear();

                 var minusdd = today.getDate() - 01;

     		    if (mm < 10) {
                    mm = '0' + mm
                 }

//                  today = yyyy + '-' + mm + '-' + dd
//                  yesterday = yyyy + '-' + mm + '-' + minusdd
               
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

//      				today = yyyy + '-' + mm + '-' + dd
     				yesterday = yyyy + '-' + mm + '-' + minusdd
     				TDA = yyyy + '-' + mm + '-' + minusdd2
     				TDA3 = yyyy + '-' + mm + '-' + minusdd3
     				TDA4 = yyyy + '-' + mm + '-' + minusdd4
     				TDA5 = yyyy + '-' + mm + '-' + minusdd5
     				
     				
     				var chart = bb.generate({
    					data : {
    						x : "x",
    						columns : [
    								[ "x", yesterday,today],
    								[ "풍월량", hanryang1125list2[0],hanryang1125list2[1]],
    								[ "서새봄냥", saddummylist2[0], saddummylist2[1]],
    								[ "따효니", dingceptionlist2[0], dingceptionlist2[1]],
    								[ "머독", gabrielcrolist2[0], gabrielcrolist2[1]],
    								[ "러너", woowakgoodlist2[0], woowakgoodlist2[1]],
    								[ "우왁굳", ddahyonilist2[0], ddahyonilist2[1]],
    								[ "룩삼", kimdoelist2[0], kimdoelist2[1]],
    								[ "소풍왔니", zilionerlist2[0], zilionerlist2[1]],
    								[ "똘킹", gmdkdslalist2[0], gmdkdslalist2[1]],						
     								[ "윤루트", wpghd321list2[0], wpghd321list2[1]] ]
    					},
    					axis : {
    						x : {
    							type : "timeseries",
    							tick : {
    								format : "%Y-%m-%d"
    							}
    						}
    					},
    					bindto : "#StreamerTimeseriesChart"
    				});
    			})
</script>

</head>
<body>
   <div id="StreamerTimeseriesChart"></div>
</body>
</html>