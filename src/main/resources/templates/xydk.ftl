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
			ul li div{float:left;}
			ul li div button{width:3px;background:#0192E1;height:0.4rem;border:0;vertical-align: middle;margin-right:10px;}
			.grids-icon{height:1rem}
		</style>
	</head>

	<body hiden="">
		<ul>
			<li>
				<h1>小额信贷</h1></li>
				<li></li>
				<li><div style=""><button></button><b>小贷服务推荐</b></div></li>
		</ul>
		<div class="m-grids-3">
			<a href="#" class="grids-item">
				<div class="grids-icon"><img src="img/xfd.png"></div>
				<div class="grids-txt"><span>信用卡</span></div>
				<div class="grids-txt"><span>随时快速到账</span></div>
			</a>
			<a href="#" class="grids-item">
				<div class="grids-icon"><img src="img/dkgl.png"></div>
				<div class="grids-txt"><span>贷款管理</span></div>
				<div class="grids-txt"><span>查询信息记录</span></div>
			</a>
			<a href="#" class="grids-item">
				<div class="grids-icon"><img src="img/dzdk.png"></div>
				<div class="grids-txt"><span>网上银行</span></div>
				<div class="grids-txt"><span>贷款实时申请</span></div>
			</a>
		</div>
		<ul>
		<li>
				<div style=""><button style="background:#8FC31F"></button><b>信贷收益</b></div></li>
				<li></li>
				<li>
					<div style="width:30%;color:#FF6C00;font-size:0.25rem"><b>+10.23%</b></div>
					<div style="width:70%;font-size:0.25rem"><b>稳健的投资理财项目</b></div>
				</li>
				<li>
					<div style="width:30%;color:#6A6A6A;">近一年涨幅</div>
					<div style="width:70%">蚂蚁基金 | 个人消费贷款混合A类</div>
				</li>
				<li>
					<div style="width:30%;color:#FF6C00;font-size:0.25rem"><b>+9.23%</b></div>
					<div style="width:70%;font-size:0.25rem"><b>长期稳定投资项目</b></div>
				</li>
				<li>
					<div style="width:30%;color:#6A6A6A;">近一年涨幅</div>
					<div style="width:70%">国债信贷 | 国债贷款A类</div>
				</li>
		</ul>
		<script src="js/jquery-1.11.1.js" type="text/javascript"></script>
		<script type="text/javascript" src="js/ydui.flexible.js"></script>
		<script type="text/javascript" src="js/ydui.js"></script>
		
		<script>
			$(function() {
				$("body").fadeIn()
				
			})
		</script>
	</body>

</html>