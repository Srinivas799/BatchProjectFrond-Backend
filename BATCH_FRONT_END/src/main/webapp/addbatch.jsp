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
<body style='background-color:white'>
<div class="text-end container">
	<a href="index.jsp" class="text-decoration-none text-dark">
		<i class="fa-regular fa-user"></i>
		Logout
	</a>
</div>
	<div class="mt-3">
		<form action="savebatch.jsp" class="border border-dark rounded p-3 container">
		<h3 class="text-center fw-bold p-2 text-decoration-underline">ADD BATCH</h3><br/>
		<div class="row mb-2">
  			<div class="col ">
    			<input type="text" class="form-control bg-transparent border-dark " name="bid" placeholder="Batch Id" aria-label="Batch Id">
  			</div>
  			<div class="col">
    			<input type="text" class="form-control bg-transparent border-dark" name="cid" placeholder="Course Id" aria-label="Course Id">
  			</div>
		</div>
		<div class="row mb-2">
			<div class="col">
				<input type="date" class="form-control bg-transparent border-dark" name="ssd" placeholder="Starting Date"/>
			</div>
			<div class="col">
				<input type="date" class="form-control bg-transparent border-dark" name="ed" placeholder="Ending Date"/>
			</div>
		</div>
		<div class="row mb-2">
			<div class="col">
				<input type="text" class="form-control bg-transparent border-dark" name="nf" placeholder="No. of Females"/>
			</div>
			<div class="col">
				<input type="text" class="form-control bg-transparent border-dark" name="nm" placeholder="No. of Male"/>
			</div>	
		</div>
		<div class="mb-2">
			<input type="text" class="form-control bg-transparent border-dark" name="cnme" placeholder="Course Name"/> 
		</div>
		<div class="mb-2">
			<input type="text" placeholder="Modules to be Covered" class="form-control bg-transparent border-dark" name="cmdl"/>
		</div>
		<div class="row mb-2">
			<div class="col">
				<input type="text" placeholder="Qualification" class="form-control bg-transparent border-dark" name="cql"/>
			</div>
			<div class="col">
				<input type="text" placeholder="Fee" class="form-control bg-transparent border-dark" name="cfee"/>
			</div>
		</div>
		<input type="text" class="form-control bg-transparent border-dark" name="sts" placeholder="Status"/><br/>
		<div class="row">
			<div class="col">
				<button class="btn btn-success ms-1" type="submit">SUBMIT</button>
			</div>
		</div>
	</form>
	</div>
</body>
</html>