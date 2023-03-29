<%@page import="com.srini.login.service.LogRegisterServiceImpl"%>
<%@page import="com.srini.login.dao.LogRegisterDaoImpl"%>
<%@page import="com.srini.login.model.LogRegister"%>
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
	String name = request.getParameter("nme");
	String id = request.getParameter("id");
	String mail = request.getParameter("mail");
	String psw = request.getParameter("psw");
	
		LogRegister register = new LogRegister(name,id,mail,psw);
		LogRegisterServiceImpl service = new LogRegisterServiceImpl();
		
		if(service.register(register))
		{
			response.sendRedirect("index.jsp");
		}
		else
		{
			out.println("404 Error");
		}
	
	
%>
</body>
</html>