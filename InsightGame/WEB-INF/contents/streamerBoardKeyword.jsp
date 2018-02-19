<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="css/bootstrap.css">
<link rel="stylesheet" type="text/css" href="css/dc.css" />

<script src="js/d3.js"></script>
<script src="js/crossfilter.js"></script>
<script src="js/dc.js"></script>
</head>
<body>
<div>
         <div id = "bubble"></div>
      </div>

      <script language = "javascript">
         var chart = dc.bubbleChart('#bubble');

         d3.csv("data/howell1.csv", function(errors, people) {
            var mycrossfilter = crossfilter(people);

            people.forEach(function(x) {
               if(x.male == 1) {
                  x.gender = "Male";
               } else {
                  x.gender = "Female";
               }
               x.heightRange = (((Math.floor(x.height / 10)) + 1) * 10);
               x.weightRange = (((Math.floor(x.weight / 10)) + 1) * 10);
            });

            var genderDimension = mycrossfilter.dimension(function(data) {
               return [ data.gender, data.heightRange, data.weightRange ];
            });
            var genderGroup = genderDimension.group().reduceCount();

            chart.width(1200)
               .height(400)
               .margins({top: 10, right: 50, bottom: 30, left: 60})
               .dimension(genderDimension)
               .group(genderGroup)
               .keyAccessor(function (p) {
                  return p.key[1];
               })
               
               .valueAccessor(function (p) {
                  return p.key[2];
               })
               
               .radiusValueAccessor(function (p) {
                  return (Math.floor((p.value / 10)) + 1);
               })
               
               .x(d3.scale.linear().domain([0, 240]))
               .y(d3.scale.linear().domain([-40, 120]))
               .r(d3.scale.linear().domain([0, 20]))
               .minRadiusWithLabel(1000)
               .yAxisPadding(100)
               .xAxisPadding(200)
               .maxBubbleRelativeSize(0.07)
               .renderHorizontalGridLines(true)
               .renderVerticalGridLines(true)
               .renderLabel(true)
               .renderTitle(true)
               .title(function (p) {
                  return p.key[0]
                  + "\n"
                  + "Height: " + p.key[1] + " cm\n"
                  + "Weight: " + p.key[2] + " kg\n"
                  + "Count: " + p.value;
               });
               
            chart.yAxis().tickFormat(function (s) {
               return s + " cm";
            });
               
            chart.xAxis().tickFormat(function (s) {
               return s + " kg";
            });

            chart.render();
         });
      </script>
   </body>
</html>