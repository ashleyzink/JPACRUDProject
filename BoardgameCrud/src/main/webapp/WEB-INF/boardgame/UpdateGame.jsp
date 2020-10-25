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
		<form action="updateBoardGame.do" method="POST">
			<input type="hidden" name="gameId" value="${game.id}"> <label
				for="name"> Name of the BoardGame</label> <input type="text"
				name="name" value="${game.name}"> <br> <label
				for="description">Description</label> <input type="text"
				name="description" size="75" value="${game.description}"> <input
				type="submit" name="name">
		</form>
</body>
</html>