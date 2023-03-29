<!DOCTYPE html>
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
<body style='background-color:skyblue'>
<div class="text-end container">
	<a href="login.jsp" class="text-decoration-none text-dark">
		<i class="fa-regular fa-user"></i>
		Login
	</a>
</div>
<%! BatchServiceImpl service = new BatchServiceImpl(); %>
<%! List<Batch> batchs = service.displayBatch(); %>
<div>
<table class="table table-bordered table-hover container mt-3">
	<thead class="text-center">
		<tr>
		<th>BATCH ID</th>
		<th>COURSE ID</th>
		<th>COURSE START DATE</th>
		<th>COURSE END DATE</th>
		<th>STATUS</th>
		<th></th>
		</tr>
	</thead>
	<tbody>
		<%for(Batch b : batchs){ %>
		<tr>
		<td><%=b.getBatchId()%></td>
		<td><%=b.getCourseId() %></td>
		<td><%=b.getStartDate() %></td>
		<td><%=b.getEndDate() %></td>
		<td><%=b.getStatus()%></td>
		<td class="text-center">
           <a href="#"><i class="m-1 p-1 text-dark border border-danger fa-sharp fa-solid fa-eye"></i></a>
        </td>
		</tr>
		<%} %>
	</tbody>
</table>
</div>
</body>
</html>