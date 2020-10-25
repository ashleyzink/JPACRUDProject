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
	<label for="description">Description of Game:</label>
      <input type="text" name="description" value="description">
      <br>
	<label for="minPlayers">Minimum # of Players:</label>
      <input type="text" name="minPlayers" value="minPlayers">
      <br>
	<label for="maxPlayers">Maximum # of Players:</label>
      <input type="text" name="maxPlayers" value="maxPlayers">
      <br>
      
      
      
      
      
      
	<input type="submit">
	</form>
</body>
</html>