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
			ul li div button{width:5px;background:#0192E1;height:0.4rem;border:0;vertical-align: middle;margin-right:10px;}
			.grids-icon{height:1rem}
			.grids-txt{font-size:0.2rem}
		</style>
	</head>

	<body hiden="">
		<ul>
			<li>
				<h1>信用卡记录</h1></li>
		</ul>
		<div class="m-grids-5">
			<a href="#" class="grids-item">
				<div class="grids-icon"><img src="img/gzb.png"></div>
				<div class="grids-txt"><span>工资宝</span></div>
			</a>
			<a href="#" class="grids-item">
				<div class="grids-icon"><img src="img/zjls.png"></div>
				<div class="grids-txt"><span>资金流水</span></div>
			</a>
			<a href="#" class="grids-item">
				<div class="grids-icon"><img src="img/symx.png"></div>
				<div class="grids-txt"><span>收益明细</span></div>
			</a>
			<a href="#" class="grids-item">
				<div class="grids-icon"><img src="img/ztmx.png"></div>
				<div class="grids-txt"><span>在途明细</span></div>
			</a>
			<a href="#" class="grids-item">
				<div class="grids-icon"><img src="img/jf.png"></div>
				<div class="grids-txt"><span>积分记录</span></div>
			</a>
		</div>
		<ul>
		<li></li>
		<li><div style="width:30%;text-align: center;"><button></button>账户总额</div>
			<div style="width:70%"><p>累计转入金额：4000元</p>
				
			</div>
		</li>
		<li><div style="width:30%;text-align: center;">&nbsp;</div>
			<div style="width:70%"><p>总积分：1200元</p></div>
		</li>
		<li><div style="width:30%;text-align: center;">&nbsp;</div>
			<div style="width:70%"><p>总收益：100元</p></div>
		</li>
		<li><div style="width:30%;text-align: center;"><button style="background:#EDCE00"></button>收益明细</div>
			<div style="width:70%"><p>昨日收益：12元</p>
				
			</div>
		</li>
		<li><div style="width:30%;text-align: center;">&nbsp;</div>
			<div style="width:70%"><p>累计收益：120元</p></div>
		</li>
		<li></li>
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