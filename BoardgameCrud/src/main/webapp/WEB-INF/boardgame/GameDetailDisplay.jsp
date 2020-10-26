<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css"
	integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2"
	crossorigin="anonymous">
<title>BoardGame Result</title>
</head>
<body style="background-color:papayawhip;">
	<div>
		<c:choose>
			<c:when test="${! empty game}">
				<div class="container">
				<h4>BoardGame ID: ${game.id} </h4>
					<h3>Name: ${game.name}</h3><br>
					<strong>Description:  <svg width="1em" height="1em" viewBox="0 0 16 16" class="bi bi-journal-text" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
  <path d="M3 0h10a2 2 0 0 1 2 2v12a2 2 0 0 1-2 2H3a2 2 0 0 1-2-2v-1h1v1a1 1 0 0 0 1 1h10a1 1 0 0 0 1-1V2a1 1 0 0 0-1-1H3a1 1 0 0 0-1 1v1H1V2a2 2 0 0 1 2-2z"/>
  <path d="M1 5v-.5a.5.5 0 0 1 1 0V5h.5a.5.5 0 0 1 0 1h-2a.5.5 0 0 1 0-1H1zm0 3v-.5a.5.5 0 0 1 1 0V8h.5a.5.5 0 0 1 0 1h-2a.5.5 0 0 1 0-1H1zm0 3v-.5a.5.5 0 0 1 1 0v.5h.5a.5.5 0 0 1 0 1h-2a.5.5 0 0 1 0-1H1z"/>
  <path fill-rule="evenodd" d="M5 10.5a.5.5 0 0 1 .5-.5h2a.5.5 0 0 1 0 1h-2a.5.5 0 0 1-.5-.5zm0-2a.5.5 0 0 1 .5-.5h5a.5.5 0 0 1 0 1h-5a.5.5 0 0 1-.5-.5zm0-2a.5.5 0 0 1 .5-.5h5a.5.5 0 0 1 0 1h-5a.5.5 0 0 1-.5-.5zm0-2a.5.5 0 0 1 .5-.5h5a.5.5 0 0 1 0 1h-5a.5.5 0 0 1-.5-.5z"/>
</svg></strong> ${game.description}<br>
					<strong>Minimum # of Players:</strong> ${game.minPlayers}<br>
					<strong>Maximum # of Players:</strong> ${game.maxPlayers}<br>
					<strong>Avg Time to Play:  <svg width="1em" height="1em" viewBox="0 0 16 16" class="bi bi-stopwatch-fill" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
  <path fill-rule="evenodd" d="M6.5 0a.5.5 0 0 0 0 1H7v1.07A7.001 7.001 0 0 0 8 16 7 7 0 0 0 9 2.07V1h.5a.5.5 0 0 0 0-1h-3zm2 5.6a.5.5 0 1 0-1 0v2.9h-3a.5.5 0 0 0 0 1H8a.5.5 0 0 0 .5-.5V5.6z"/>
</svg> </strong> ${game.playTime} minutes<br>
					<strong>Category/Play Style:</strong> ${game.category}<br>
					<strong>House Rules:</strong> ${game.houseRules}<br>
					<strong>Cost:  <svg width="1em" height="1em" viewBox="0 0 16 16" class="bi bi-gem" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
  <path fill-rule="evenodd" d="M3.1.7a.5.5 0 0 1 .4-.2h9a.5.5 0 0 1 .4.2l2.976 3.974c.149.185.156.45.01.644L8.4 15.3a.5.5 0 0 1-.8 0L.1 5.3a.5.5 0 0 1 0-.6l3-4zm11.386 3.785l-1.806-2.41-.776 2.413 2.582-.003zm-3.633.004l.961-2.989H4.186l.963 2.995 5.704-.006zM5.47 5.495l5.062-.005L8 13.366 5.47 5.495zm-1.371-.999l-.78-2.422-1.818 2.425 2.598-.003zM1.499 5.5l2.92-.003 2.193 6.82L1.5 5.5zm7.889 6.817l2.194-6.828 2.929-.003-5.123 6.831z"/>
</svg></strong> ${game.cost}<br>
					<strong>Release Year:</strong> ${game.releaseYear}<br>
				<hr>
				<h4>What would you like to do with this game?</h4>
				<form action="redirToUpdate.do" method="GET">
					<button type="submit" name="id" value="${game.id}">Update</button>
				</form>
				<br>
				<form action="deleteGame.do" method="POST">
					<button type="submit" name="id" value="${game.id}">Delete</button>
				</form>
				<br>
				<p> 
				<a href="/" class="btn btn-secondary" role="button">Go to Home page </a>
				</p>
				</div>
			</c:when>
			<c:otherwise>
				<div class="container"> <h2>We could not find your game in our current inventory.</h2><br>
				<h3>Would you like to add it? </h3><br>
				<p>
				<a href="newGameForm.do" class="btn btn-secondary" role="button">Add a New Game </a>
				</p>
				<p>
				<a href="/" class="btn btn-secondary" role="button">Go to Home page </a>
				</p>
				</div>
			</c:otherwise>
		</c:choose>
	</div>
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
		integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"
		integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.min.js"
		integrity="sha384-w1Q4orYjBQndcko6MimVbzY0tgp4pWB4lZ7lr30WKz0vr/aWKhXdBNmNb5D92v7s"
		crossorigin="anonymous"></script>
</body>
</html>