<!DOCTYPE html>
<html>

	<head>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<link rel="stylesheet" href="css/ydui.css">
		<title>互邦软件演示平台</title>
	</head>

	<body>
		<header class="m-navbar" style="height:0.8rem">
			<div class="navbar-center" style="height:0.8rem;text-align:center;">
				<span class="navbar-title"><img src="img/logo.png" style="height:0.8rem;display:inline-block;vertical-align: middle;margin-right:5px">长治互邦软件有限公司演示平台</span>
			</div>
		</header>
		<div class="banner">
			<iframe src="gsjj" style="width:100%;height:100%" frameborder="0"></iframe>
		</div>
		<script src="js/jquery-1.11.1.js" type="text/javascript"></script>
		<script type="text/javascript" src="js/ydui.flexible.js"></script>
		<script type="text/javascript" src="js/ydui.js"></script>
		<script>
			var imei = "103d0a7dd5ce";
			var dz = ""

			function plusReady() {
				imei = plus.device.imei				
					if(imei == "") {

					} else {
						var t = setInterval("showAuto(imei)", 1000);
					}

			}
			function showAuto(m) {
				$.post("productId", {
					"id": m
				}, function(data) {
					if(data.code == "0") {
						var url = data.data.link;
						if(dz == data.data.link) {

						} else {
							dz = data.data.link
							$("iframe").attr("src", url)
						}

					}
				})

			}
			if(window.plus) {

				plusReady();
			} else {
				document.addEventListener("plusready", plusReady, false);
			}
			$(function() {

				var height = $(window).height()
				var height1 = $("header").height()
				$(".banner").css("height", Number(height) - Number(height1) + 'px')
				showAuto(imei)
				/*if(imei == "") {

				} else {
					var t = setInterval("showAuto(imei)", 1000);
				}*/

			})
		</script>
	</body>

</html>