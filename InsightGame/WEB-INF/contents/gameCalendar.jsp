<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta charset='utf-8' />

<link href='css/fullcalendar.min.css' rel='stylesheet' />
<link href='css/fullcalendar.print.min.css' rel='stylesheet' media='print' />
<script src='js/moment.min.js'></script>
<script src='js/jquery.min.js'></script>
<script src='js/fullcalendar.min.js'></script>

<script>

  $(document).ready(function() {
	
	  var result = new Array(); 
	  $.ajax({
			url:"gameCalendar.do",
			type: "post",
			dataType:"json",
			success: function(data){
				alert(data.msg)
// 				var scheduleList = data.scheduleList;
// 				$.each(scheduleList, function(index, item) {
// 				 	var json = new Object();
// 				 	json.title = item.scTitle;
// 				 	json.start = item.scStartDate;
// 				 	json.end = item.scEndDate;
// // 				 	console.log(json);
// // 				 	result.push(json);	
// 				});
			},
			error: function(xhar, status, error){
				alert(error);
			}
		})
		
	

//   	<c:forEach items="${scheduleList}" var="list">
//   	 	var json = new Object();
//   	 	json.title="${list.scTitle}";
//   	 	json.start="${list.scStartDate}";
//   	 	json.end="${list.scEndDate}";
//   	 	result.push(json);		
//   	</c:forEach>
    	//alert(JSON.stringify(result));
	  
    $('#calendar').fullCalendar({    	
      header: {
        left: 'prev,next',
        center: 'title',
        right: 'today'
      },
      defaultDate: new Date(),
      navLinks: true, // can click day/week names to navigate views
      editable: false,
      eventLimit: true, // allow "more" link when too many events
      events: result     
    });

  });

</script>
<title></title>

</head>
<body>
   <div id='calendar'></div>
</body>
</html> 

<!-- <meta charset='utf-8' /> -->
<!-- </head> -->
<!-- <body> -->

<%-- <c:forEach items="${sclist}" var="list"> --%>
<!--     <tr> -->
<%--      <td align="center">${list.scId}</td> --%>
<%--      <td align="center">${list.scName}</td> --%>
<%--      <td align="center">${list.scTitle}</td> --%>
<%--      <td align="center">${list.scStartDate}</td> --%>
<%--      <td align="center">${list.scEndDate}</td> --%>
<!--     </tr> -->
<!--     <br> -->
<%-- </c:forEach> --%>


<!-- </body> -->
<!-- </html> -->