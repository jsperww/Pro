<!DOCTYPE html>
<html>

	<head>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<link rel="stylesheet" href="css/ydui.css">
		<title></title>
		<style>
			img{width:100%;height:100%;position: fixed;left:0;right:0;}
			.new{position: fixed;width:40%;left:30%;top:40%;margin-top:-50%padding:10px 0;border:0;border-radius: 5px;overflow: hidden;}
			.new input{padding-left:15px;width:100%;background:white}
			.new button{float:right;width:40%}
		</style>
	</head>

	<body hiden="" style="height:100%;height:100%;overflow: hidden;padding:0">
		<img src="img/bg.png">
		<div class="new">
			<input class="cell-input" placeholder="请输入用户名" style="border-bottom:1px #ECECEC solid">
			<input class="cell-input" placeholder="请输入密码">
			<div>
			<span style="display:inline-block;height:35px;line-height:35px;color:white;position: fixed;left:35%;" class="span">忘记密码</span>
			<button class="btn btn-primary">登录</button>
			<div>
		</div>
		
		<script src="js/jquery-1.11.1.js" type="text/javascript"></script>
		<script type="text/javascript" src="js/ydui.flexible.js"></script>
		<script type="text/javascript" src="js/ydui.js"></script>
		
		<script>
			$(function() {
				$("body").fadeIn()
				var name=sessionStorage.getItem("name")
				if(name==null||name==undefined){
					
				}else{
					window.location.href="new.html"
				}
				
				$(".btn").click(function(){
					sessionStorage.setItem("name","name")
					window.location.href="new.html"
				})
			})
		</script>
	</body>

</html>