<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Ajax 04 - Ajax & Forms</title>

<script type="text/javascript">

	function getName() {
		
		var xhr = new XMLHttpRequest();
		var name = "gregory";
		xhr.open("get", "${pageContext.request.contextPath}/crashcourse/ajax04_page_process.do?name="+name, true);
	
		xhr.onload = function() {
			
				console.log(this.responseText);				

		}
		
		xhr.send();
		
	}
	
	function getForm() {
		
		var xhr = new XMLHttpRequest();
		var name = document.getElementById("name1").value;
		xhr.open("get", "${pageContext.request.contextPath}/crashcourse/ajax04_page_process.do?name="+name, true);
	
		xhr.onload = function() {
			
				console.log(this.responseText);				

		}
		
		xhr.send();
		
	}
	
	function postForm() {

		var xhr = new XMLHttpRequest();
		var name = document.getElementById("name2").value;
		var params = "name="+name;
		
		xhr.open("post", "${pageContext.request.contextPath}/crashcourse/ajax04_page_process.do", true);
		xhr.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
		
		xhr.onload = function() {
			
				console.log(this.responseText);				

		}
		
		xhr.send(params);
		
	}
</script>

</head>
<body>
	<input type="button" onclick="getName()" id="button" value="Get Name">
	<hr>
	<h1>Get Form</h1>
	<form method="get"
		action="${pageContext.request.contextPath}/crashcourse/ajax04_page_process.do">
		<input type="text" name="name"> <input type="submit" value="제출">
	</form>
	<hr>
	<h1>Ajax Get Form</h1>
	<form id="getForm">
		<input type="text" name="name" id="name1"> <input type="submit" onclick="getForm()" value="제출">
	</form>
	<hr>
	<h1>Post Form</h1>
	<form method="post"
		action="${pageContext.request.contextPath}/crashcourse/ajax04_page_process.do">
		<input type="text" name="name"> <input type="submit" value="제출">
	</form>
		<hr>
	<h1>Ajax Post Form</h1>
	<form id="postForm">
		<input type="text" name="name" id="name2"> <input type="submit" onclick="postForm()" value="제출">
	</form>

</body>
</html>