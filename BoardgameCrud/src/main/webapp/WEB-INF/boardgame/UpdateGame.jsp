<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css"
	integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2"
	crossorigin="anonymous">
<title>Update BoardGame Info</title>
</head>
<body style="background-color:lavenderblush;">
	<div class="container">
		<h3>
			BoardGame ID: ${game.id} <br> BoardGame Name: ${game.name} <br>
			BoardGame Description: ${game.description} <br>
		</h3>
		<form action="updateGame.do" method="POST">
			<input type="hidden" name="id" value="${game.id}"> 
			<label for="name"> BoardGame Name:</label>
			<input type="text" name="name" value="${game.name}"> <br> 
			<label for="description">Description of BoardGame:  <svg width="1em" height="1em" viewBox="0 0 16 16" class="bi bi-journal-text" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
  <path d="M3 0h10a2 2 0 0 1 2 2v12a2 2 0 0 1-2 2H3a2 2 0 0 1-2-2v-1h1v1a1 1 0 0 0 1 1h10a1 1 0 0 0 1-1V2a1 1 0 0 0-1-1H3a1 1 0 0 0-1 1v1H1V2a2 2 0 0 1 2-2z"/>
  <path d="M1 5v-.5a.5.5 0 0 1 1 0V5h.5a.5.5 0 0 1 0 1h-2a.5.5 0 0 1 0-1H1zm0 3v-.5a.5.5 0 0 1 1 0V8h.5a.5.5 0 0 1 0 1h-2a.5.5 0 0 1 0-1H1zm0 3v-.5a.5.5 0 0 1 1 0v.5h.5a.5.5 0 0 1 0 1h-2a.5.5 0 0 1 0-1H1z"/>
  <path fill-rule="evenodd" d="M5 10.5a.5.5 0 0 1 .5-.5h2a.5.5 0 0 1 0 1h-2a.5.5 0 0 1-.5-.5zm0-2a.5.5 0 0 1 .5-.5h5a.5.5 0 0 1 0 1h-5a.5.5 0 0 1-.5-.5zm0-2a.5.5 0 0 1 .5-.5h5a.5.5 0 0 1 0 1h-5a.5.5 0 0 1-.5-.5zm0-2a.5.5 0 0 1 .5-.5h5a.5.5 0 0 1 0 1h-5a.5.5 0 0 1-.5-.5z"/>
</svg></label>
			<input type="text" name="description" value="${game.description}"> <br>
			<label for="minPlayers">Minimum # of Players:</label>
      		<input type="text" name="minPlayers" value="${game.minPlayers}"><br>
			<label for="maxPlayers">Maximum # of Players:</label>
     		 <input type="text" name="maxPlayers" value="${game.maxPlayers}"><br>
			<label for="playTime">Avg Time to Play:  <svg width="1em" height="1em" viewBox="0 0 16 16" class="bi bi-stopwatch-fill" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
  <path fill-rule="evenodd" d="M6.5 0a.5.5 0 0 0 0 1H7v1.07A7.001 7.001 0 0 0 8 16 7 7 0 0 0 9 2.07V1h.5a.5.5 0 0 0 0-1h-3zm2 5.6a.5.5 0 1 0-1 0v2.9h-3a.5.5 0 0 0 0 1H8a.5.5 0 0 0 .5-.5V5.6z"/>
</svg></label>
     		 <input type="text" name="playTime" value="${game.playTime}">minutes<br>
			<label for="category">Category/Play Style:</label>
     		<select name="category" id="category">
     		   <option value="${game.category}" selected>${game.category}</option>
     		   <option value="Area Control">Area Control </option>
      		   <option value="Campaign">Campaign </option>
      		   <option value="Card Game">Card Game </option>
     		   <option value="Deckbuilder">Deckbuilder </option>
      	       <option value="Drafting">Drafting </option>
     		   <option value="Eurogame">Eurogame </option>
      		   <option value="Roll and Move">Roll and Move </option>
      		   <option value="Strategy">Strategy </option>
       		   <option value="Wargame">Wargame </option>
       		   <option value="Worker Placement">Worker Placement </option>
      		</select><br>
      		<label for="houseRules">House Rules:</label>
      		<input type="text" name="houseRules" value="${game.houseRules}"><br>
      		<label for="cost">Cost:  <svg width="1em" height="1em" viewBox="0 0 16 16" class="bi bi-gem" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
  <path fill-rule="evenodd" d="M3.1.7a.5.5 0 0 1 .4-.2h9a.5.5 0 0 1 .4.2l2.976 3.974c.149.185.156.45.01.644L8.4 15.3a.5.5 0 0 1-.8 0L.1 5.3a.5.5 0 0 1 0-.6l3-4zm11.386 3.785l-1.806-2.41-.776 2.413 2.582-.003zm-3.633.004l.961-2.989H4.186l.963 2.995 5.704-.006zM5.47 5.495l5.062-.005L8 13.366 5.47 5.495zm-1.371-.999l-.78-2.422-1.818 2.425 2.598-.003zM1.499 5.5l2.92-.003 2.193 6.82L1.5 5.5zm7.889 6.817l2.194-6.828 2.929-.003-5.123 6.831z"/>
</svg></label>
      		<input type="text" name="cost" value="${game.cost}"><br>
      		<label for="releaseYear">Release Year:</label>
      		<input type="text" name="releaseYear" value="${game.releaseYear}"><br>
			<input type="submit" >
		</form>
		<br>
		<p>
		<a href="/" class="btn btn-secondary" role="button">Go to Home page </a><br/>
		</p>
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