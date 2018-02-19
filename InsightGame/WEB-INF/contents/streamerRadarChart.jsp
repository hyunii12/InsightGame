<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<script src="https://d3js.org/d3.v5.js"></script>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>버블</title>
</head>
<script>
$(document).ready(function(){
var diameter = 500, //max size of the bubbles
color = d3.scale.category20b(); //color category

var bubble = d3.layout.pack()
.sort(null)
.size([diameter, diameter])
.padding(1.5);

var svg = d3.select("body")
.append("svg")
.attr("width", diameter)
.attr("height", diameter)
.attr("class", "bubble");

d3.csv("C:/data/fruit.csv", function(error, data){

//convert numerical values from strings to numbers
data = data.map(function(d){ d.value = +d["Amount"]; return d; });

//bubbles needs very specific format, convert data to this.
var nodes = bubble.nodes({children:data}).filter(function(d) { return !d.children; });

//setup the chart
var bubbles = svg.append("g")
    .attr("transform", "translate(0,0)")
    .selectAll(".bubble")
    .data(nodes)
    .enter();

//create the bubbles
bubbles.append("circle")
    .attr("r", function(d){ return d.r; })
    .attr("cx", function(d){ return d.x; })
    .attr("cy", function(d){ return d.y; })
    .style("fill", function(d) { return color(d.value); });

//format the text for each bubble
bubbles.append("text")
    .attr("x", function(d){ return d.x; })
    .attr("y", function(d){ return d.y + 5; })
    .attr("text-anchor", "middle")
    .text(function(d){ return d["Fruit"]; })
    .style({
        "fill":"white", 
        "font-family":"Helvetica Neue, Helvetica, Arial, san-serif",
        "font-size": "12px"
    });
})

});

</script>
<body>

</body>
</html>