<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
	<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
	<meta charset="ISO-8859-1">
	<title>Dojos</title>
</head>
<body>

	
	<h1>All Dojos</h1>
	
	<p><a href="/">Back To Main Page</a></p>
	
	<table class="table border border-dark table-striped table-hover m-auto w-50 p-3">
		<thead>
			<tr>
				<th scope="col">Location</th>
				<th scope="col">Actions</th>
		    </tr>
		</thead>
			<tbody>
			    <c:forEach var="dojo" items="${dojos}">
			    <tr>
					<!-- c:out not needed for each time -->
					<td>${dojo.name}</td>
					<td><a href="/dojos/${dojo.id}">View Ninjas</a></td>
				</tr>
				</c:forEach>
			</tbody>
	</table>
	

</body>
</html>