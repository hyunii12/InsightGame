$(document).ready(function() {
 var result = new Array();
	  $.ajax({
			url:"gameCalendar.do",
			type: "post",
			dataType:"json",
			success: function(data){
				var scheduleList = data.scheduleList;
				$.each(scheduleList, function(index, item) {
				 	var json = new Object();
				 	json.title = item.scTitle;
				 	json.start = item.scStartDate;
				 	json.end = item.scEndDate;
				 	result.push(json);	
				});
			 	inputSchedule(result);
			},
			error: function(xhar, status, error){
				alert(error);
			}
		})
				
		$.ajax({
			url:"streamerBoardNumAsTime.do",
			type: "get",
			dataType:"html",
			success: function(data){
				$('#kkk').html(data);
			},
			error: function(xhar, status, error){
				alert(error);

	var result = new Array();
	$.ajax({
		url : "gameCalendar.do",
		type : "post",
		dataType : "json",
		success : function(data) {
			var scheduleList = data.scheduleList;
			$.each(scheduleList, function(index, item) {
				var json = new Object();
				json.title = item.scTitle;
				json.start = item.scStartDate;
				json.end = item.scEndDate;
				result.push(json);
			});
			inputSchedule(result);
		},
		error : function(xhar, status, error) {
			alert(error);
		}
	})

});

$.ajax({
	url : "streamerBoardNumAsTime.do",
	type : "get",
	dataType : "html",
	success : function(data) {
		$('#kkk').append(data)
	},
	error : function(xhar, status, error) {
		alert(error);
	}
});

var game = "${game}"
var OverwatchView = "${OverwatchView}"

var OverwatchView2 = JSON.parse(OverwatchView);
alert(OverwatchView2)

var OverwatchView3 = JSON.stringify(OverwatchView2)

var chart = bb.generate({
	data : {
		x : "x",
		columns : [
		// 		["x", "2013-01-01", "2013-01-02", "2013-01-03", "2013-01-04", "2013-01-05", "2013-01-06"],
		[ "x", "2018-02-08", "2018-02-09", "2018-02-10" ],
				[ "Overwatch", OverwatchView2 ], [ "data2", 130, 340, 500 ] ]
	},
	axis : {
		x : {
			type : "timeseries",
			tick : {
				format : "%Y-%m-%d"
			}

		})
		
		$.ajax({
			url:"gameRankAsType.do",
			type: "get",
			dataType:"html",
			success: function(data){
				alert('asdf')
				$('#gameRanking').html(data);
			},
			error: function(xhar, status, error){
				alert(error);
			}
		})
		$.ajax({
			url:"gameInterest.do",
			type: "get",
			dataType:"html",
			success: function(data){
				
				$('#GI').html(data)
			},
			error: function(xhar, status, error){
				alert(error);
			}
		})
});

	  

		}
	},
	bindto : "#TimeseriesChart"
});

