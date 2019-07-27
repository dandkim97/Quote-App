<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>    

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>View Quotes</title>
</head>
<style>
a {
	color: green;
}
</style>
<body>
	
	<h1>Quote List</h1>
	<table border="2" width="70%" cellpadding="2">
	<tr>
		<th>Author</th>
		<th>Message</th>
		<th>Edit</th>
		<th>Delete</th>
	</tr>
	<c:forEach var="quote" items="${list}">
		<tr>
			<td>${quote.author}</td>
			<td>${quote.message}</td>
			<td><a href="editquote/${quote.id}">Edit</a></td>
			<td><a href="deletequote/${quote.id}">Delete</a></td>
		</tr>
	</c:forEach>
	</table>
	<br/>
	<a href="quoteform">Add New Quote</a>
	<br/>
	<a href="/myApp/home">Back to main menu</a>
	
</body>
</html>