<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="c" uri= "http://java.sun.com/jsp/jstl/core"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>淘表网 全球顶级名表商城◆100%正品天梭|浪琴手表|欧米茄|劳力士手表</title>
<meta name="Keywords" content="奢侈品,天梭手表,浪琴手表,欧米茄手表,劳力士手表" />
<meta name="Description"
	content="奢侈品网购网站,支持信用卡分期付款.囊括30个瑞士手表品牌:天梭手表Tissot,浪琴手Longines,欧米茄手表OMEGA,劳力士手表Rolex.全球联保,支持专柜验货." />

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<link href="css/style.css" rel="stylesheet" type="text/css" />
<link href="css/slides.css" rel="stylesheet" type="text/css" />

<script type="text/javascript" src="js/share.js"></script>
<script type="text/javascript" src="js/jquery.js"></script>
</head>

<body>
	<s:property value="#session.commoSaleNum.size()"/>
	${session.commoSaleNum.size() }
	<s:debug></s:debug>
	<div id="container">
		<!---顶部start---->

		<!--------顶部end ----->
		<!---第一通栏start---->
		<div class="box980">
			<div class="box680">
				<script>
					$("#ulClassSider li").eq(0).addClass("cur");
					$("#sildeim li ").eq(0).css("width", "135");
					$("#sildeim li ").eq(4).css("margin-right", "0px");
					$("#sildeim li ").eq(4).css("width", "135");//    $("#ulClassSider li a").eq(1).css("width","158");
					//    $("#ulClassSider li a").eq(2).css("width","138");
				</script>
			</div>
			<span class="clear"></span>
		</div>
		<div id="top">
			<div class="header">
				<div class="logo">
					<a href="index.html" title="淘表网全球顶级名表商城"><img
						src="images/logo.jpg" alt="淘表网全球顶级名表商城" />
					</a>
				</div>

				<div class="topnav">
					<div class="nav1">
						<span>
						<c:choose>
								<c:when test="${user.userName != null}">
									[ <s:property value="#session.user.userName"/>]
								</c:when>
								 <c:otherwise>
								 	<a href="login_register.html">[登录</a>|<a href="login_register.html"> 注册 ]</a>
								</c:otherwise>
						 </c:choose> 
							&nbsp;<a class="nav-cart"
							href="cart.html">我的购物车（<font color="#AB4419">0</font>）&nbsp;&nbsp;</a><a
							href="user/orderList.html">我的订单</a> </span>
						<div class="orderBox hab" id="h-warp1" onMouseOver="showFq(1,1)"
							onMouseOut="hiddenFq(1,1)">
							<p>
								<a href="user/index.html" rel="nofollow">我的淘表</a>
							</p>
							<ul id="h-con1" style="display:none;">
								<li><a href="" rel="nofollow">我的订单</a>
								</li>
								<li><a href="" rel="nofollow">我的咨询</a>
								</li>
								<li><a href="" rel="nofollow">我的收藏</a>
								</li>
								<li><a href="" rel="nofollow">收货地址</a>
								</li>
								<li><a href="" rel="nofollow">修改密码</a>
								</li>
							</ul>
						</div>
						<div class="helpBox hab" id="h-warp2" onMouseOver="showFq(2,2)" onMouseOut="hiddenFq(2,2)">
							<p>
								<a href="" rel="nofollow">帮助中心</a>
							</p>
							<ul id="h-con2" style="display:none;">
								<li><a href="" rel="nofollow">帮助中心</a>
								</li>
								<li><a href="" rel="nofollow">留言咨询</a>
								</li>
								<li><a href="" rel="nofollow">售后服务</a>
								</li>
								<li><a href="" rel="nofollow">联系客服</a>
								</li>
							</ul>
						</div>
					</div>
					<div class="nav2">
						<div class="Search">
							<form action="/list" method="GET">
								<input name="keyword" type="text" id="keyword"
									value="输入商品关键字，比如'天梭'..."
									onmouseover="if(this.value=='输入商品关键字，比如天梭...') {this.value=this.focus()}"  onmouseout="if(this.value=='')this.value='输入商品关键字，比如天梭...'" /><input
									name="btsearch" type="submit" id="btsearch" value="搜索" />
							</form>
						</div>
						<div class="Service">
							订购热线(免长途费)：<font> 13751801572</font>
						</div>
					</div>
				</div>
			</div>
			<div id="nav">
				<div class="mainNav" id="mainNav">
					<div class="mN-item mN-nobg" id="mN-current">
						<div class="nobg mN-h1">
							<a rel="nofollow" title="淘表奢侈品商城" href="index.html">首页</a>
						</div>
					</div>
					<div class="mN-item">
						<div class="mN-h1 mantit">
							<a title="男表" href="">男士手表</a>
						</div>
					</div>
					<div class="mN-item">
						<div class="mN-h1 womentit">
							<a title="女表" href="">女士手表</a>
						</div>
					</div>
					<div class="mN-item">
						<div class="mN-h1 lovetit">
							<a title="情侣表" href="">情侣对表</a>
						</div>
					</div>
					<div class="mN-item">
						<div class="mN-h1 h1bg allsbtit">
							<a title="所有手表" href="">所有手表</a>
						</div>
					</div>
					<div class="mN-item">
						<div class="mN-h1 h1bg allpptit">
							<a rel="nofollow" title="瑞士手表牌" href="">所有品牌</a>
						</div>
					</div>
					<div class="mN-item">
						<div class="mN-h1 h1bg story">
							<a rel="nofollow" href="">品牌故事</a>
						</div>
					</div>
					<div class="mN-item">
						<div class="mN-h1 h1bg knowledge">
							<a rel="nofollow" href="">手表常识</a>
						</div>
					</div>
					<div class="mN-item mN-nobg mN_right">
						<div class="mN-h1 zhongqiu">
							<a title="名表夜晏" href="">名表抢购</a>
						</div>
					</div>
				</div>
			</div>

			<!--主导航end-->
		</div>
		<!---第一通栏end---->
		<!---第二通栏start---->
		<div class="box980">
			<div class="box680">
				<div id="slide6" class="hotBrand">
					<div id="slideTit6" class="titBar b-titBar">
						<strong>品牌大全</strong>
						<!--<span class="hover" onmouseover="setSlide(6,0)">瑞士手表品牌</span><span onmouseover="setSlide(6,1)" class="">其他品牌手表</span>-->
						<a title="瑞士手表品牌" href="/brands_link.html" class="more">更多手表品牌&gt;&gt;</a>
					</div>
					<div class="brandName" id="marquee0">
						<p>
						<dl>
							<dt>
								<a href="product/productList.html" title="劳力士手表"><img
									src="images/brandlogo/rolex.jpg" alt="劳力士表" width="88"
									height="38" border="0">
								</a>
							</dt>
							<dd>
								<a title="劳力士手表" href="#">劳力士</a>
							</dd>
						</dl>
						<dl>
							<dt>
								<a href="product/productList.html" title="天梭手表"><img
									src="images/brandlogo/tissot.jpg" alt="天梭" width="88"
									height="38" border="0">
								</a>
							</dt>
							<dd>
								<a title="天梭手表" href="#">天梭</a>
							</dd>
						</dl>
						<dl class="mid">
							<dt>
								<a href="product/productList.html" title="浪琴手表"><img
									src="images/brandlogo/longines.jpg" alt="浪琴表" width="88"
									height="38">
								</a>
							</dt>
							<dd>
								<a title="浪琴" href="#">浪琴</a>
							</dd>
						</dl>
						<dl>
							<dt>
								<a href="#" title="欧米茄手表"><img
									src="images/brandlogo/omega.jpg" width="88" height="38" />
								</a>
							</dt>
							<dd>
								<a href="#" title="欧米茄">欧米茄</a>
							</dd>
						</dl>
						<dl>
							<dt>
								<a href="#" title="帝舵手表"><img
									src="images/brandlogo/tudor.jpg" alt="帝舵" width="88"
									height="38">
								</a>
							</dt>
							<dd>
								<a href="#">帝舵</a>
							</dd>
						</dl>
						<dl class="end">
							<dt>
								<a href="#" title="美度"><img alt="美度"
									src="images/brandlogo/mido.jpg" width="88" height="38" />
								</a>
							</dt>
							<dd>
								<a href="#" title="美度">美度</a>
							</dd>
						</dl>
						<dl>
							<dt>
								<a href="#" title="百达翡丽手表"><img
									src="images/brandlogo/patek_philippe.jpg" alt="百达翡丽" width="88"
									height="38">
								</a>
							</dt>
							<dd>
								<a title="百达翡丽" href="#">百达翡丽</a>
							</dd>
						</dl>
						<dl>
							<dt>
								<a href="#" title="依波路手表"><img alt="依波路"
									src="images/brandlogo/borel.jpg" width="88" height="38" />
								</a>
							</dt>
							<dd>
								<a href="#" title="依波路">依波路</a>
							</dd>
						</dl>
						<dl class="mid">
							<dt>
								<a href="#" title="朗坤手表"><img
									src="images/brandlogo/bylacher.jpg" width="88" height="38" />
								</a>
							</dt>
							<dd>
								<a href="#" title="朗坤">朗坤</a>
							</dd>
						</dl>
						<dl>
							<dt>
								<a href="#" title="汉米尔顿手表"><img
									src="images/brandlogo/namilton.jpg" width="88" height="38" />
								</a>
							</dt>
							<dd>
								<a href="#" title="汉米尔顿">汉米尔顿</a>
							</dd>
						</dl>
						<dl>
							<dt>&nbsp;</dt>
							<dd>
								<a href="#">卡地亚</a>
							</dd>
						</dl>
						<dl class="end">
							<dt>
								<a href="#" title="梅花手表"><img
									src="images/brandlogo/titoni.jpg" alt="梅花" width="88"
									height="38">
								</a>
							</dt>
							<dd>
								<a href="#">梅花</a>
							</dd>
						</dl>


						<dl>
							<dt>
								<a href="#" title="伯爵手表"><img
									src="images/brandlogo/piaget.jpg" alt="伯爵" width="88"
									height="38">
								</a>
							</dt>
							<dd>
								<a href="#">伯爵</a>
							</dd>
						</dl>

						<dl>
							<dt>
								<a href="#" title="江诗丹顿手表"><img
									src="images/brandlogo/jiansidandun.jpg" alt="江诗丹顿" width="88"
									height="38">
								</a>
							</dt>
							<dd>
								<a href="#">江诗丹顿</a>
							</dd>
						</dl>

						<dl class="mid">
							<dt>
								<a href="#" title="古琦手表"><img
									src="images/brandlogo/guji.jpg" alt="古琦" width="88" height="38">
								</a>
							</dt>
							<dd>
								<a href="#">古琦</a>
							</dd>
						</dl>

						<dl>
							<dt>
								<a href="#" title="积家手表"><img
									src="images/brandlogo/jijia.jpg" alt="积家" width="88"
									height="38">
								</a>
							</dt>
							<dd>
								<a href="#">积家</a>
							</dd>
						</dl>

						<dl>
							<dt>
								<a href="#" title="万国手表"><img
									src="images/brandlogo/wangguo.jpg" alt="万国" width="88"
									height="38">
								</a>
							</dt>
							<dd>
								<a href="#">万国</a>
							</dd>
						</dl>

						<dl class="end">
							<dt>
								<a href="#" title="宝玑手表"><img
									src="images/brandlogo/baoji.jpg" alt="宝玑" width="88"
									height="38">
								</a>
							</dt>
							<dd>
								<a href="#">宝玑</a>
							</dd>
						</dl>

						<dl>
							<dt>
								<a href="#" title="罗马手表"><img
									src="images/brandlogo/luoma.jpg" alt="罗马" width="88"
									height="38">
								</a>
							</dt>
							<dd>
								<a href="#">罗马</a>
							</dd>
						</dl>

						<dl>
							<dt>
								<a href="#" title="爱马仕手表"><img
									src="images/brandlogo/aimashi.jpg" alt="爱马仕" width="88"
									height="38">
								</a>
							</dt>
							<dd>
								<a href="#">爱马仕</a>
							</dd>
						</dl>

						<dl class="mid">
							<dt>
								<a href="#" title="芝柏手表"><img
									src="images/brandlogo/zibo.jpg" alt="芝柏" width="88" height="38">
								</a>
							</dt>
							<dd>
								<a href="#">芝柏</a>
							</dd>
						</dl>

						<dl>
							<dt>
								<a href="#" title="真力时手表"><img
									src="images/brandlogo/zhenglishi.jpg" alt="真力时" width="88"
									height="38">
								</a>
							</dt>
							<dd>
								<a href="#">真力时</a>
							</dd>
						</dl>

						<dl>
							<dt>
								<a href="#" title="豪雅手表"><img
									src="images/brandlogo/aoyi.jpg" alt="豪雅" width="88" height="38">
								</a>
							</dt>
							<dd>
								<a href="#">豪雅</a>
							</dd>
						</dl>

						<dl class="end">
							<dt>
								<a href="#" title="荣汉斯手表"><img
									src="images/brandlogo/hangronsi.jpg" alt="荣汉斯" width="88"
									height="38">
								</a>
							</dt>
							<dd>
								<a href="#">荣汉斯</a>
							</dd>
						</dl>
					</div>

					<span class="clear"></span>
				</div>
				<div id="slide3" class="newPro">
					<p id="slideTit3" class="titBar p-titBar">
						<strong>新品上市</strong><span class="hover"
							onMouseOver="setSlide(3,0)">火爆人气专区</span><span class=""
							onMouseOver="setSlide(3,1)">畅销精品专区</span><span class=""
							onMouseOver="setSlide(3,2)">最新优惠专区</span>
					</p>
					<div class="proList " style="display: block;">
					
					<c:forEach begin="0" end="2" var="i" step="1">
						<dl>
							<dt>
								<a href="product_detail?commodityId=${session.commohunmanNum[i].commodityId}" title="天梭T41.1.483.33"><img
									alt="天梭T41.1.483.33"
									src="${session.pichunmanNum[i].picPath}" width="175"
									height="175">
								</a>
								
								${session.commohunmanNum[i].commodityId}
							</dt>
							<dd class="hotword"> 以诞生地为名的150周年纪念款   人气：${session.commohunmanNum[i].hunmanNum}</dd>
							<dd class="protit">
								<a href="#">天梭Tissot 力洛克系列 蓝宝石水晶玻璃/日历/防水 男士机械表 T41.1.483.33</a>
							</dd>
							<dd class="Proprice">
								<span>特价:</span><span class="Price">￥${commohunmanNum[i].specialCost }</span> 抢购
							</dd>
						</dl>
					</c:forEach>
						<%--<dl>
							<dt>
								<a href="#" title="精时力V73091237790"><img
									alt="精时力V73091237790"
									src="images/watch/7871_thumb_G_1318457913703.jpg" width="175"
									height="175">
								</a>
							</dt>
							<dd class="hotword">贵族欧式风格 隽永典雅</dd>
							<dd class="protit">
								<a href="#">精时力Kienzle RETRO系列 矿物质玻璃/小秒盘/防水 男士机械表
									V73091237790</a>
							</dd>
							<dd class="Proprice">
								<span>特价:</span><span class="Price">￥5,499</span> 抢购
							</dd>
						</dl>
						<dl class="ldn">
							<dt>
								<a href="#" title="荣汉斯027/4121.44"><img alt="荣汉斯027/4121.44"
									src="images/watch/7786_thumb_G_1316654839775.jpg" width="175"
									height="175">
								</a>
							</dt>
							<dd class="hotword">现代简约时尚风 轻盈清新</dd>
							<dd class="protit">
								<a href="#">荣汉斯Junghans 大师系列 高级复合玻璃表面/防水/计时 男士自动机械表
									027/4121.44</a>
							</dd>
							<dd class="Proprice">
								<span>特价:</span><span class="Price">￥16,044</span> 抢购
							</dd>
						</dl>
						--%><span class="clear"></span>
					</div>
					<div class="proList none" style="display: none;">
					<c:forEach begin="0" end="2" var="i" step="1">
						<dl>
							<dt>
								<a href="#" title="精时力V83091342420"><img
									alt="精时力V83091342420"
									src="${picSaleNum[i].picPath }" width="175"
									height="175">
								</a>
							</dt>
							<dd class="hotword">出彩暗纹设计 精湛好技术    销量：${commoSaleNum[i].saleNum }</dd>
							<dd class="protit">
								<a href="#"> 精时力Kienzle RETRO系列 24小时时区/双时区/日期显示 男士石英表
									V83091342420</a>
							</dd>
							<dd class="Proprice">
								<span>特价:</span><span class="Price">￥${commoSaleNum[i].specialCost }</span> 抢购
							</dd>
						</dl>
						</c:forEach>
						<%--<dl>
							<dt>
								<a href="#" title="劳力士116400"><img alt="劳力士116400"
									src="images/watch/569_thumb_G_1304704551075.jpg" width="175"
									height="175">
								</a>
							</dt>
							<dd class="hotword">非凡抗磁功能 高效能防护系统</dd>
							<dd class="protit">
								<a href="#">劳力士Rolex MILGAUSS 抗磨/蓝水晶/防水 男士机械表 116400（黑色）</a>
							</dd>
							<dd class="Proprice">
								<span>特价:</span><span class="Price">￥51,869</span> 抢购
							</dd>
						</dl>
						<dl class="ldn">
							<dt>
								<a href="#" title="浪琴L4.774.4.52.6"><img
									alt="浪琴L4.774.4.52.6"
									src="images/watch/653_thumb_G_1315180632937.jpg" width="175"
									height="175">
								</a>
							</dt>
							<dd class="hotword">以简驭繁 最浪琴热销款</dd>
							<dd class="protit">
								<a href="#">浪琴Longines 军旗系列 蓝宝石水晶玻璃/日历/防水 男士机械表
									L4.774.4.52.6</a>
							</dd>
							<dd class="Proprice">
								<span>特价:</span><span class="Price">￥9,299</span> 抢购
							</dd>
						</dl>
						--%><span class="clear"></span>
					</div>
					<div class="proList none" style="display: none;">
					<c:forEach begin="0" end="2" var="i" step="1">
						<dl>
							<dt>
								<a href="/Tissot-g7934.html" title="天梭T41.5.413.73"><img
									alt="天梭T41.5.413.73"
									src="${picSaleDate[i].picPath }" width="175"
									height="175">
								</a>
							</dt>
							<dd class="hotword">力洛克地标底纹 隽永典雅  ${commoSaleDate[i].onSaleTime } </dd>
							<dd class="protit">
								<a href="#">天梭Tissot 力洛克系列 蓝宝石水晶玻璃/防水/日历 男士机械表 T41.5.413.73</a>
							</dd>
							<dd class="Proprice">
								<span>特价:</span><span class="Price">￥${commoSaleDate[i].specialCost }</span> 抢购
							</dd>
						</dl>
						</c:forEach>
						<%--<dl>
							<dt>
								<a href="/Longines-g7926.html" title="浪琴L2.733.4.72.2"><img
									alt="浪琴L2.733.4.72.2"
									src="images/watch/7926_thumb_G_1319136905382.jpg" width="175"
									height="175">
								</a>
							</dt>
							<dd class="hotword">缔造永恒 内外兼修选择</dd>
							<dd class="protit">
								<a href="#">浪琴Longines 经典复古系列 蓝宝石水晶玻璃/防水/日历 男士机械表
									L2.733.4.72.2</a>
							</dd>
							<dd class="Proprice">
								<span>特价:</span><span class="Price">￥22,632</span> 抢购
							</dd>
						</dl>
						<dl class="ldn">
							<dt>
								<a href="/Laco-g7843.html" title="朗坤861651"><img
									alt="朗坤861651"
									src="images/watch/7843_thumb_G_1318208432435.jpg" width="175"
									height="175">
								</a>
							</dt>
							<dd class="hotword">精湛技艺搭配巧手工艺</dd>
							<dd class="protit">
								<a href="/Laco-g7843.html">朗坤LACO 海洋系列 蓝宝石玻璃/日历/防水 男士机械表
									861651</a>
							</dd>
							<dd class="Proprice">
								<span>特价:</span><span class="Price">￥2,375</span> 抢购
							</dd>
						</dl>
						--%><span class="clear"></span>
					</div>

				</div>
				<div id="slide4" class="dscPro">
					<p id="slideTit4" class="titBar p-titBar">
						<strong>男士精品区</strong><span class="hover"
							onMouseOver="setSlide(4,0)">2011畅销表"情"</span><span class=""
							onMouseOver="setSlide(4,1)">精英男士致尚之选</span><span class=""
							onMouseOver="setSlide(4,2)">明星代言限量抢购</span>
					</p>
					<div class="proList " style="display: block;">
						<span class="clear"></span>
						<dl>
							<dt>
								<a href="#" title="天梭T907.410.16.033.00"><img
									alt="天梭T907.410.16.033.00"
									src="images/watch/7928_thumb_G_1319150870237.jpg" width="175"
									height="175">
								</a>
							</dt>
							<dd class="hotword">简约雅致 淡淡复古情怀</dd>
							<dd class="protit">
								<a href="#"> 天梭Tissot 金色系列 蓝宝石水晶玻璃/日历/防水 男士石英表
									T907.410.16.033.00</a>
							</dd>
							<dd class="Proprice">
								<span>特价:</span><span class="Price">￥13,455</span> 抢购
							</dd>
						</dl>
						<dl>
							<dt>
								<a href="#" title="欧米茄323.30.40.40.06.001"><img
									alt="欧米茄323.30.40.40.06.001"
									src="images/watch/5782_thumb_G_1295649064121.jpg" width="175"
									height="175">
								</a>
							</dt>
							<dd class="hotword">搭载"月球表"的美誉 强大性能</dd>
							<dd class="protit">
								<a href="#">欧米茄Omega 超霸系列 蓝宝石水晶镜面/日历/防水 男士机械表
									323.30.40.40.06.001</a>
							</dd>
							<dd class="Proprice">
								<span>特价:</span><span class="Price">￥28,690</span> 抢购
							</dd>
						</dl>
						<dl class="ldn">
							<dt>
								<a href="/Longines-g4072.html" title="浪琴L2.628.4.78.6"><img
									alt="浪琴L2.628.4.78.6"
									src="images/watch/4072_thumb_G_1285379143197.jpg" width="175"
									height="175">
								</a>
							</dt>
							<dd class="hotword">限时8.5折 直降2310元</dd>
							<dd class="protit">
								<a href="#">浪琴Longines 名匠系列 蓝宝石水晶玻璃/日历/防水 男士机械表
									L2.628.4.78.6</a>
							</dd>
							<dd class="Proprice">
								<span>特价:</span><span class="Price">￥13,090</span> 抢购
							</dd>
						</dl>
						<dl>
							<dt>
								<a href="#" title="荣汉斯027/4121.44"><img alt="荣汉斯027/4121.44"
									src="images/watch/7786_thumb_G_1316654839775.jpg" width="175"
									height="175">
								</a>
							</dt>
							<dd class="hotword">现代简约时尚风 轻盈清新</dd>
							<dd class="protit">
								<a href="#">荣汉斯Junghans 大师系列 高级复合玻璃表面/防水/计时 男士自动机械表
									027/4121.44</a>
							</dd>
							<dd class="Proprice">
								<span>特价:</span><span class="Price">￥16,044</span> 抢购
							</dd>
						</dl>
						<dl>
							<dt>
								<a href="#" title="浪琴L2.730.4.11.0"><img
									alt="浪琴L2.730.4.11.0"
									src="images/watch/7924_thumb_G_1319134484612.jpg" width="175"
									height="175">
								</a>
							</dt>
							<dd class="hotword">向堪称美学典范的历史致敬</dd>
							<dd class="protit">
								<a href="#">浪琴Longines 经典复古系列 蓝宝石水晶玻璃/防水/小秒盘 男士机械表
									L2.730.4.11.0</a>
							</dd>
							<dd class="Proprice">
								<span>特价:</span><span class="Price">￥38,364</span> 抢购
							</dd>
						</dl>
						<dl class="ldn">
							<dt>
								<a href="/Botta-g7896.html" title="博塔设计229011"><img
									alt="博塔设计229011"
									src="images/watch/7896_thumb_G_1318544389711.jpg" width="175"
									height="175">
								</a>
							</dt>
							<dd class="hotword">单针指示 高度功能导向</dd>
							<dd class="protit">
								<a href="#">博塔设计Botta UNO24系列 蓝宝石玻璃/单针时针/日历 男士石英表 229011</a>
							</dd>
							<dd class="Proprice">
								<span>特价:</span><span class="Price">￥3,979</span> 抢购
							</dd>
						</dl>
						<span class="clear"></span>
					</div>
					<div class="proList none" style="display: none;">
						<span class="clear"></span>
						<dl>
							<dt>
								<a href="#" title="朗坤861701"><img alt="朗坤861701"
									src="images/watch/7848_thumb_G_1318448209903.jpg" width="175"
									height="175">
								</a>
							</dt>
							<dd class="hotword">德系表魅力 成就朗坤经典</dd>
							<dd class="protit">
								<a href="#">朗坤LACO 飞行员系列 蓝宝石玻璃/日历/防水 男士机械表 861701</a>
							</dd>
							<dd class="Proprice">
								<span>特价:</span><span class="Price">￥5,414</span> 抢购
							</dd>
						</dl>
						<dl>
							<dt>
								<a href="#" title="梅花83909 S-063"><img alt="梅花83909 S-063"
									src="images/watch/6103_thumb_G_1314828398037.jpg" width="175"
									height="175">
								</a>
							</dt>
							<dd class="hotword">时尚商务 最新热销款</dd>
							<dd class="protit">
								<a href="#">梅花Titoni 空霸系列 蓝宝石水晶玻璃/防水/日历 男士自动机械表 83909 S-063</a>
							</dd>
							<dd class="Proprice">
								<span>特价:</span><span class="Price">￥7,030</span> 抢购
							</dd>
						</dl>
						<dl class="ldn">
							<dt>
								<a href="#" title="天梭T011.417.17.207.00"><img
									alt="天梭T011.417.17.207.00"
									src="images/watch/7935_thumb_G_1319233014507.jpg" width="175"
									height="175">
								</a>
							</dt>
							<dd class="hotword">动感活力表盘 精准可靠</dd>
							<dd class="protit">
								<a href="#">天梭Tissot 竞速系列 蓝宝石水晶玻璃/防水/日历 男士石英表
									T011.417.17.207.00</a>
							</dd>
							<dd class="Proprice">
								<span>特价:</span><span class="Price">￥3,555</span> 抢购
							</dd>
						</dl>
						<dl>
							<dt>
								<a href="#" title="荣汉斯027/7122.00"><img alt="荣汉斯027/7122.00"
									src="images/watch/7784_thumb_G_1316653228683.jpg" width="175"
									height="175">
								</a>
							</dt>
							<dd class="hotword">恒常美意 古朴纯净之美</dd>
							<dd class="protit">
								<a href="#">荣汉斯Junghans 大师系列 高级复合玻璃表面/防水/计时 男士自动机械表
									027/7122.00</a>
							</dd>
							<dd class="Proprice">
								<span>特价:</span><span class="Price">￥16,033</span> 抢购
							</dd>
						</dl>
						<dl>
							<dt>
								<a href="#" title="浪琴L2.628.5.11.7"><img
									alt="浪琴L2.628.5.11.7"
									src="images/watch/6652_thumb_G_1303869566303.jpg" width="175"
									height="175">
								</a>
							</dt>
							<dd class="hotword">浑圆雅致 源远流长的经典</dd>
							<dd class="protit">
								<a href="#">浪琴Longines 名匠系列 蓝宝石水晶玻璃/日历/防水 男士机械表
									L2.628.5.11.7</a>
							</dd>
							<dd class="Proprice">
								<span>特价:</span><span class="Price">￥21,528</span> 抢购
							</dd>
						</dl>
						<dl class="ldn">
							<dt>
								<a href="#" title="欧米茄3581.50.00"><img alt="欧米茄3581.50.00"
									src="images/watch/5767_thumb_G_1295481770624.jpg" width="175"
									height="175">
								</a>
							</dt>
							<dd class="hotword">富有名望 最受欢迎超霸表款之一</dd>
							<dd class="protit">
								<a href="/OMEGA-g5767.html">欧米茄Omega 超霸系列 蓝宝石水晶镜面/防水/日历
									男士机械表 3581.50.00</a>
							</dd>
							<dd class="Proprice">
								<span>特价:</span><span class="Price">￥55,195</span> 抢购
							</dd>
						</dl>
						<span class="clear"></span>
					</div>
					<div class="proList none" style="display: none;">
						<span class="clear"></span>
						<dl>
							<dt>
								<a href="/Longines-g3974.html" title="浪琴L2.631.4.70.6 "><img
									alt="浪琴L2.631.4.70.6 "
									src="images/watch/3974_thumb_G_1285610153560.jpg" width="175"
									height="175">
								</a>
							</dt>
							<dd class="hotword">腕上臻品 积极游走于世界前沿</dd>
							<dd class="protit">
								<a href="#">浪琴Longines 名匠系列 蓝宝石水晶玻璃/防水/日历 男士机械表
									L2.631.4.70.6 郭富城代言</a>
							</dd>
							<dd class="Proprice">
								<span>特价:</span><span class="Price">￥16,468</span> 抢购
							</dd>
						</dl>
						<dl>
							<dt>
								<a href="#" title="欧米茄2909.50.38"><img alt="欧米茄2909.50.38"
									src="images/watch/6676_thumb_G_1303946619405.jpg" width="175"
									height="175">
								</a>
							</dt>
							<dd class="hotword">炫彩夺目 600m防水专业潜水表</dd>
							<dd class="protit">
								<a href="#">欧米茄Omega 海马系列 抗磨损蓝宝石水晶镜面/日历/防水 男士机械表 2909.50.38
									菲尔普斯代言</a>
							</dd>
							<dd class="Proprice">
								<span>特价:</span><span class="Price">￥28,519</span> 抢购
							</dd>
						</dl>
						<dl class="ldn">
							<dt>
								<a href="#" title="欧米茄2209.50.00"><img alt="欧米茄2209.50.00"
									src="images/watch/4281_thumb_G_1287191953653.jpg" width="175"
									height="175">
								</a>
							</dt>
							<dd class="hotword">专业潜水功能 创新同轴技术</dd>
							<dd class="protit">
								<a href="#">欧米茄Omega 海马系列 蓝宝石水晶玻璃/防水/日历 男士机械表 2209.50.00
									乔治.克鲁尼代言 </a>
							</dd>
							<dd class="Proprice">
								<span>特价:</span><span class="Price">￥31,635</span> 抢购
							</dd>
						</dl>
						<dl>
							<dt>
								<a href="#" title="浪琴L2.673.4.78.6 "><img
									alt="浪琴L2.673.4.78.6 "
									src="images/watch/3952_thumb_G_1285622331611.jpg" width="175"
									height="175">
								</a>
							</dt>
							<dd class="hotword">月相腕表 史无前例的制表工艺</dd>
							<dd class="protit">
								<a href="#">浪琴Longines 名匠系列 蓝宝石水晶玻璃/防水/日历 男士机械表
									L2.673.4.78.6 郭富城代言</a>
							</dd>
							<dd class="Proprice">
								<span>特价:</span><span class="Price">￥23,368</span> 抢购
							</dd>
						</dl>
						<dl>
							<dt>
								<a href="#" title="天梭T17.1.586.32 "><img
									alt="天梭T17.1.586.32 "
									src="images/watch/366_thumb_G_1314053949461.jpg" width="175"
									height="175">
								</a>
							</dt>
							<dd class="hotword">欧文代言 时刻拥有时尚运动生活</dd>
							<dd class="protit">
								<a href="#">天梭Tissot PRC200系列 蓝宝石水晶玻璃/日历/防水 男士石英表
									T17.1.586.32 欧文代言</a>
							</dd>
							<dd class="Proprice">
								<span>特价:</span><span class="Price">￥3,156</span> 抢购
							</dd>
						</dl>
						<dl class="ldn">
							<dt>
								<a href="#" title="天梭T17.1.586.52"><img alt="天梭T17.1.586.52"
									src="images/watch/514e5451b76d31b4.jpg" width="175"
									height="175">
								</a>
							</dt>
							<dd class="hotword">百搭款 融合强大功能与优雅外观</dd>
							<dd class="protit">
								<a href="#">天梭Tissot PRC200系列 防磨损蓝宝石水晶玻璃/防水/日历 男士石英表
									T17.1.586.52 欧文代言</a>
							</dd>
							<dd class="Proprice">
								<span>特价:</span><span class="Price">￥2,979</span> 抢购
							</dd>
						</dl>
						<span class="clear"></span>
					</div>
				</div>
			</div>
			<div class="box290">
				<div id="slide1" class="active">
					<p id="slideTit1" class="titBar a-titBar">
						<strong>特卖专题</strong>
					</p>
					<div class="body">
						<ul class="imgList">
							<li class="img"><a rel="nofollow" href="#"><img
									alt="奢华人生表现非凡" src="images/ad/baobaog_BfpGpu63_5MeFu.jpg"
									width="278" height="100">
							</a>
							</li>
							<li class="img"><a rel="nofollow" href="#"><img
									alt="大海有约" src="images/ad/baobaog_BfpGpt2S_9hD5.jpg"
									width="278" height="100">
							</a>
							</li>
							<li class="img"><a rel="nofollow" href="#"><img
									alt="大海有约" src="images/ad/baobaog_BfpGoLkP_Duf0T.jpg"
									width="278" height="100">
							</a>
							</li>
						</ul>
						<ul class="msgList">

							<li><a rel="nofollow" href="#">精时力-着眼技术创新 悠久历史的优质钟...</a>
							</li>
							<li><a rel="nofollow" href="#">博塔设计-集功能和技术美学于一身的德国...</a>
							</li>
							<li><a rel="nofollow" href="#">朗坤-精湛工艺 源自德意志血统的军表品...</a>
							</li>
							<li style="margin-top:15px; *+margin-top:17px;"><a
								rel="nofollow" href="#">荣汉斯-淡雅古朴 引领高科技的德国销量...</a>
							</li>
							<li><a rel="nofollow" href="#">浪琴品牌馆-源自1832年，以优雅、精湛闻...</a>
							</li>
							<li><a rel="nofollow" href="#">天梭-非凡创意、卓越品质</a>
							</li>
						</ul>
					</div>

				</div>
				<div class="img290">
					<a href="#"><img alt="天梭-品牌馆" src="images/ad/13161557482.jpg"
						width="290" height="180">
					</a>
				</div>
				<div id="slide2" class="tuan">
					<p id="slideTit2" class="titBar t-titBar">
						<strong style="margin-right:25px;">团购</strong><span
							style="border-right:none; padding-left:80px; text-align:right;"
							class="hover" onMouseOver="setSlide(2,0)">本期</span>
						<!--<span onmouseover="setSlide(2,1)" class="" style="border-right-width: 0px;">下期预告</span>-->
					</p>
					<div style="display: block;">



						<script>
							jQuery(function() {
								clock_out('tuan_0_day', 'tuan_0_hour',
										'tuan_0_min', 'tuan_0_second');
							});
						</script>
						<ul>

							<li class="img"><a href="#" title="天梭T038.207.11.057.01"><img
									src="images/watch/5500_thumb_G_1297797056239.jpg"
									alt="天梭T038.207.11.057.01" width="100" height="100">
							</a>
							</li>
							<li class="intro"><span class="tuanTime">还剩: <font
									id="tuan_0_day">2</font>天<font id="tuan_0_hour">2</font>小时<font
									id="tuan_0_min">33</font>分<font id="tuan_0_second">58</font>秒</span> <span
								class="tit"><a href="#"
									title="天梭T038.207.11.057.01 唯意系列 女士机械表">天梭T038.207.11.057.01
										唯意系列 女士机械...</a>
							</span> <span class="Proprice">抢购价:<font class="Price">￥3,720</font>
							</span>
							</li>

						</ul>
						<script>
							jQuery(function() {
								clock_out('tuan_1_day', 'tuan_1_hour',
										'tuan_1_min', 'tuan_1_second');
							});
						</script>
						<ul>

							<li class="img"><a href="#" title="浪琴L2.628.4.78.6"><img
									src="images/watch/4072_thumb_G_1285379143197.jpg"
									alt="浪琴L2.628.4.78.6" width="100" height="100">
							</a>
							</li>
							<li class="intro"><span class="tuanTime">还剩: <font
									id="tuan_1_day">2</font>天<font id="tuan_1_hour">2</font>小时<font
									id="tuan_1_min">33</font>分<font id="tuan_1_second">58</font>秒</span> <span
								class="tit"><a href="#"
									title="浪琴Longines 名匠系列 蓝宝石水晶玻璃/日历/防水 男士机械表 L2.628.4.78.6">浪琴Longines
										名匠系列 蓝宝石水晶玻璃/...</a>
							</span> <span class="Proprice">抢购价:<font class="Price">￥13,090</font>
							</span>
							</li>

						</ul>
						<script>
							jQuery(function() {
								clock_out('tuan_2_day', 'tuan_2_hour',
										'tuan_2_min', 'tuan_2_second');
							});
						</script>
						<ul>

							<li class="img"><a href="#" title="劳力士116400"><img
									src="images/watch/569_thumb_G_1304704551075.jpg"
									alt="劳力士116400" width="100" height="100">
							</a>
							</li>
							<li class="intro"><span class="tuanTime">还剩: <font
									id="tuan_2_day">19</font>天<font id="tuan_2_hour">2</font>小时<font
									id="tuan_2_min">33</font>分<font id="tuan_2_second">58</font>秒</span> <span
								class="tit"><a href="/Rolex-g569.html"
									title="劳力士Rolex MILGAUSS 抗磨/蓝水晶/防水 男士机械表 116400（黑色）">劳力士Rolex
										MILGAUSS 抗磨/蓝水晶/防水 ...</a>
							</span> <span class="Proprice">抢购价:<font class="Price">￥51,869</font>
							</span>
							</li>

						</ul>
						<script>
							jQuery(function() {
								clock_out('tuan_3_day', 'tuan_3_hour',
										'tuan_3_min', 'tuan_3_second');
							});
						</script>
						<ul>

							<li class="img"><a href="#" title="天梭T41.1.423.33"><img
									src="images/watch/344_thumb_G_1316563675085.jpg"
									alt="天梭T41.1.423.33" width="100" height="100">
							</a>
							</li>
							<li class="intro"><span class="tuanTime">还剩: <font
									id="tuan_3_day">19</font>天<font id="tuan_3_hour">2</font>小时<font
									id="tuan_3_min">33</font>分<font id="tuan_3_second">58</font>秒</span> <span
								class="tit"><a href="/Tissot-g344.html"
									title="天梭Tissot 力洛克系列 蓝宝石/防水 男士机械表 T41.1.423.33">天梭Tissot
										力洛克系列 蓝宝石/防水 男...</a>
							</span> <span class="Proprice">抢购价:<font class="Price">￥3,359</font>
							</span>
							</li>

						</ul>

					</div>
					<div class="none" style="display: none;"></div>


				</div>
				<div class="img290 clear_height"></div>
			</div>
			<div class="clear"></div>
		</div>
		<!---第二通栏end---->
		<!---通栏广告start---->
		<!---通栏end---->
		<!---第三通栏start---->
		<div class="box980">
			<div class="box680">

				<div id="slide5" class="hotPro box650">
					<p id="slideTit5" class="titBar p-titBar">
						<strong>特价专区</strong><span class="hover"
							onMouseOver="setSlide(5,0)">时尚派对元素</span><span class=""
							onMouseOver="setSlide(5,1)">浪漫情侣对表</span><span class=""
							onMouseOver="setSlide(5,2)">白领丽人首选</span>
					</p>
					<div class="proList " style="display: block;">
						<span class="clear"></span>
						<dl>
							<dt>
								<a href="#" title="欧米茄123.10.24.60.05.001"><img
									alt="欧米茄123.10.24.60.05.001"
									src="images/watch/4559_thumb_G_1301526785989.jpg" width="175"
									height="175">
								</a>
							</dt>
							<dd class="hotword">高贵典雅 魅力顿生</dd>
							<dd class="protit">
								<a href="#">欧米茄Omega 星座系列 蓝宝石水晶玻璃/珍珠贝母/防水 女士石英表
									123.10.24.60.05.001</a>
							</dd>
							<dd class="Proprice">
								<span>特价:</span><span class="Price">￥19,380</span> 抢购
							</dd>
						</dl>
						<dl>
							<dt>
								<a href="#" title="劳力士179173-63133 J"><img
									alt="劳力士179173-63133 J"
									src="images/watch/7031_thumb_G_1306107075183.jpg" width="175"
									height="175">
								</a>
							</dt>
							<dd class="hotword">最佳性价比 奢华不再遥不可及</dd>
							<dd class="protit">
								<a href="#">劳力士ROLEX 蚝士恒动 钻石刻度/10颗钻石/18k黄金 女士自动机械表
									179173-63133 J</a>
							</dd>
							<dd class="Proprice">
								<span>特价:</span><span class="Price">￥78,185</span> 抢购
							</dd>
						</dl>
						<dl class="ldn">
							<dt>
								<a href="#" title="天梭T41.5.113.13"><img alt="天梭T41.5.113.13"
									src="images/watch/7933_thumb_G_1319226183151.jpg" width="175"
									height="175">
								</a>
							</dt>
							<dd class="hotword">隽永典雅 150周年诞生纪念款</dd>
							<dd class="protit">
								<a href="#">天梭Tissot 力洛克系列 蓝宝石水晶玻璃/防水/日历 女士机械表 T41.5.113.13</a>
							</dd>
							<dd class="Proprice">
								<span>特价:</span><span class="Price">￥4,185</span> 抢购
							</dd>
						</dl>
						<dl>
							<dt>
								<a href="#" title="天梭T008.217.11.116.00"><img
									alt="天梭T008.217.11.116.00"
									src="images/watch/7937_thumb_G_1319234842450.jpg" width="175"
									height="175">
								</a>
							</dt>
							<dd class="hotword">精准可靠 专业防水</dd>
							<dd class="protit">
								<a href="#">天梭Tissot PRC100系列 蓝宝石水晶玻璃/防水/日历 女士石英表
									T008.217.11.116.00 </a>
							</dd>
							<dd class="Proprice">
								<span>特价:</span><span class="Price">￥5,760</span> 抢购
							</dd>
						</dl>
						<dl>
							<dt>
								<a href="#" title="精时力V83331230041"><img
									alt="精时力V83331230041"
									src="images/watch/7881_thumb_G_1318465431809.jpg" width="175"
									height="175">
								</a>
							</dt>
							<dd class="hotword">色彩戏法 细节心思撞色设计</dd>
							<dd class="protit">
								<a href="#">精时力Kienzle COLOR系列 24小时时区/双时区/防水 女士石英表
									V83331230041</a>
							</dd>
							<dd class="Proprice">
								<span>特价:</span><span class="Price">￥3,314</span> 抢购
							</dd>
						</dl>
						<dl class="ldn">
							<dt>
								<a href="#" title="浪琴L2.128.4.78.3 "><img
									alt="浪琴L2.128.4.78.3 "
									src="images/watch/3964_thumb_G_1285540836857.jpg" width="175"
									height="175">
								</a>
							</dt>
							<dd class="hotword">限时8.5折 直降2070元</dd>
							<dd class="protit">
								<a href="#">浪琴L2.128.4.78.3 名匠系列 女士机械表</a>
							</dd>
							<dd class="Proprice">
								<span>特价:</span><span class="Price">￥11,730</span> 抢购
							</dd>
						</dl>
						<span class="clear"></span>
					</div>
					<div class="proList none" style="display: none;">
						<span class="clear"></span>
						<dl>
							<dt>
								<a href="#" title="天梭T41.1.483.53/T41.1.183.53"><img
									alt="天梭T41.1.483.53/T41.1.183.53"
									src="images/watch/5729_thumb_G_1304641805280.jpg" width="175"
									height="175">
								</a>
							</dt>
							<dd class="hotword">150周年纪念款 情意默默显现</dd>
							<dd class="protit">
								<a href="#">天梭Tissot 力洛克系列 蓝宝石水晶玻璃/日历/防水 情侣机械表
									T41.1.483.53/T41.1.183.53</a>
							</dd>
							<dd class="Proprice">
								<span>特价:</span><span class="Price">￥7,836</span> 抢购
							</dd>
						</dl>
						<dl>
							<dt>
								<a href="#" title="浪琴L5.655.4.73.6/L5.155.4.73.6"><img
									alt="浪琴L5.655.4.73.6/L5.155.4.73.6"
									src="images/watch/4039_thumb_G_1285633804556.jpg" width="175"
									height="175">
								</a>
							</dt>
							<dd class="hotword">雅致独特 适合追求品位的情侣</dd>
							<dd class="protit">
								<a href="#">浪琴Longines 黛绰维纳系列 蓝宝石水晶玻璃/小三针/防水 情侣对表 石英表
									L5.655.4.73.6/L5.155.4.73.6</a>
							</dd>
							<dd class="Proprice">
								<span>特价:</span><span class="Price">￥16,376</span> 抢购
							</dd>
						</dl>
						<dl class="ldn">
							<dt>
								<a href="#" title="浪琴L2.642.0.73.6/L2.142.0.73.6"><img
									alt="浪琴L2.642.0.73.6/L2.142.0.73.6"
									src="images/watch/4075_thumb_G_1285524680022.jpg" width="175"
									height="175">
								</a>
							</dt>
							<dd class="hotword">值得珍藏一生的爱恋 典藏系列</dd>
							<dd class="protit">
								<a href="#">浪琴Longines 典藏系列 蓝宝石水晶玻璃/日历/小三针 情侣对表 机械表
									L2.642.0.73.6/L2.142.0.73.6</a>
							</dd>
							<dd class="Proprice">
								<span>特价:</span><span class="Price">￥135,847</span> 抢购
							</dd>
						</dl>
						<dl>
							<dt>
								<a href="#" title="浪琴L2.694.8.73.3/L2.194.8.73.3 "><img
									alt="浪琴L2.694.8.73.3/L2.194.8.73.3 "
									src="images/watch/4082_thumb_G_1285534097176.jpg" width="175"
									height="175">
								</a>
							</dt>
							<dd class="hotword">典雅酒桶形 复古怀旧 象征永恒爱情</dd>
							<dd class="protit">
								<a href="#">浪琴Longines 贝雅系列 蓝宝石水晶玻璃/小三针/防水 情侣对表 石英表
									L2.694.8.73.3/L2.194.8.73.3</a>
							</dd>
							<dd class="Proprice">
								<span>特价:</span><span class="Price">￥60,628</span> 抢购
							</dd>
						</dl>
						<dl>
							<dt>
								<a href="#" title="天梭T031.410.11.053.00/T031.210.11.053.00"><img
									alt="天梭T031.410.11.053.00/T031.210.11.053.00"
									src="images/watch/5752_thumb_G_1297977827367.jpg" width="175"
									height="175">
								</a>
							</dt>
							<dd class="hotword">罗马刻度 镂空指针 恒久时尚款</dd>
							<dd class="protit">
								<a href="#">天梭Tissot 宝环系列 蓝宝石水晶玻璃/日历/防水 情侣石英表
									T031.410.11.053.00/T031.210.11.053.00</a>
							</dd>
							<dd class="Proprice">
								<span>特价:</span><span class="Price">￥4,860</span> 抢购
							</dd>
						</dl>
						<dl class="ldn">
							<dt>
								<a href="/Tissot-g5743.html" title="天梭T95.1.483.51/T95.1.183.51"><img
									alt="天梭T95.1.483.51/T95.1.183.51"
									src="images/watch/5743_thumb_G_1299019909988.jpg" width="175"
									height="175">
								</a>
							</dt>
							<dd class="hotword">黄金尺寸比例 绝配恋人</dd>
							<dd class="protit">
								<a href="/Tissot-g5743.html">天梭Tissot 卡森系列 蓝宝石水晶玻璃/日历/黑色表盘
									情侣机械表 T95.1.483.51/T95.1.183.51</a>
							</dd>
							<dd class="Proprice">
								<span>特价:</span><span class="Price">￥5,580</span> 抢购
							</dd>
						</dl>
						<span class="clear"></span>
					</div>
					<div class="proList none" style="display: none;">
						<span class="clear"></span>
						<dl>
							<dt>
								<a href="/Tissot-g353.html" title="天梭T41.1.183.53 "><img
									alt="天梭T41.1.183.53 " src="images/watch/c6f94f9b3f22faad.jpg"
									width="175" height="175">
								</a>
							</dt>
							<dd class="hotword">独特故事 书写系列传奇</dd>
							<dd class="protit">
								<a href="#">天梭Tissot 力洛克系列 蓝宝石水晶玻璃/日历/防水 女士机械表 T41.1.183.53</a>
							</dd>
							<dd class="Proprice">
								<span>特价:</span><span class="Price">￥3,912</span> 抢购
							</dd>
						</dl>
						<dl>
							<dt>
								<a href="#" title="浪琴L5.158.0.92.6"><img
									alt="浪琴L5.158.0.92.6"
									src="images/watch/4423_thumb_G_1287078547182.jpg" width="175"
									height="175">
								</a>
							</dt>
							<dd class="hotword">顶级韦塞尔顿钻石 华丽尊贵</dd>
							<dd class="protit">
								<a href="#">浪琴Longines 黛绰维纳系列 浅蓝色珍珠母贝/三折式安全表扣/ 防水 女士石英表
									L5.158.0.92.6</a>
							</dd>
							<dd class="Proprice">
								<span>特价:</span><span class="Price">￥19,228</span> 抢购
							</dd>
						</dl>
						<dl class="ldn">
							<dt>
								<a href="#" title="梅花23938SY-DB-099 "><img
									alt="梅花23938SY-DB-099 "
									src="images/watch/444_thumb_G_1281981274330.jpg" width="175"
									height="175">
								</a>
							</dt>
							<dd class="hotword">明媚灿烂 又不失温柔典雅</dd>
							<dd class="protit">
								<a href="#">梅花Titoni 星空系列 蓝宝石水晶玻璃/日历/防水 女士机械表 23938SY-DB-099</a>
							</dd>
							<dd class="Proprice">
								<span>特价:</span><span class="Price">￥9,595</span> 抢购
							</dd>
						</dl>
						<dl>
							<dt>
								<a href="#" title="天梭T02.1.285.54"><img alt="天梭T02.1.285.54"
									src="images/watch/312_thumb_G_1293416243690.jpg" width="175"
									height="175">
								</a>
							</dt>
							<dd class="hotword">优雅婉约 吸引众多时尚女性</dd>
							<dd class="protit">
								<a href="#">天梭Tissot 海浪系列 蓝宝石水晶玻璃/折叠扣/防水 女士石英表 T02.1.285.54</a>
							</dd>
							<dd class="Proprice">
								<span>特价:</span><span class="Price">￥3,060</span> 抢购
							</dd>
						</dl>
						<dl>
							<dt>
								<a href="#" title="浪琴L4.241.0.80.6"><img
									alt="浪琴L4.241.0.80.6"
									src="images/watch/3634_thumb_G_1283712252699.jpg" width="175"
									height="175">
								</a>
							</dt>
							<dd class="hotword">婉约闪耀 白领丽人心仪之选</dd>
							<dd class="protit">
								<a href="#">浪琴Longines 嘉岚系列 蓝宝石水晶玻璃/蝴蝶扣/防水 女士石英表
									L4.241.0.80.6</a>
							</dd>
							<dd class="Proprice">
								<span>特价:</span><span class="Price">￥27,416</span> 抢购
							</dd>
						</dl>
						<dl class="ldn">
							<dt>
								<a href="#" title="欧米茄123.25.24.60.55.008"><img
									alt="欧米茄123.25.24.60.55.008"
									src="images/watch/4776_thumb_G_1289005852143.jpg" width="175"
									height="175">
								</a>
							</dt>
							<dd class="hotword">华美动人 令人一见倾心的魅力</dd>
							<dd class="protit">
								<a href="#">欧米茄Omega 星座系列 圆弧形抗磨损蓝宝石/镶钻白色珍珠母贝/防水 女士石英表
									123.25.24.60.55.008</a>
							</dd>
							<dd class="Proprice">
								<span>特价:</span><span class="Price">￥50,540</span> 抢购
							</dd>
						</dl>
						<span class="clear"></span>
					</div>
				</div>
			</div>

			<div class="box290">
				<div class="img290 ">
					<a href="#"><img alt="天梭T035.617.11.051.00"
						src="images/ad/20111025155037shouyeguangg.jpg">
					</a>
				</div>
				<div class="img290 clear_height IE6">
					<a href="#"><img alt="梅花Titoni品牌馆"
						src="images/ad/13171039012.jpg">
					</a>
				</div>
			</div>
			<div class="clear"></div>
		</div>
	</div>
	<!---第三通栏end---->
	<!---评价及报道start---->
	<!---评价及报道end---->
	<!---通底start---->
	<div class="buttom">
		<!---帮助中心start---->
		<div class="clear"></div>
		<!---帮助中心end---->
		<!---友情链接start---->
		<!---友情链接end---->
		<!---帮助中心start---->
		<div class="clear"></div>
	</div>
	<!---帮助中心end---->
	<!---通底end---->

</body>
</html>
