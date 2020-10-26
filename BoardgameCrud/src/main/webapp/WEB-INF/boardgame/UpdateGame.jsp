<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update BoardGame Info</title>
</head>
<body>
<h2>
			BoardGame ID: ${game.id} <br> BoardGame Name: ${game.name} <br>
			BoardGame Description: ${game.description} <br>
		</h2>
		<form action="updateGame.do" method="POST">
			<input type="hidden" name="id" value="${game.id}"> 
			<label for="name"> BoardGame Name:</label>
			<input type="text" name="name" value="${game.name}"> <br> 
			<label for="description">Description of BoardGame:</label>
			<input type="text" name="description" value="${game.description}"> <br>
			<label for="minPlayers">Minimum # of Players:</label>
      		<input type="text" name="minPlayers" value="${game.minPlayers}"><br>
			<label for="maxPlayers">Maximum # of Players:</label>
     		 <input type="text" name="maxPlayers" value="${game.maxPlayers}"><br>
			<label for="playTime">Avg Time to Play:</label>
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
      		<label for="cost">Cost:</label>
      		<input type="text" name="cost" value="${game.cost}"><br>
      		<label for="releaseYear">Release Year:</label>
      		<input type="text" name="releaseYear" value="${game.releaseYear}"><br>
			<input type="submit" >
		</form>
</body>
</html>