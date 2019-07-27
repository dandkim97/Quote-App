<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>   
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add New Quote</title>
</head>
<style>
a {
	color: green;
}
</style>
<body>
	<h1>Add New Quote</h1>
	<form:form method="post" action="save">
	<table>
	<tr>
		<td>Author: </td>
		<td><form:input path="author" /></td>
	</tr>
	<tr>
		<td>Message: </td>
		<td><form:textarea rows="4" cols="50" path="message"/></td>
	</tr>
	<tr>
		<td/>
		<td><input type="submit" value="Save"/></td>
	</tr>
	</table>
	</form:form>
	<br/>
	<a href="/myApp/home">Back to main menu</a>
	
</body>
</html>