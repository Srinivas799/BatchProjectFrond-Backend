<%@page import="java.util.List"%>
<%@page import="com.tmf.sms.batch.service.BatchServiceImpl"%>
<%@page import="com.tmf.sms.batch.model.Batch"%>
<%@page import="com.srini.course.service.CourseServiceImpl"%>
<%@page import="com.srini.course.model.Course"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core"
prefix="core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css"/>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.3.0/css/all.min.css"/>

</head>
<body style='background-color:skyblue'>
<div class="text-end container">
	<a href="index.jsp" class="text-decoration-none text-dark">
		<i class="fa-regular fa-user"></i>
		Logout
	</a>
</div>

<%! BatchServiceImpl service = new BatchServiceImpl(); %>
<%! List<Batch> batchs = service.displayBatch(); %>
<%! CourseServiceImpl serv = new CourseServiceImpl(); %>
<%! List<Course> courses = serv.displayCourse(); %>
<div class="container">
	<table class="table table-bordered table-hover mt-3">
	<thead class="text-center">
		<tr>
		<th>BATCH ID</th>
		<th>COURSE ID</th>
		<th>COURSE NAME</th>
		<th>MODULES TO BE COVERED</th>
		<th>DURATION</th>
		<th>FEE</th>
		</tr>
	</thead>
	<tbody>
		<%for(Batch b : batchs){ %>
		<tr>
		<td><%=b.getBatchId()%></td>
		<td><%=b.getCourseId() %></td>
			<%for(Course c : courses) { %>
				<%if(b.getCourseId() == c.getCourseId()){ %>
					<td><%=c.getCourseName()%></td>
					<td><%=c.getModulesToBeCovered() %></td>
					<td><%=c.getDuration()%></td>
					<td><%=c.getFee() %></td>
		</tr>
				<%} %>
			<%} %>
		<%} %>
	</tbody>
</table>
</div>
</body>
</html>