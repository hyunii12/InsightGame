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
		
		
  });


	   $.ajax({
			url:"streamerBoardNumAsTime.do",
			type: "get",
			dataType:"html",
			success: function(data){
				$('#issues').append(data)
			},
			error: function(xhar, status, error){
				alert(error);
			}
	   });
	   
	   
	   
	   
	   
	   
	   
		
	
