<html>
	<head>
		<meta http-equiv="content-type" content="text/html; charset=utf-8">
		<title>Prehevil Strife DevTools</title>
		<script>
		    function runScript(scriptName) {
		        window.open(scriptName, "_blank", "toolbar=yes, scrollbars=yes, resizable=yes, top=100, left=100, width=800, height=500");
		    }
		</script>
	</head>
	<body>
		<h1>Prehevil Strife - DevTools</h1>
		<button id="btn_reset_data" onclick="runScript('data_reset.php')">Reset Database</button><br>
		<button id="btn_reset_user" onclick="runScript('user_reset.php')">Reset Users</button><br>
	</body>
</html>