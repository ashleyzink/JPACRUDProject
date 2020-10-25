<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>BoardGame Result</title>
</head>
<body>
	<div>
		<c:choose>
			<c:when test="${! empty game}">
				<div>
					<h3>
						Game ID: ${game.id} <br>Game Name: ${game.name} <br>
						Game Description: ${game.description}<br>
					</h3>
					<br>
					<h4>Category: ${game.category}</h4>
				</div>
				<hr>
				<h4>What would you like to do with this game?</h4>
				<form action="redirToUpdate.do" method="GET">
					<button type="submit" name="id" value="${game.id}">Update</button>
				</form>
				<br>
				<form action="deleteFilm.do" method="POST">
					<button type="submit" name="id" value="${game.id}">Delete</button>
				</form>
			</c:when>
			<c:otherwise>
				<div>We could not find your game in our current inventory.
				Would you like to add it? <br>
				<a href="newGameForm.do">Add a New Game </a><br/>
				<a href="/">Go to Home page </a><br/>
				
				</div>
			</c:otherwise>
		</c:choose>
	</div>

</body>
</html>