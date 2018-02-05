<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<script>


var dataset = [
	
]

  $(document).ready(function() {

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
      events: dataset
    });

  });

</script>

<title></title>

</head>
<body>
	<div id='calendar'></div>
</body>
</html>