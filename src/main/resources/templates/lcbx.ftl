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
				<h1>理财保险信息</h1></li>
		</ul>
		<div id="tb" style="width:100%;height:300px"></div>
		<div id="tb2" style="width:100%;height:400px"></div>
		<script src="js/jquery-1.11.1.js" type="text/javascript"></script>
		<script type="text/javascript" src="js/ydui.flexible.js"></script>
		<script type="text/javascript" src="js/ydui.js"></script>
		<script src="js/highcharts.js"></script>
		<script>
			$(function() {
				$("body").fadeIn()
				$('#tb').highcharts({
					chart: {
						plotBackgroundColor: null,
						plotBorderWidth: null,
						plotShadow: false
					},
					title: {
						text: ''
					},
					colors: ['#E38A48', '#EFB843', '#65E4F7', '#FFE159'],
					tooltip: {
						headerFormat: '{series.name}<br>',
						pointFormat: '{point.name}: <b>{point.percentage:.1f}%</b>'
					},

					plotOptions: {
						pie: {
							allowPointSelect: true,
							cursor: 'pointer',
							showInLegend: true,
							dataLabels: {
								enabled: true,
								format: '<b>{point.name}</b>: {point.percentage:.1f} %',
								style: {
									color: (Highcharts.theme && Highcharts.theme.contrastTextColor) || 'black'
								}
							}
						}
					},
					credits: {
						enabled: false
					},
					series: [{
						type: 'pie',
						name: '理财保险产品占比',
						data: [
							['理财产品', 99], {
								name: '保险产品',
								y: 50,
								sliced: true,
								selected: true
							}
						]
					}]
				});
				$('#tb2').highcharts({
					chart: {
						plotBackgroundColor: null,
						plotBorderWidth: null,
						plotShadow: false,
						spacing: [120, 0, 40, 0]
					},
					title: {
						floating: true,
						text: '理财产品',
						style:{fontSize:'16px'}
						
					},
					colors: ['#E38A48', '#EFB843', '#65E4F7', '#FFE159'],
					tooltip: {
						pointFormat: '{series.name}: <b>{point.percentage:.1f}%</b>'
					},
					plotOptions: {
						pie: {
							allowPointSelect: true,
							cursor: 'pointer',
							showInLegend: true,
							dataLabels: {
								enabled: true,
								format: '<b>{point.name}</b>: {point.percentage:.1f} %',
								style: {
									color: (Highcharts.theme && Highcharts.theme.contrastTextColor) || 'black'
								}
							},
							point: {
								events: {
									mouseOver: function(e) { // 鼠标滑过时动态更新标题
											// 标题更新函数，API 地址：https://api.hcharts.cn/highcharts#Chart.setTitle
											chart.setTitle({
												text: e.target.name + '\t' + e.target.y + ' %'
											});
										}
										//, 
										// click: function(e) { // 同样的可以在点击事件里处理
										//     chart.setTitle({
										//         text: e.point.name+ '\t'+ e.point.y + ' %'
										//     });
										// }
								}
							},
						}
					},
					series: [{
						type: 'pie',
						innerSize: '70%',
						name: '资金占比',
						data: [{
								name: '工资宝',
								y: 45.0,
								url: 'http://bbs.hcharts.cn'
							},
							['金喜鹊', 26.8], {
								name: '金蚂蚁',
								y: 12.8,
								sliced: true,
								selected: true
								
							},
							['金鲤鱼', 8.5],
							['金凤凰', 6.2],
							['其他', 0.7]
						]
					}]
				}, function(c) {
					// 环形图圆心
					var centerY = c.series[0].center[1],
						titleHeight = parseInt(c.title.styles.fontSize);
					c.setTitle({
						y: centerY + titleHeight / 2
					});
					chart = c;
				});
			})
		</script>
	</body>

</html>