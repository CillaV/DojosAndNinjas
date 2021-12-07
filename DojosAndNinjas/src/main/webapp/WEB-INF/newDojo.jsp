<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html>
<head>
	<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
	<meta charset="ISO-8859-1">
	<title>New Dojo</title>
</head>
<body>

	<h1>New Dojo</h1>
		<form:form class="m-auto w-50 p-3" action="/dojos/new" method="POST" modelAttribute="dojo">
	    <p class="m-auto w-50 p-3 d-flex justify-content-between">
	        <form:label path="name">Name: </form:label>
	        <form:input path="name"/>
	    </p>
	      
	    <input class ="btn btn-success btn-sm d-flex justify-content-sm-end" type="submit" value="Create Dojo"/>
	</form:form>  


</body>
</html>