<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Game List</title>
</head>

<body>
	<h4>*~*~*~*~*List of All the BoardGames *~*~*~*~*</h4>
	<table>
	<c:forEach var="game" items="${games}">
		<a href="getGame.do?gid=${game.id}">${game.name}</a>
		<br>
	</c:forEach>
	</table>
	<a href="/">Go to Home page </a>
	<br />
</body>
</html>