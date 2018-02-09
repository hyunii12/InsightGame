$(document).ready(function() {
	  var result = new Array();
	  $.ajax({
			url:"gameCalendar.do",
			type: "post",
			dataType:"json",
			success: function(data){
// 				alert(data.msg)
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
