<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
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
      <option value="Deckbuilder">Deckbuilder </option>
      <option value="Drafting">Drafting </option>
      <option value="Eurogame">Eurogame </option>
      <option value="Roll and Move">Roll and Move </option>
      <option value="Wargame">Wargame </option>
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
	<input type="submit">
	</form>
</body>
</html>