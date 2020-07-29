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
		</style>
	</head>

	<body hiden="">
		<ul>
			<li>
				<h1>信用卡记录</h1></li>
			<li>信用卡额度：10万元</li>
			<li>消费次数：5次</li>
			<li>消费金额：20000元</li>
			<li>信用卡使用范围：教育、金融、健康、医疗、保健</li>
			<li>贷款记录：40万元（房贷）</li>

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