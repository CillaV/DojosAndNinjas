<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>    
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
	<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
	<meta charset="ISO-8859-1">
	<title>New Ninja</title>
</head>
<body>

	<h1>New Ninja</h1>
	
	<form:form class="m-auto w-50 p-3" action="/ninjas/new" method="POST" modelAttribute="ninja">
	    
	    <!-- forEach loop for each dojo -->
	    <p class="m-auto w-50 p-2 d-flex justify-content-between">
	    	<form:label path="dojo">Dojo</form:label>
	        <form:errors path="dojo"/>
	        <!--<form:select path="dojo" items="${dojos}" multiple="true"/> -->
	        <form:select path="dojo">
		        <c:forEach var="dojo" items="${dojos}">
		        	<option value="${dojo.id}">${dojo.name}</option>
		        </c:forEach>
			</form:select>
	    </p>
	    
	    <p class="m-auto w-50 p-2 d-flex justify-content-between">
	        <form:label path="firstName">First Name:</form:label>
	        <form:errors path="firstName"/>
	        <form:input path="firstName"/>
	    </p>
	    
	    <p class="m-auto w-50 p-2 d-flex justify-content-between">
	        <form:label path="lastName">Last Name:</form:label>
	        <form:errors path="lastName"/>
	        <form:input path="lastName"/>
	    </p>
	    
	    <p class="m-auto w-50 p-2 d-flex justify-content-between">
	        <form:label path="age">Age:</form:label>
	        <form:errors path="age"/>
	        <form:input path="age"/>
	    </p>
	      
	    <input class ="btn btn-success btn-sm d-flex justify-content-sm-end" type="submit" value="Create"/>
	</form:form>    

</body>
</html>