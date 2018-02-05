<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>스트리머레이더차트</title>
<script src='js/jquery.min.js'></script>
<script src='js/Chart.bundle.js'></script>
<script src='js/utils.js'></script>
<style>
    canvas {
        -moz-user-select: none;
        -webkit-user-select: none;
        -ms-user-select: none;
    }
    </style>
</head>

<script>
	var data = {
		labels : [ "Eating", "Drinking", "Sleeping", "Designing", "Coding", "Partying", "Running" ],
		datasets : [ {
			fillColor : "rgba(220,220,220,0.5)",
			strokeColor : "rgba(220,220,220,1)",
			pointColor : "rgba(220,220,220,1)",
			pointStrokeColor : "#fff",
			data : [ 65, 59, 90, 81, 56, 55, 40 ]
		}, {
			fillColor : "rgba(151,187,205,0.5)",
			strokeColor : "rgba(151,187,205,1)",
			pointColor : "rgba(151,187,205,1)",
			pointStrokeColor : "#fff",
			data : [ 28, 48, 40, 19, 96, 27, 100 ]
		} ]
	};
	var ctx = $("#myChart").get(0).getContext("2d");
	new Chart(ctx).Radar(data);
</script>

<body>
<div>
<canvas id="canvas"></canvas>
<!-- </div> <button id="randomizeData">Randomize Data</button> -->
<!--     <button id="addDataset">Add Dataset</button> -->
<!--     <button id="removeDataset">Remove Dataset</button> -->
<!--     <button id="addData">Add Data</button> -->
<!--     <button id="removeData">Remove Data</button> -->
    <script>
    var randomScalingFactor = function() {
        return Math.round(Math.random() * 100);
    };

    var color = Chart.helpers.color;
    var config = {
        type: 'radar',
        data: {
            labels: [["Eating", "Dinner"], ["Drinking", "Water"], "Sleeping", ["Designing", "Graphics"], "Coding", "Cycling", "Running"],
            datasets: [{
                label: "My First dataset",
                backgroundColor: color(window.chartColors.red).alpha(0.2).rgbString(),
                borderColor: window.chartColors.red,
                pointBackgroundColor: window.chartColors.red,
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
                label: "My Second dataset",
                backgroundColor: color(window.chartColors.blue).alpha(0.2).rgbString(),
                borderColor: window.chartColors.blue,
                pointBackgroundColor: window.chartColors.blue,
                data: [
                    randomScalingFactor(),
                    randomScalingFactor(),
                    randomScalingFactor(),
                    randomScalingFactor(),
                    randomScalingFactor(),
                    randomScalingFactor(),
                    randomScalingFactor()
                ]
            },]
        },
        options: {
            legend: {
                position: 'top',
            },
            title: {
                display: true,
                text: 'Chart.js Radar Chart'
            },
            scale: {
              ticks: {
                beginAtZero: true
              }
            }
        }
    };

    window.onload = function() {
        window.myRadar = new Chart(document.getElementById("canvas"), config);
    };

    document.getElementById('randomizeData').addEventListener('click', function() {
        config.data.datasets.forEach(function(dataset) {
            dataset.data = dataset.data.map(function() {
                return randomScalingFactor();
            });
        });

        window.myRadar.update();
    });

    var colorNames = Object.keys(window.chartColors);
    document.getElementById('addDataset').addEventListener('click', function() {
        var colorName = colorNames[config.data.datasets.length % colorNames.length];;
        var newColor = window.chartColors[colorName];

        var newDataset = {
            label: 'Dataset ' + config.data.datasets.length,
            borderColor: newColor,
            backgroundColor: color(newColor).alpha(0.2).rgbString(),
            pointBorderColor: newColor,
            data: [],
        };

        for (var index = 0; index < config.data.labels.length; ++index) {
            newDataset.data.push(randomScalingFactor());
        }

        config.data.datasets.push(newDataset);
        window.myRadar.update();
    });

    document.getElementById('addData').addEventListener('click', function() {
        if (config.data.datasets.length > 0) {
            config.data.labels.push('dataset #' + config.data.labels.length);

            config.data.datasets.forEach(function (dataset) {
                dataset.data.push(randomScalingFactor());
            });

            window.myRadar.update();
        }
    });

    document.getElementById('removeDataset').addEventListener('click', function() {
        config.data.datasets.splice(0, 1);
        window.myRadar.update();
    });

    document.getElementById('removeData').addEventListener('click', function() {
        config.data.labels.pop(); // remove the label first

        config.data.datasets.forEach(function(dataset) {
            dataset.data.pop();
        });

        window.myRadar.update();
    });
    </script>
</body>
</html>