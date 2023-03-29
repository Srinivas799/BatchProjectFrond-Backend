<!DOCTYPE html>
<%@page import="com.srini.course.model.Course"%>
<%@page import="com.srini.course.service.CourseServiceImpl"%>
<%@page import="java.util.List"%>
<%@page import="com.tmf.sms.batch.service.BatchServiceImpl"%>
<%@page import="com.tmf.sms.batch.model.Batch"%>
<html>
<head>
<meta name="color-scheme" content="light">
<title>StudentManagementSystem</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css"/>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.3.0/css/all.min.css"/>
</head>
<body style='background-color:skyblue' class="container">
<div class="text-end container">
	<a href="index.jsp" class="text-decoration-none text-dark">
		<i class="fa-regular fa-user"></i>
		Logout
	</a>
</div>
<%! CourseServiceImpl service = new CourseServiceImpl(); %>
<%! List<Course> courses = service.displayCourse(); %>
<div>
<table class="table table-bordered table-hover mt-3">
	<thead class="text-center">
		<tr>
		<th>COURSE ID</th>
		<th>COURSE NAME</th>
		<th>DURATION (In Months)</th>
		<th></th>
		</tr>
	</thead>
	<tbody>
		<%for(Course c : courses){ %>
		<tr>
		<td><%=c.getCourseId()%></td>
		<td><%=c.getCourseName() %></td>
		<td><%=c.getDuration() %></td>
		<td class="text-center">
           <a href="viewdetails.jsp"><i class="m-1 p-1 text-dark border border-danger fa-sharp fa-solid fa-eye"></i></a>
           <a href="editdetails.jsp"><i class="m-1 p-1 text-dark border border-danger fa-sharp fa-solid fa-pencil"></i></a>
           <a href="#"><i class="m-1 p-1 text-dark border border-danger fa-sharp fa-solid fa-trash"></i></a>
        </td>
		</tr>
		<%} %>
	</tbody>
</table>
<a href="addCourse.jsp"class="w-100 btn btn-outline-secondary border border-light">
	<i class="fa-solid fa-plus"></i>
</a>
</div>
</body>
</html>