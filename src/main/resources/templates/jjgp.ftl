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
			
		</style>
	</head>

	<body hiden="">
		<ul>
			<li>
				<h1>基金股票</h1></li>

		</ul>
		<div id="tb" style="width:100%;height:300px"></div>
		<ul>
		<li></li>
		<li><div style="width:30%;text-align: center;"><button></button>2017.10.12</div>
			<div style="width:70%"><p>股票增值：1万元</p>
				
			</div>
		</li>
		<li><div style="width:30%;text-align: center;">&nbsp;</div>
			<div style="width:70%"><p>基金增值：1.2万元</p></div>
		</li>
		<li><div style="width:30%;text-align: center;"><button style="background:#EDCE00"></button>2017.11.12</div>
			<div style="width:70%"><p>股票增值：0.5万元</p>
				
			</div>
		</li>
		<li><div style="width:30%;text-align: center;">&nbsp;</div>
			<div style="width:70%"><p>基金增值：0.2万元</p></div>
		</li>
		<li></li>
		</ul>
		
		<script src="js/jquery-1.11.1.js" type="text/javascript"></script>
		<script type="text/javascript" src="js/ydui.flexible.js"></script>
		<script type="text/javascript" src="js/ydui.js"></script>
		<script src="js/highcharts.js"></script>
		<script>
			$(function() {
				$("body").fadeIn()
				$('#tb').highcharts({
					chart: {
						type: 'column'
					},
					title: {
						text: '月平均收益'
					},
					subtitle: {
						text: '数据来源: 长治漳泽农商行'
					},
					xAxis: {
						categories: [
							'一月',
							'二月',
							'三月',
							'四月',
							'五月',
							'六月',
							'七月',
							'八月',
							'九月',
							'十月',
							'十一月',
							'十二月'
						],
						crosshair: true
					},
					yAxis: {
						min: 0,
						title: {
							text: '收益 (万元)'
						}
					},
					colors: ['#E38A48', '#EFB843', '#65E4F7', '#FFE159'],
					tooltip: {
						headerFormat: '<span style="font-size:10px">{point.key}</span><table>',
						pointFormat: '<tr><td style="color:{series.color};padding:0">{series.name}: </td>' +
							'<td style="padding:0"><b>{point.y:.1f}万元</b></td></tr>',
						footerFormat: '</table>',
						shared: true,
						useHTML: true
					},
					plotOptions: {
						column: {
							borderWidth: 0
						}
					},
					series: [{
						name: '基金',
						data: [4.9, 1.5, 6.4, 1.2, 1.0, 1.0, 5.6, 8.5, 2.4, 1.1, 5.6, 4.4]
					}, {
						name: '股票',
						data: [3.6, 7.8, 9.5, 9.4, 10.0, 4.5, 5.0, 4.3, 1.2, 3.5, 6.6, 2.3]
					}]
				});
			})
		</script>
	</body>

</html>