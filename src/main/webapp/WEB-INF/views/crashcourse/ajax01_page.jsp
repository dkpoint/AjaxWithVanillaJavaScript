<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Ajax 01 - Get Text File</title>

<script type="text/javascript">
	// Create event listener => onclick="loadText()"
	// document.getElementById("button").addEventListener("click", loadText);

	function loadText() {
		//	console.log("button clicked");
		// Create XHR Object
		var xhr = new XMLHttpRequest();
		//	console.log(xhr);
		// open Method - Type, Url/File, Asynchronous
		xhr.open("get", 'sample01_test_process.do', true);

		console.log("ReadyState Value : " + xhr.readyState);

		// OPTIONAL - used for loaders
		xhr.onprogress = function() {
			console.log("ReadyState Value : " + xhr.readyState);
		}

		xhr.onload = function() {
			console.log("ReadyState Value : " + xhr.readyState);
			if (this.status == 200) {
				//	console.log(this.responseText);
				document.getElementById("text").innerHTML = this.responseText;
			} else if (this.status == 404) {
				document.getElementById("text").innerHTML = "Not Found";
			}
		}

		xhr.onerror = function() {
			console.log("Request Error...");
		}

		/* 
		xhr.onreadystatechange = function() {
		console.log("ReadyState Value : " + xhr.readyState);
			if (this.status == 200 && this.readyState == 4) {
				console.log(this.responseText);
			}

		}
		 */

		// Send Request
		xhr.send();

	}
	/* HTTP Statuses */
	// 200 : "OK"
	// 403 : "Forbidden"
	// 404 : "Not Found"
	/* ReadyState Values */
	// 0 : request not initialized
	// 1 : server connection established
	// 2 : request received
	// 3 : processing request
	// 4 : reqeust finished and response is ready
</script>
</head>
<body>
	<input type="button" onclick="loadText()" id="button"
		value="Get Text File">
	<br>
	<br>
	<div id="text"></div>

</body>
</html>