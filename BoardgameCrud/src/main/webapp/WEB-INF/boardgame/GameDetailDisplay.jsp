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
				<h4>BoardGame ID: ${game.id} </h4>
					<h3>Name: ${game.name}</h3><br>
					<strong>Description:</strong> ${game.description}<br>
					<strong>Minimum # of Players:</strong> ${game.minPlayers}<br>
					<strong>Maximum # of Players:</strong> ${game.maxPlayers}<br>
					<strong>Avg Time to Play:</strong> ${game.playTime}<br>
					<strong>Category/Play Style:</strong> ${game.category}<br>
					<strong>House Rules:</strong> ${game.houseRules}<br>
					<strong>Cost:</strong> ${game.cost}<br>
					<strong>Release Year:</strong> ${game.releaseYear}<br>
				</div>
				<hr>
				<h4>What would you like to do with this game?</h4>
				<form action="redirToUpdate.do" method="GET">
					<button type="submit" name="id" value="${game.id}">Update</button>
				</form>
				<br>
				<form action="deleteGame.do" method="POST">
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