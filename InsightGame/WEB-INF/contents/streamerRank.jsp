<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>스트리머 랭킹차트</title>
<script src='js/jquery.min.js'></script>
<script src='js/Chart.bundle.js'></script>
<script src='js/utils.js'></script>
</head>
<body>

  <div>
        <canvas id="rank" width="800" height="400"></canvas>
    </div>
   
    <script>
        var barChartData = {
            labels: ["streamer1", "streamer2", "streamer3", "streamer4", "streamer5", "streamer6", "streamer7"],
            datasets: [{
                label: '시간',
                backgroundColor: window.chartColors.purple,
                data: [
                    randomScalingFactor(),
                    randomScalingFactor(),
                    randomScalingFactor(),
                    randomScalingFactor(),
                    randomScalingFactor(),
                    randomScalingFactor(),
                    randomScalingFactor()
                ]
            }, {
                label: '팔로우',
                backgroundColor: window.chartColors.red,
                data: [
                    randomScalingFactor(),
                    randomScalingFactor(),
                    randomScalingFactor(),
                    randomScalingFactor(),
                    randomScalingFactor(),
                    randomScalingFactor(),
                    randomScalingFactor()
                ]
            }, {
                label: 'IRL/방송시간',
                backgroundColor: window.chartColors.yellow,
                data: [
                    randomScalingFactor(),
                    randomScalingFactor(),
                    randomScalingFactor(),
                    randomScalingFactor(),
                    randomScalingFactor(),
                    randomScalingFactor(),
                    randomScalingFactor()
                ]
            }]

        };
        window.onload = function() {
        	
        	window.myRadar = new Chart(document.getElementById("radar"), config);
        	
            var ctx = document.getElementById("rank").getContext("2d");
            window.myBar = new Chart(ctx, {
                type: 'bar',
                data: barChartData,
                options: {
                    title:{
                        display:true,
                        text:"Streamer Ranking"
                    },
                    tooltips: {
                        mode: 'index',
                        intersect: false
                    },
                    responsive: true,
                    scales: {
                        xAxes: [{
                            stacked: true,
                        }],
                        yAxes: [{
                            stacked: true
                        }]
                    }
                }
            });
        };

       
    </script>
</body>

</html>