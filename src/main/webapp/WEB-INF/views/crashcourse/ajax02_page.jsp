<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Ajax 02 - Local JSON</title>
<script type="text/javascript">
	function loadUser() {
		var xhr = new XMLHttpRequest();
		xhr.open("get", "user_json_process.do", true);

		xhr.onload = function() {
			if (this.status == 200) {
				//	console.log(this.responseText);
				var user = JSON.parse(this.responseText);
				//	console.log(user.name);
				var output = "";
				output += "<ul>" + "<li>ID : " + user.id + "</li>"
						+ "<li>Name : " + user.name + "</li>" + "<li>E-mail : "
						+ user.email + "</li>" + "</ul>";
				document.getElementById("user").innerHTML = output;
			}
		}

		xhr.send();
	}

	function loadUsers() {
		var xhr = new XMLHttpRequest();
		xhr.open("get", "users_json_process.do", true);

		xhr.onload = function() {
			if (this.status == 200) {
				//	console.log(this.responseText);
				var users = JSON.parse(this.responseText);
				//	console.log(users[0].name);

				var output = "";

				for ( var i in users) {
					output += "<ul>" + "<li>ID : " + users[i].id + "</li>"
							+ "<li>Name : " + users[i].name + "</li>"
							+ "<li>E-mail : " + users[i].email + "</li>" + "</ul>";
				}
				
				document.getElementById("users").innerHTML = output;
			}
		}

		xhr.send();
	}
</script>
</head>
<body>
	<input type="button" onclick="loadUser()" id="button1" value="Get User">
	<input type="button" onclick="loadUsers()" id="button2"
		value="Get Users">
	<br>
	<br>
	<h1>User</h1>
	<div id="user"></div>
	<h1>Users</h1>
	<div id="users"></div>

</body>
</html>