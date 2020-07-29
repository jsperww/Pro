<!DOCTYPE html>
<html>

	<head>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<link rel="stylesheet" href="css/ydui.css">
		<title></title>
		<style>
			ul li {
				width: 100%;
				height: 0.8rem;
				line-height: 0.8rem;
				font-size: 0.2rem;
				padding-left: 15px;
				color: #6A6A6A;
				list-style: none;
			}
			
			ul li:nth-child(add) {
				background: #E8F1E5
			}
			
			ul li:nth-child(even) {
				background: white;
			}
			div button{width:3px;background:#0192E1;height:0.4rem;border:0;vertical-align: middle;margin-right:10px;}
			.grids-icon{height:1rem}
		</style>
	</head>

	<body hiden="">
		<div class="m-slider" id="J_Slider" style="">
			<div class="slider-wrapper">
				<div class="slider-item">
					<a href="#">
						<img src="img/banner_2.jpg">
					</a>
				</div>
				<div class="slider-item">
					<a href="#">
						<img src="img/banner_4.jpg">
					</a>
				</div>
				<div class="slider-item">
					<a href="#">
						<img src="img/banner_1.jpg">
					</a>
				</div>
			</div>
			<div class="slider-pagination"></div>
			<!-- 分页标识 -->
		</div>
		<div style="width:100%;height:40px;line-height:40px;padding-left:15px;background:white"><b style="color:#FF0000;display:inline-block;margin-right:15px">快讯</b><button style="margin-right:15px"></button>2018年漳泽农商行最新通知</div>
		<div class="m-grids-4" style="border-top:1px #ECECEC solid">
			<a href="#" class="grids-item">
				<div class="grids-icon"><img src="img/zhye.png"></div>
				<div class="grids-txt"><span>账户余额</span></div>
			</a>
			<a href="#" class="grids-item">
				<div class="grids-icon"><img src="img/tzlc.png"></div>
				<div class="grids-txt"><span>投资理财</span></div>
			</a>
			<a href="#" class="grids-item">
				<div class="grids-icon"><img src="img/zzhk.png"></div>
				<div class="grids-txt"><span>转账汇款</span></div>
			</a>
			<a href="#" class="grids-item">
				<div class="grids-icon"><img src="img/dk.png"></div>
				<div class="grids-txt"><span>贷款</span></div>
			</a>
			<a href="#" class="grids-item">
				<div class="grids-icon"><img src="img/sjcz.png"></div>
				<div class="grids-txt"><span>手机充值</span></div>
			</a>
			<a href="#" class="grids-item">
				<div class="grids-icon"><img src="img/kjzf.png"></div>
				<div class="grids-txt"><span>快捷支付</span></div>
			</a>
		</div>
		<script src="js/jquery-1.11.1.js" type="text/javascript"></script>
		<script type="text/javascript" src="js/ydui.flexible.js"></script>
		<script type="text/javascript" src="js/ydui.js"></script>

		<script>
			$(function() {
				$("body").fadeIn()
				$('#J_Slider').slider({
					speed: 200,
					autoplay: 2000,
					lazyLoad: true
				});
			})
		</script>
	</body>

</html>