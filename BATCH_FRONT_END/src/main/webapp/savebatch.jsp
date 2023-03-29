<%@page import="com.srini.course.service.CourseServiceImpl"%>
<%@page import="com.srini.course.model.Course"%>
<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="com.tmf.sms.batch.service.BatchServiceImpl"%>
<%@page import="com.tmf.sms.batch.model.Batch"%>
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
		int bid = Integer.parseInt(request.getParameter("bid"));
		int cid = Integer.parseInt(request.getParameter("cid"));
		String sdate = request.getParameter("ssd");
		String edate = request.getParameter("ed");
		double female = Double.parseDouble(request.getParameter("nf"));
		double male = Double.parseDouble(request.getParameter("nm"));
		double ttl = 0;
		String status = request.getParameter("sts");
		String cnme = request.getParameter("cnme");
		String cmdl = request.getParameter("cmdl");
		String cql = request.getParameter("cql");
		double cfee = Double.parseDouble(request.getParameter("cfee"));
		
		
		SimpleDateFormat formate = new SimpleDateFormat("yyyy-MM-dd");
		
		Date start = formate.parse(sdate);
		java.sql.Date startdate = new java.sql.Date(start.getTime()) ;
		Date end = formate.parse(edate);
		java.sql.Date enddate = new java.sql.Date(end.getTime());
		
		int dur = 0;
		
		Batch batch = new Batch(bid,cid,startdate,enddate,female,male,ttl,status);
		BatchServiceImpl service = new BatchServiceImpl();
		
		Course course = new Course(cid,dur,cfee,cnme,cmdl,cql);
		CourseServiceImpl serv = new CourseServiceImpl();
		
		if(service.addBatch(batch) || serv.addCourse(course))
		{
			response.sendRedirect("loginindex.jsp");
		}
		else
		{
			out.println("404 Error");
		}
	}catch(Exception e){
		e.printStackTrace();
	}
	
%>
</body>
</html>