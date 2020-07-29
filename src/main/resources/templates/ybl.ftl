<!DOCTYPE html>
<html>

	<head>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<link rel="stylesheet" href="css/ydui.css">
		<title></title>
		<style>
			ul{width:100%;overflow: hidden;}
			ul li{width:33.33%;float:left;}
			ul li img{width:50%;margin:10px auto;}
			h1{width:100%;height:30px;line-height:30px;background:#E8F1E5;padding-left:15px}
			ul li p{height:30px;line-height:30px;width:100%;text-align: center;}
		</style>
	</head>

	<body hiden="">
		<h1>已经办理完业务的客户</h1>
		<ul>
			<li><img src="img/1.png">
			<p>张晓红</p>
			</li>
			<li><img src="img/2.png">
			<p>李四</p></li>
			<li><img src="img/3.png">
			<p>王芳</p></li>
			<li><img src="img/4.png">
			<p>赵晓芳</p></li>
			<li><img src="img/5.png">
			<p>李明</p></li>
			<li><img src="img/6.png">
			<p>赵小刚</p></li>
			<li><img src="img/7.png">
			<p>张强</p></li>
			<li><img src="img/8.png">
			<p>李倩</p></li>
		</ul>
		
		<script src="js/jquery-1.11.1.js" type="text/javascript"></script>
		<script type="text/javascript" src="js/ydui.flexible.js"></script>
		<script type="text/javascript" src="js/ydui.js"></script>
		
		<script>
			$(function() {
				$("body").fadeIn()
				$("ul li").click(function(){
					window.parent.location.href="nav.html"
				})
			})
		</script>
	</body>

</html>