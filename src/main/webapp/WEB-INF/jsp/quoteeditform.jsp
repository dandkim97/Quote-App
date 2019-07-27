<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>    

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Edit Quote</title>
</head>
<style>
a {
	color: green;
}
</style>
<body>
	
	<h1>Edit Quote</h1>
	<form:form method="POST" action="/myApp/home/editsave">
	<table>
	<tr>
		<td/>
		<td><form:hidden path="id"/></td>
	</tr>
	<tr>
		<td>Author: </td>
		<td><form:input path="author"/></td>
	</tr>
	<tr>
		<td>Message: </td>
		<td><form:textarea rows="4" cols="50" path="message"/></td>
	</tr>
	<tr>
		<td/>
		<td><input type="submit" value="Edit Save"/></td>
	</tr>
	</table>
	</form:form>
	<br/>
	<a href="/myApp/home/viewquote">Back to Quotes</a>
	
</body>
</html>