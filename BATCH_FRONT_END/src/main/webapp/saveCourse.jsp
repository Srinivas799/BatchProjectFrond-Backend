<%@page import="com.srini.course.service.CourseServiceImpl"%>
<%@page import="com.srini.course.model.Course"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
	try{
		int cid = Integer.parseInt(request.getParameter("cid"));
		String cnme = request.getParameter("cnme");
		String qul = request.getParameter("qul");
		double fee = Double.parseDouble(request.getParameter("fee"));
		String mdl = request.getParameter("mdl");
		int dur = Integer.parseInt(request.getParameter("dur"));
		
		Course course = new Course(cid,dur,fee,cnme,mdl,qul);
		CourseServiceImpl service = new CourseServiceImpl();
		
		if(service.addCourse(course))
		{
			response.sendRedirect("loginindex.jsp");
		}
		else{
			out.println("404 Error");
		}
	}catch(Exception e){
		e.printStackTrace();
	}
%>
</body>
</html>