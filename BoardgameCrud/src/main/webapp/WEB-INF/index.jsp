<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>BoardGame Depot</title>
</head>
<body>

<h1>BoardGames!!!!</h1>

<h3>Search by BoardGame Id</h3>
	<form action="getGame.do" method="GET">
		BoardGame ID: <input type="text" name="gid" /> <input type="submit"
			value="Show BoardGame" />
	</form>

<c:forEach var="game" items="${games}">
	<a href="getGame.do?gid=${game.id}">${game.name}</a><br> 
	</c:forEach>

<a href="newGameForm.do">Add a New Game </a><br/>
</body>
</html>