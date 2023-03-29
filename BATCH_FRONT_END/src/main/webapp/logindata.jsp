<%@page import="com.srini.login.service.LogRegisterServiceImpl"%>
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
	String DeveloperId = request.getParameter("id");
	String Password = request.getParameter("pwd");
	
	LogRegisterServiceImpl service = new LogRegisterServiceImpl();
	if(service.login(DeveloperId, Password))
	{
		response.sendRedirect("loginindex.jsp");
	}
	else
	{
		response.sendRedirect("login1.jsp");
	}

%>
</body>
</html>