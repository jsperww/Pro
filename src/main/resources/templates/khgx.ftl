<!DOCTYPE html>
<html>

	<head>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<link rel="stylesheet" href="css/ydui.css">
		<title>互邦软件演示平台</title>
	</head>

	<body style="height:100%">
		<img src="img/khgx/001.jpg" style="width:100%;display:none">
		<script src="js/jquery-1.11.1.js" type="text/javascript"></script>
		<script type="text/javascript" src="js/ydui.flexible.js"></script>
		<script type="text/javascript" src="js/ydui.js"></script>
		<script>
			var height=$(window).height()
			$("img").css("height",height+'px')
			var url=window.location.search;
			if(url == "") {
				$("img").css("display", "block")
			} else {
				var m = url.slice(5, url.indexOf("&"))
				var n = url.substr(url.indexOf("&") + 4)
				$("img").attr("src", "img/" + m + "/" + n + ".jpg")
				$("img").css("display", "block")
			}
		</script>
	</body>

</html>