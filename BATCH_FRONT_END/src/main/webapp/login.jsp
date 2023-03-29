<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css"/>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.3.0/css/all.min.css"/>

</head>
<body style='background-color:skyblue'>
<div class="position-absolute top-50 start-50 translate-middle w-50">
	<form action="logindata.jsp" class="border border-dark rounded  p-3">
		<h3 class="text-center fw-bold text-decoration-underline">LOGIN</h3>
		<label class="form-label">Developer Id :</label>
		<input type="text" class="form-control bg-transparent border-dark" name="id" placeholder="Developer Id"/><br/>
		<label class="form-label">Password :</label>
		<input type="password" class="form-control bg-transparent border-dark" name="pwd" placeholder="password"/><br/>
		<div class="row">
			<div class="col">
				<button class="btn btn-success ms-2" type="submit">Login</button>
			</div>
			<div class="col text-end">
				<a href="register.jsp" class="me-2"type="button">*create account</a>
			</div>
		</div>
	</form>
</div>
</body>
</html>