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
<title>Add New Game</title>
</head>
<body style="background-color:mediumvioletred;">
	<div class="container">
	<h1 style="text-align:center;">Add a New Game to Share the Fun!</h1>
	<br>
	<form action="addGame.do" method="POST">
	<label for="name">BoardGame Name:</label>
      <input type="text" name="name" value="name">
      <br>
	<label for="description">Description of BoardGame:</label>
      <input type="text" name="description" value="description">
      <br>
	<label for="minPlayers">Minimum # of Players:</label>
      <input type="text" name="minPlayers" value="2">
      <br>
	<label for="maxPlayers">Maximum # of Players:</label>
      <input type="text" name="maxPlayers" value="4">
      <br>
	<label for="playTime">Avg Time to Play:</label>
      <input type="text" name="playTime" value="30">minutes
      <br>
	<label for="category">Category/Play Style:</label>
      <select name="category" id="category">
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
      <input type="text" name="houseRules" >
      <br>
      <label for="cost">Cost:</label>
      <input type="text" name="cost" value="">
      <br>
      <label for="releaseYear">Release Year:</label>
      <input type="text" name="releaseYear" value="">
      <br>
	<input type="submit" class="btn btn-secondary" role="button">
	</form>
	<br>
	<hr>
	<a href="/" class="btn btn-secondary" role="button">Go to Home page </a><br/>
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