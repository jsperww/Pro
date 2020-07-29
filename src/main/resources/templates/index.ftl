<!DOCTYPE html>
<html>

	<head>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<link rel="stylesheet" href="css/ydui.css">
		<link rel="stylesheet" href="css/index.css">
		<title></title>
		<style>
			.bannerleft>li {
				font-size: 0.3rem;
				padding-left: 30%;
				box-sizing: border-box;
			}
			
			.bannerright ul li {
				margin-left: 1.4%
			}
			
			.cont li {
				text-align: center;
			}
			
			* {
				margin: 0;
				padding: 0
			}
			
			#plus {
				position: absolute;
				width:120px;
				left: 150px;
				bottom: 20px;
				height: 1rem;
				line-height: 1rem;
			}
			
			#down {
				position: absolute;
				width:120px;
				right: 150px;
				bottom: 20px;
				height: 1rem;
				line-height: 1rem;
			}
			
			#sy {
				position: absolute;
				width:120px;
				left: 20px;
				bottom: 20px;
				height: 1rem;
				line-height: 1rem;
			}
			
			#my {
				position: absolute;
				width:120px;
				right: 20px;
				bottom: 20px;
				height: 1rem;
				line-height: 1rem;
			}
			
			.item {
				position: absolute;
				left: 40%;
				bottom: 20px;
				width: 100px
			}
			
			.item input {
				width: 50px;
				background: white;
				height: 0.7rem;
				line-height: 0.7rem;
				border: 1px #ECECEC solid;
				text-align: center;
				display: inline-block;
			}
		</style>
	</head>

	<body>

		<header class="m-navbar" style="height:0.8rem">

			<div class="navbar-center" style="height:0.8rem;text-align:center;">
				<span class="navbar-title">长治互邦软件有限公司演示平台</span>
			</div>
		</header>
		<div class="banner">
			<div class="bannerleft">
				<div class="cont">

					<img src="img/logo.png" style="margin:10px auto;width:50%">

				</div>
				<li src="new" class="active" code="103d0a7dd5ce">设备1</li>
				<li src="new" code="103d0a7dd5e8">设备2</li>
				<li src="new" code="103d0a7dd37f">设备3</li>
				<li></li>

			</div>
			<div class="bannerright">
				<ul style="position: relative;"></ul>
			</div>
		</div>
		<script src="js/jquery-1.11.1.js" type="text/javascript"></script>
		<script type="text/javascript" src="js/ydui.flexible.js"></script>
		<script type="text/javascript" src="js/ydui.js"></script>
		<script>
			$(function() {
				var height = $(window).height()
				var height1 = $("header").height()
				$(".banner").css("height", Number(height) - Number(height1) + 'px')
				var height2 = $(".cont").height()
				var height3 = (Number(height) - Number(height1) - Number(height2)) / 4;
				$(".bannerleft>li").css('height', height3 + 'px')
				$(".bannerleft>li").css('line-height', height3 + 'px')
				abb()
				//下一页
				$(".bannerright").delegate('#down', 'click', function() {
					var url = $(".bannerright .hb_active").attr("url")
					var wj = $(".bannerright .hb_active").attr("wjj")
					var id_prikey = $(".bannerright .hb_active").attr("id_prikey")
					var number = $(".bannerright .hb_active").attr("page")
					console.log(number)
					var search = ''
					if(url.indexOf("?") == -1) {
						search = url + '?wjj=' + wj + '&id=002'
					} else {

						var index2 = url.indexOf("?")
						var index = url.indexOf("&")
						var m = url.substr(index)
						var b = url.slice(0, index2)
						m = m.substr(4, 3)

						if(Number(m) == number) {
							YDUI.dialog.alert("已经是最后一页了")
							return
						} else {
							var n = Number(m) + 1;
							$(".item input").val(n)
							n = String(n)
							var a = ''
							if(n.length < 2) {
								a = "00" + n
							} else if(n.length < 3) {
								a = "0" + n
							} else {
								a = n
							}
							search = b + '?wjj=' + wj + '&id=' + a
						}

					}
					var senddata = {
						"id_prikey": id_prikey,
						"url": search
					}
					$.post("updateProduct", senddata, function(data) {
						if(data.code == "0") {
							abb()
						} else {
							YDUI.dialog.alert(data.message)
						}
					})
				})
				//上一页
				$(".bannerright").delegate('#plus', 'click', function() {
					var url = $(".bannerright .hb_active").attr("url")
					var wj = $(".bannerright .hb_active").attr("wjj")
					var id_prikey = $(".bannerright .hb_active").attr("id_prikey")
					var search = ''
					if(url.indexOf("?") == -1) {
						YDUI.dialog.alert("已经是首页了")
						return
					} else {
						var index2 = url.indexOf("?")
						var index = url.indexOf("&")
						var m = url.substr(index)
						var b = url.slice(0, index2)
						m = m.substr(4, 3)
						if(m == "001") {
							YDUI.dialog.alert("已经是首页了")
							return
						} else {
							var n = Number(m) - 1;
							$(".item input").val(n)
							n = String(n)
							var a = ''
							if(n.length < 2) {
								a = "00" + n
							} else if(n.length < 3) {
								a = "0" + n
							} else {
								a = n
							}
							search = b + '?wjj=' + wj + '&id=' + a
						}

					}
					var senddata = {
						"id_prikey": id_prikey,
						"url": search
					}
					$.post("updateProduct", senddata, function(data) {
						if(data.code == "0") {
							abb()
						} else {
							YDUI.dialog.alert(data.message)
						}
					})

				})
				//切换系统
				$(".bannerright ul").delegate("li", "click", function() {
					var id = $(this).attr("id")
					var code = $(".active").attr('code')
					$(".bannerright li div").css("display", "none")
					$(this).find("div").css("display", "block")
					$.post("modifyrole", {
						"proId": id,
						"id": code,
						"flag": "1"
					}, function(data) {
						if(data.code = "0") {
							$(".bannerleft .active").click()
						} else {
							YDUI.dialog.alert(data.message)
						}
					})
				})
				//切换屏幕
				$(".bannerleft li").click(function() {
					$(this).addClass("active").siblings("li").removeClass("active")
					var code = $(this).attr("code")
					$.post("productId", {
						"id": code
					}, function(data) {
						if(data.code == "0") {
							var rel = data.data.id_prikey;
							$(".bannerright li").each(function() {
								if($(this).attr("id") == rel) {
									$(this).addClass("hb_active")
									$(this).find("div").css("display", "block")
								} else {
									$(this).removeClass("hb_active")
									$(this).find("div").css("display", "none")
								}
							})
						}
					})
				})
				//输入页吗
				$(".bannerright").delegate('input', 'change', function() {
					var url = $(".bannerright .hb_active").attr("url")
					var wj = $(".bannerright .hb_active").attr("wjj")
					var id_prikey = $(".bannerright .hb_active").attr("id_prikey")
					var index2 = url.indexOf("?")
					var b = url.slice(0, index2)
					var n = $(this).val()
					n = String(n)
					var a = ''
					if(n.length < 2) {
						a = "00" + n
					} else if(n.length < 3) {
						a = "0" + n
					} else {
						a = n
					}
					search = b + '?wjj=' + wj + '&id=' + a;
					var senddata = {
						"id_prikey": id_prikey,
						"url": search
					}
					$.post("updateProduct", senddata, function(data) {
						if(data.code == "0") {
							abb()
						} else {
							YDUI.dialog.alert(data.message)
						}
					})
				})

				//首页
				$(".bannerright").delegate('#sy', 'click', function() {
					var url = $(".bannerright .hb_active").attr("url")
					var wj = $(".bannerright .hb_active").attr("wjj")
					var id_prikey = $(".bannerright .hb_active").attr("id_prikey")
					var index2 = url.indexOf("?")
					var b = url.slice(0, index2)

					search = b + '?wjj=' + wj + '&id=001';
					var senddata = {
						"id_prikey": id_prikey,
						"url": search
					}
					$.post("updateProduct", senddata, function(data) {
						if(data.code == "0") {
							abb()
						} else {
							YDUI.dialog.alert(data.message)
						}
					})
				})

				//末页
				$(".bannerright").delegate('#my', 'click', function() {
					var url = $(".bannerright .hb_active").attr("url")
					var wj = $(".bannerright .hb_active").attr("wjj")
					var id_prikey = $(".bannerright .hb_active").attr("id_prikey")
					var number = $(".bannerright .hb_active").attr("page")
					var index2 = url.indexOf("?")
					var b = url.slice(0, index2)
					var n = String(number)
					var a = ''
					if(n.length < 2) {
						a = "00" + n
					} else if(n.length < 3) {
						a = "0" + n
					} else {
						a = n
					}
					search = b + '?wjj=' + wj + '&id=' + a;
					var senddata = {
						"id_prikey": id_prikey,
						"url": search
					}
					$.post("updateProduct", senddata, function(data) {
						if(data.code == "0") {
							abb()
						} else {
							YDUI.dialog.alert(data.message)
						}
					})
				})
			})

			function abb() {
				var id = $(".active").attr("code")
				$.post("allproduct", function(data) {
					if(data.code = "0") {
						var rel = data.data;
						var html = '';
						for(var i in rel) {
							html += '<li id="' + rel[i].id_prikey + '" url="' + rel[i].link + '" wjj="' + rel[i].intro + '" id_prikey="' + rel[i].id_prikey + '" page="' + rel[i].pageCode + '"><img src="' + rel[i].icon + '">';
							html += '<p>' + rel[i].name + '</p><div><i class="icon-checkoff"></i></div></li>'
						}
						html += '<a href="javascript:;" class="btn btn-primary" id="plus">上一页</a><a href="javascript:;" class="btn btn-primary" id="down">下一页</a>';
						html += '<a href="javascript:;" class="btn btn-primary" id="sy">首 &nbsp;&nbsp;页</a><a href="javascript:;" class="btn btn-primary" id="my">末 &nbsp;&nbsp;页</a>';
						html += '<div class="item">第 <input type="number" class="cell-input"> 页</div>'
						$(".bannerright ul").html(html)
						$.post("productId", {
							"id": id
						}, function(data) {
							if(data.code == "0") {
								var rel = data.data.id_prikey;
								$(".bannerright li").each(function() {
									if($(this).attr("id") == rel) {
										$(this).addClass("hb_active")
										$(this).find("div").css("display", "block")
										var url = $(this).attr("url")
										var index2 = url.indexOf("?")
										var index = url.indexOf("&")
										var m = url.substr(index)
										var b = url.slice(0, index2)
										m = m.substr(4, 3)
										$(".item input").val(Number(m))
									}
								})
							}
						})
					}
				})
			}
		</script>
	</body>

</html>