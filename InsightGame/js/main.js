$(document).ready(function() {

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
			})
			inputSchedule(result);
		},
		error : function(xhar, status, error) {
			alert(error);
		}
	})
	

	$.ajax({
		url : "streamerBoardNumAsTime.do",
		type : "get",
		dataType : "html",
		success : function(data) {
			$('#kkk').html(data);
		},
		error : function(xhar, status, error) {
			alert(error);
		}
	})

	$.ajax({
		url : "gameRankAsType.do",
		type : "get",
		dataType : "html",
		success : function(data) {
			$('#gameRanking').html(data);
		},
		error : function(xhar, status, error) {
			alert(error);
		}
	})
	
	
	$.ajax({
		url : "gameRankAsGenre.do",
		type : "get",
		dataType : "html",
		success : function(data) {
			$('#gameRankingAsGenre').html(data);
		},
		error : function(xhar, status, error) {
			alert(error);
		}
	})

	$.ajax({
		url : "gameInterest.do",
		type : "get",
		dataType : "html",
		success : function(data) {
			$('#GI').html(data);
		},
		error : function(xhar, status, error) {
			alert(error);
		}
	})
	
	$.ajax({
		url : "hotClip.do",
		type : "get",
		dataType : "html",
		success : function(data) {
			$('#hot').html(data);
		},
		error : function(xhar, status, error) {
			alert(error);
		}
	})
	
		$.ajax({
		url : "streamerInterest.do",
		type : "get",
		dataType : "html",
		success : function(data) {
			$('#streamer_top').html(data);
		},
		error : function(xhar, status, error) {
			alert(error);
		}
	})
	
	$.ajax({
		url : "streamerRank.do",
		type : "get",
		dataType : "html",
		success : function(data) {
			$('#streamer_rank').html(data);
		},
		error : function(xhar, status, error) {
			alert(error);
		}
	})
	
	
	$.ajax({
		url : "streamerBoardKeyword.do",
		type : "get",
		dataType : "html",
		success : function(data) {
			$('#streamerBoardKeyword').html(data);
		},
		error : function(xhar, status, error) {
			alert(error);
		}
	})

});
