<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>${ninja.firstName}</title>
</head>
<body>

		<h1>${ninja.firstName}</h1>
	
		<table >
            <tbody>
				
                <tr>
                    <th scope="row"></th>
                    <td>Name:</td>
                    <td>${ninja.firstName} ${ninja.lastName}</td>
                    
				<tr>
					<th scope="row"></th>
					<td>Age:</td>
					<td>${ninja.age}</td>
				
				<tr>
					<th scope="row"></th>
					<td>Dojo:</td>
					<td>${ninja.dojo.name}</td>
				
            </tbody>
        </table>
	
		<p><a href="/ninjas">Back To Ninja List</a></p>
		<p><a href="/">Back To Main Page</a></p>


</body>
</html>