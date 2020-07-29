<!DOCTYPE html>
<html>

	<head>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<link rel="stylesheet" href="css/ydui.css">
		<link rel="stylesheet" href="css/index.css">
		<title></title>
	</head>

	<body hidden="">
		<!--<header class="m-navbar" style="height:0.8rem;line-height:0.8rem">
				<a href="index.html" class="navbar-item" style="height:0.8rem;line-height:0.8rem">
        	<i class="back-ico"></i>
    		</a>
			<div class="navbar-center" style="height:0.8rem;text-align:center;line-height:0.8rem">
				<span class="navbar-title">农商银行叫号系统</span>
			</div>
			  
			<div class="navbar-item" style="font-size:0.2rem;height:0.8rem;line-height:0.8rem">
				<span class="navbar-title">欢迎您：张晓红</span>
				
			</div>
		</header>-->
		   <div class="banner">
		   	<div class="bannerleft">
		   		<div class="cont">
		   			<div class="contleft">
		   				<img src="img/xm.png">
		   			</div>
		   			<div class="contright">
		   				<h3>张晓芳</h3>
		   				<p>03125665123</p>
		   				<p><img src="img/ly.png"><img src="img/QQ.png"><img src="img/weixin.png"></p>
		   			</div>
		   			<ul>
		   			<li>
		   				在线客服：89798484
		   			</li>
		   			<li>
		   				客服中心：0355-89798484
		   			</li>
		   			<li>
		   			请在正常时间8:00-18:00时间段回复
		   			</li>
		   			</ul>
		   		</div>
		   		<li src="yhxx" class="active"><img src="img/yhxx.png">个人信息</li>
		   		<li src="xyk"><img src="img/xyk.png">信用卡</li>
		   		<li src="ckjl"><img src="img/ckjl.png">存款记录</li>
		   		<li src="lcbx"><img src="img/lcbx.png">理财保险</li>		
		   		<li src="jjgp"><img src="img/gp.png">基金股票</li>
		   		<li src="wxjr"><img src="img/wxjr.png">微信金融</li>
		   		<li src="xydk"><img src="img/xydk.png">小额信贷</li>
		   		<li src="wsyh"><img src="img/wsyh.png">网上银行</li>
		   	</div>
		   	<div class="bannerright">
		   		<iframe src="yhxx" style="width:100%;height:100%" frameborder="0"></iframe>
		   	</div>
		   </div>
		<script src="js/jquery-1.11.1.js" type="text/javascript"></script>
		<script type="text/javascript" src="js/ydui.flexible.js"></script>
		<script type="text/javascript" src="js/ydui.js"></script>
		<script>
			$(function(){
				$("body").fadeIn()
				var height=$(window).height()
				var height1=$("header").height()
				console.log(height1)
				$(".banner").css("height",Number(height)-Number(height1)+'px')
				var height2=$(".cont").height()
				var height3=(Number(height)-Number(height1)-Number(height2))/8;
				
				$(".bannerleft>li").css('height',height3+'px')
				$(".bannerleft>li").css('line-height',height3+'px')

				$(".bannerleft li").click(function(){
					$(this).addClass("active").siblings("li").removeClass("active")
					var html=$(this).attr("src")
					$(".bannerright iframe").attr("src",html)
				})
				$(".btn").click(function(){
					window.location.href="index.html"
				})
			})
			
		</script>
	</body>

</html>