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
	<form action="registerdata.jsp" class="border border-dark rounded p-3">
		<h3 class="text-center fw-bold p-2 text-decoration-underline">SIGNUP</h3>
		<div class="row ">
  			<div class="col ">
    			<input type="text" class="form-control bg-transparent border-dark "  name="nme" placeholder="Name" aria-label="Name">
  			</div>
  			<div class="col">
    			<input type="text" class="form-control bg-transparent border-dark " name="id" placeholder="Developer Id" aria-label="Developer Id">
  			</div>
		</div><br/>
		<input type="text" class="form-control bg-transparent border-dark" name="mail" placeholder="abc@gmail.com"/><br/>
		<input type="password" class="form-control bg-transparent border-dark" name="psw" placeholder="password"/><br/>
		<div class="row">
			<div class="col">
				<button class="btn btn-success ms-2" type="submit">SignUp</button>
			</div>
			<div class="col text-end">
				<a href="login.jsp" class="me-2"type="button">*already have an account</a>
			</div>
		</div>
	</form>
</div>
</body>
</html>