<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
	<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
	<meta charset="ISO-8859-1">
	<title>${dojo.name}</title>
</head>
<body>

	<h1>${dojo.name}</h1>
	
	<table class="table border border-dark table-striped table-hover m-auto w-50 p-3">
		<thead>
			<tr>
				<th scope="col">First Name</th>
				<th scope="col">Last Name</th>
				<th scope="col">Age</th>
				<th scope="col">Actions</th>
		    </tr>
		</thead>
            
		<tbody>
		<!-- need to call dojo since dojo is the key, ninjas is the variable in dojo class to call list -->
			<c:forEach var="ninja" items="${dojo.ninjas}">
                <tr>
                    <td>${ninja.firstName}</td>
                    <td>${ninja.lastName}</td>
                    <td>${ninja.age}</td>
                    <td><a href="/ninjas/${ninja.id}">Ninja Profile</a></td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
        
	
	<p><a href="/dojos">Back To Dojo List</a></p>
	<p><a href="/">Back To Main Page</a></p>


</body>
</html>