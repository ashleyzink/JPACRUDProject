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
<title>BoardGame Depot</title>
</head>
<body>
	<div class="container">
		
		<h1 style="text-align:center;">*~*~*Biggest List of BoardGames*~*~*</h1>
		<h6 style="text-align:center;">*~*If it's not there, you can add it!*~*</h6>
		<br>
		<br>
		<br>
		<form action="getGame.do" method="GET">
			Search By BoardGame ID: <br>
			 <input type="text" name="gid" /> <input type="submit"
				value="Show BoardGame" />
		</form>
	<%-- <c:forEach var="game" items="${games}">
	<a href="getGame.do?gid=${game.id}">${game.name}</a><br> 
	</c:forEach> --%>

	<a href="newGameForm.do">Add a New Game </a>
	<br />
	<a href="gameList.do">See Game List </a>
	<br />
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