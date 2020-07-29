<!DOCTYPE html>
<html>

	<head>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<link rel="stylesheet" href="css/ydui.css">
		<title></title>
		<style>
			h1{width:100%;height:30px;line-height:30px;background:#E8F1E5;padding-left:15px}
			h2{width:100%;text-align: center;font-size:0.4rem;height:150px;line-height:150px}
			ul li {
				width: 100%;
				height: 0.6rem;
				line-height: 0.6rem;
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
		</style>
	</head>
		
	<body hiden="">
		<h1>排号信息</h1>
		<h2>排号：20号</h2>
		<ul>
			<li>
			<b>目前排号：10号</b></li>
			<li><b>需等候时间：10分钟</b></li>
			<li><b>等待人数：10人</b></li>
			<li><b>开通窗口数：3</b></li>
			<li><b>特别提示</b></li>
			<li>1.注意您自己的排号信息，过后需重新排号。</li>
			<li>2.如果人数过多，请另择时间办理。</li>
			<li>3.请选择就近营业厅办理，节省您的宝贵时间。</li>
			<li>1.您可关注我行的微信公众号，如有其它需求，可拨打我们的服务热线0355-6513894</li>
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