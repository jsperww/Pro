<!DOCTYPE html>
<html>

	<head>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<link rel="stylesheet" href="css/ydui.css">
		<title>互邦软件演示平台</title>
	</head>

	<body style="height:100%">
		<div class="m-slider" id="J_Slider">
			<div class="slider-wrapper">
				<div class="slider-item">
					<a href="#">
						<img src="img/09.png">
					</a>
				</div>
				<div class="slider-item">
					<a href="#">
						<img src="img/10.png">
					</a>
				</div>
				<div class="slider-item">
					<a href="#">
						<img src="img/13.png">
					</a>
				</div>
			</div>
			<div class="slider-pagination"></div>
			<!-- 分页标识 -->
		</div>
		<script src="js/jquery-1.11.1.js" type="text/javascript"></script>
		<script type="text/javascript" src="js/ydui.flexible.js"></script>
		<script type="text/javascript" src="js/ydui.js"></script>
		<script>
			var height=$(window).height()
			$(".slider-item img").css("height",height+'px')
			$('#J_Slider').slider({
				speed: 300,
				autoplay: 3000,
				lazyLoad: true
			});
		</script>
	</body>

</html>