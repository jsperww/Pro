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
				<h1>存款记录</h1></li>
			<li>存款本金：20万元</li>
			<li>存款利率：0.12%</li>
			<li>存款地点：八一广场营业厅</li>
			<li>存款时间：2018-1-2 10:00</li>
			<li></li>
			<li>存款本金：16万元</li>
			<li>存款利率：0.12%</li>
			<li>存款地点：八一广场营业厅</li>
			<li>存款时间：2018-1-2 11:00</li>
			<li></li>
			<li>存款本金：10万元</li>
			<li>存款利率：0.12%</li>
			<li>存款地点：八一广场营业厅</li>
			<li>存款时间：2018-1-2 9:00</li>
			<li></li>
		</ul>
		<div id="tb" style="width:100%;height:300px"></div>
		<script src="js/jquery-1.11.1.js" type="text/javascript"></script>
		<script type="text/javascript" src="js/ydui.flexible.js"></script>
		<script type="text/javascript" src="js/ydui.js"></script>
		<script src="js/highcharts.js"></script>
		<script>
			$(function() {
				$("body").fadeIn()
				$("#tb").highcharts({
					chart: {
						type: 'line'
					},
					title: {
						text: '银行存款记录'
					},
					subtitle: {
						text: '数据来源：长治漳泽农商行'
					},
					credits: {
					enabled: false
				},
					xAxis: {
						categories: ['一月', '二月', '三月', '四月', '五月', '六月', '七月', '八月', '九月', '十月', '十一月', '十二月']
					},
					yAxis: {
						title: {
							text: '存款 (万元)'
						}
					},
					plotOptions: {
						line: {
							dataLabels: {
								enabled: true // 开启数据标签
							},
							enableMouseTracking: false // 关闭鼠标跟踪，对应的提示框、点击事件会失效
						}
					},
					series: [{
						name: '存款',
						data: [7.0, 6.9, 9.5, 14.5, 18.4, 21.5, 25.2, 26.5, 23.3, 18.3, 13.9, 9.6]
					}]
				})
			})
		</script>
	</body>

</html>