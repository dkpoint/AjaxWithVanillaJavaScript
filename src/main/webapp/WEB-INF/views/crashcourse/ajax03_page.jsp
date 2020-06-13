<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Ajax 03 - External API</title>

<style>
.user {
	display: flex;
	background-color: #ECE5DD;
	padding: 10px;
	margin-bottom: 10px;
}

.user ul {
	list-style: none;
}
</style>

<script type="text/javascript">
	// Load Github Users
	function loadUsers() {
		var xhr = new XMLHttpRequest();
		xhr.open("get", "https://api.github.com/users", true);

		xhr.onload = function() {
			if (this.status == 200) {
				//	console.log(this.responseText);
				var users = JSON.parse(this.responseText);
				//	console.log(users[0].login);

				var output = "";

				for ( var i in users) {
					output += "<div class='user'>"
							+ "<img src='"+ users[i].avatar_url +"' width='70' height='70'>"
							+ "<ul>" + "<li>ID : " + users[i].id + "</li>"
							+ "<li>Login: " + users[i].login + "</li>"
							+ "</ul>" + "</div>";
				}

				document.getElementById("users").innerHTML = output;
			}
		}

		xhr.send();
	}
</script>

</head>
<body>
	<input type="button" onclick="loadUsers()" id="button"
		value="Load GitHub Users">
	<br>
	<br>
	<h1>Github User</h1>
	<div id="users"></div>

</body>
</html>