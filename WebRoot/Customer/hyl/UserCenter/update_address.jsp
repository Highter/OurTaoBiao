<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
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

<title>My JSP 'address.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

<title>用户中心_TISSOT天梭手表-天梭表官方网站价格,图片,报价,正品-风尚天梭表业</title>

<link rel="shortcut icon" href="favicon.ico" />
<link rel="icon" href="animated_favicon.gif" type="image/gif" />
<link href="css/style.css" rel="stylesheet" type="text/css" />
<link href="css/user.css" rel="stylesheet" type="text/css" />
<link href="css/slides-chanel.css" rel="stylesheet" type="text/css" />

<script type="text/javascript" src="js/jq.js"></script>
<script type="text/javascript" src="js/share.js"></script>
<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript" src="js/transport.js"></script>
<script type="text/javascript" src="js/common.js"></script>
<script type="text/javascript" src="js/user.js"></script>
<script type="text/javascript" src="themes/SportsShoes/js/action.js"></script>
<script type="text/javascript">
	function addAdress(){
		var num = $("#provice").val();
		var msg = $("#provice").find("option:selected").text()+":"+
					$("#city").find("option:selected").text()+":"+
					$("#section").find("option:selected").text()+":"+
					$("#receiverName").val()+":"+
					$("#delliverTime").val()+":"+
					$("#address").val()+":"+
					$("#email").val()+":"+
					$("#telephone").val()+":"+
					$("#cellphone").val();
		$.ajax({
			type:"post",
			url:"addAddress.action",
			data:"msg="+msg,
			dataType:"json",
			success:function(json){
					alert(json.address);
				}
		});
	}
</script>
</head>

<body>
	
	<div id="container">
		<div id="top">
			<div class="header">
				<div class="logo">
					<a href="index.html" title="淘表网全球顶级名表商城"><img
						src="images/logo.jpg" alt="淘表网全球顶级名表商城" />
					</a>
				</div>

				<div class="topnav">
					<div class="nav1">
						<span><s:property value="#session.user.userName"/>&nbsp;<a class="nav-cart"
							href="">我的购物车（<font color="#AB4419">0</font>）</a>&nbsp;&nbsp;<a
							href="">我的订单</a> </span>
						<div class="orderBox hab" id="h-warp1" onmouseover="showFq(1,1)"
							onmouseout="hiddenFq(1,1)">
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
						<div class="helpBox hab" id="h-warp2" onmouseover="showFq(2,2)"
							onmouseout="hiddenFq(2,2)">
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
							<form action="/list" method="get">
								<input name="keyword" type="text" id="keyword"
									value="输入商品关键字，比如..."
									onmouseover="if(this.value=='输入商品关键字，比如...'){this.value='';this.focus();}"
									onmouseout="if(this.value=='')this.value='输入商品关键字，比如...'" /><input
									name="btsearch" type="submit" id="btsearch" value="搜索" /><a
									href="" style="margin-left:2px">高级搜索</a>
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
		<div class="blank10"></div>
		<div class="block">
			<div class="ur_here">
				当前位置: <a href=".">首页</a>
				<code>&gt;</code>
				用户中心
			</div>
		</div>

		<div class="block clearfix">
			<div class="EarLeft fl">
				<div class="attrbox">
					<h2></h2>
					<div class="attrcontent">
						<ul class="userMenu">
							<li><a href="Customer/hyl/UserCenter/userindex.jsp" class="curs"> 欢迎页</a></li>
	          <li><a href="Customer/hyl/UserCenter/usrinfo.jsp"> 用户信息</a></li>
	          <li><a href="myorder?userId=<s:property value='#session.user.userId'/>"> 我的订单</a></li>
	          <li><a href="address?userId=<s:property value='#session.user.userId'/>"> 收货地址</a></li>
	          <li><a href="mycollect?userId=<s:property value='#session.user.userId'/>"> 我的收藏</a></li>
					          <li><a href="#"> 我的留言</a></li>
					          <li><a href="#"> 资金管理</a></li>
						</ul>
					</div>
				</div>
			</div>
			<div class="EarRight fr">
				<div class="us_contentBox">
					<div class="CarTitle">
						<span class="fwhite f14b">收货人信息</span>
					</div>

					<script type="text/javascript" src="js/region.js"></script>
					<script type="text/javascript" src="js/shopping_flow.js"></script>
					<script type="text/javascript">
						region.isAdmin = false;
						var consignee_not_null = "收货人姓名不能为空！";
						var country_not_null = "请您选择收货人所在国家！";
						var province_not_null = "请您选择收货人所在省份！";
						var city_not_null = "请您选择收货人所在城市！";
						var district_not_null = "请您选择收货人所在区域！";
						var invalid_email = "您输入的邮件地址不是一个合法的邮件地址。";
						var address_not_null = "收货人的详细地址不能为空！";
						var tele_not_null = "电话不能为空！";
						var shipping_not_null = "请您选择配送方式！";
						var payment_not_null = "请您选择支付方式！";
						var goodsattr_style = "1";
						var tele_invaild = "电话号码不有效的号码";
						var zip_not_num = "邮政编码只能填写数字";
						var mobile_invaild = "手机号码不是合法号码";

						onload = function() {
							if (!document.all) {
								document.forms['theForm'].reset();
							}
						}
					</script>
					<s:debug></s:debug>
					<!----> <form action="addressupdate2?addressid=<s:property value='#session.myaddress.addressId'/>&userId=<s:property value='#session.user.userId'/>" method="post" id="theForm"
						onsubmit="checkConsignee(this)"> 
						<table width="100%" border="0" cellpadding="5" cellspacing="1"
							bgcolor="#dddddd" class="address" id ="atable">
							<tr>
								<td align="right" bgcolor="#ffffff">配送区域：</td>
								<td colspan="3" align="left" bgcolor="#ffffff"><select
									name="country" id="country"
									onchange="region.changed(this, 1, 'selProvinces_0')"
									class="InputBorder">
										<option value="0">请选择国家</option>
										<option value="1" selected>中国</option>
								</select> <select name="address.provice" id="provice"
									onchange="region.changed(this, 2, 'selCities_0')"
									class="InputBorder">
										<option value="<s:property value='#session.myaddress.city'/>"><s:property value="#session.myaddress.provice"/></option>
										<option value="北京">北京</option>
										<option value="安徽">安徽</option>
										<option value="安徽">安徽</option>
										<option value="甘肃">甘肃</option>
										<option value="广西">广西</option>
										<option value="贵州">贵州</option>
										<option value="海南">海南</option>
										<option value="河北">河北</option>
										<option value="河南">河南</option>
										<option value="黑龙江">黑龙江</option>
										<option value="湖北">湖北</option>
										<option value="湖南">湖南</option>
										<option value="吉林">吉林</option>
										<option value="江苏">江苏</option>
										<option value="江西">江西</option>
										<option value="辽宁">辽宁</option>
										<option value="内蒙古">内蒙古</option>
										<option value="宁夏">宁夏</option>
										<option value="青海">青海</option>
										<option value="山东">山东</option>
										<option value="山西">山西</option>

										<option value="陕西">陕西</option>
										<option value="上海">上海</option>
										<option value="四川">四川</option>
										<option value="天津">天津</option>
										<option value="西藏">西藏</option>
										<option value="新疆">新疆</option>
										<option value="云南">云南</option>
										<option value="浙江">浙江</option>
										<option value="重庆">重庆</option>
										<option value="香港">香港</option>
										<option value="澳门">澳门</option>
										<option value="台湾">台湾</option>
								</select> <select name="address.city" id="city"
									onchange="region.changed(this, 3, 'selDistricts_0')"
									class="InputBorder">
										<option value="<s:property value='#session.myaddress.city'/>"><s:property value="#session.myaddress.city"/></option>
										<option value="广州" >广州</option>
										<option value="深圳">深圳</option>
										<option value="潮州">潮州</option>
										<option value="东莞">东莞</option>
										<option value="佛山">佛山</option>
										<option value="河源">河源</option>
										<option value="惠州">惠州</option>
										<option value="江门">江门</option>
										<option value="揭阳">揭阳</option>
										<option value="茂名">茂名</option>
										<option value="梅州">梅州</option>
										<option value="清远">清远</option>
										<option value="汕头">汕头</option>
										<option value="汕尾">汕尾</option>
										<option value="韶关">韶关</option>
										<option value="阳江">阳江</option>
										<option value="云浮">云浮</option>
										<option value="湛江">湛江</option>
										<option value="肇庆">肇庆</option>
										<option value="中山">中山</option>
										<option value="珠海">珠海</option>
								</select> 
								<select name="address.section" id="section" class="InputBorder">
									<option value="<s:property value='#session.myaddress.section'/>"><s:property value="#session.myaddress.section"/></option>
							              <option value="从化市" >从化市</option>
							              <option value="天河区" >天河区</option>
							              <option value="东山区" >东山区</option>
							              <option value="白云区" >白云区</option>
							              <option value="海珠区" >海珠区</option>
							              <option value="荔湾区" >荔湾区</option>
							              <option value="越秀区" >越秀区</option>
							              <option value="黄埔区" >黄埔区</option>
							              <option value="番禺区" >番禺区</option>
							              <option value="花都区" >花都区</option>
							              <option value="增城区" >增城区</option>
							              <option value="从化区" >从化区</option>
							              <option value="市郊" >市郊</option>
								</select> (必填)</td>
							</tr>
							<tr>
								<td align="right" bgcolor="#ffffff">收货人姓名：</td>
								<td align="left" bgcolor="#ffffff"><input name="address.receiverName"
									type="text" class="InputBorder" id="receiverName" value="<s:property value='#session.myaddress.receiverName'/>" />
									(必填)</td>
								<td align="right" bgcolor="#ffffff">最佳送货时间：</td>
								<td align="left" bgcolor="#ffffff"><input name="address.delliverTime"
									type="text" class="InputBorder" id="delliverTime" value="<s:property value='#session.myaddress.delliverTime'/>" />
								</td>
							</tr>
							<tr>
								<td align="right" bgcolor="#ffffff">详细地址：</td>
								<td align="left" bgcolor="#ffffff"><input name="address.address"
									type="text" class="InputBorder" id="address" value="<s:property value='#session.myaddress.address'/>" />
									(必填)</td>
								<td align="right" bgcolor="#ffffff">邮政编码：</td>
								<td align="left" bgcolor="#ffffff"><input name="address.email"
									type="text" class="InputBorder" id="email" value="<s:property value='#session.myaddress.email'/>" />
								</td>
							</tr>
							<tr>
								<td align="right" bgcolor="#ffffff">电话：</td>
								<td align="left" bgcolor="#ffffff"><input name="address.telephone"
									type="text" class="InputBorder" id="telephone" value="<s:property value='#session.myaddress.telephone'/>" />
									(必填)</td>
								<td align="right" bgcolor="#ffffff">手机：</td>
								<td align="left" bgcolor="#ffffff"><input name="address.cellphone"
									type="text" class="InputBorder" id="cellphone"
									value="<s:property value='#session.myaddress.cellphone'/>" />
								</td>
							</tr>
							<tr>
								<td align="right" bgcolor="#ffffff">&nbsp;</td>
								<td colspan="3" align="center" bgcolor="#ffffff"><input
									type="submit" name="submit" class="bnt_number4" value="修改地址"  />
									<input type="hidden" name="act" value="act_edit_address" /> <input
									name="address_id" type="hidden" value="6" /></td>
							</tr>
						</table>
					<!-- --></form> 


					<table width="100%" border="0" cellpadding="0" cellspacing="0"
						bgcolor="0" class="address" style="margin-top:50px">
						<tr align="center">
							<td class="item"><strong>收货要姓名</strong>
							</td>
							<td class="item"><strong>详细地址</strong>
							</td>
							<td class="item"><strong>邮政编码</strong>
							</td>
							<td class="item"><strong>电话</strong>
							</td>
							<td class="item"><strong>手机</strong>
							</td>
							<td class="item"><strong>操作</strong>
							</td>
							<!-- <td class="item"><strong>操作</strong>
							</td> -->
						</tr>
						<s:iterator value="#session.addresslist">
							<tr align="center">
								<td class="item"><s:property value="receiverName"/></td>
								<td class="item"><s:property value="city"/><s:property value="address"/></td>
								<td class="item"><s:property value="email"/></td>
								<td class="item"><s:property value="telephone"/></td>
								<td class="item"><s:property value="cellphone"/></td>
								<td class="item"><strong><a href="/OurTaoBiao2/myaddress?addressid=<s:property value='addressId'/>">编辑</a><br />
								<a href="/OurTaoBiao2/addressDelete?addressid=<s:property value='addressId'/>">删除</a>
							</strong>
							</td>
							</tr>
						</s:iterator>
					</table>
				</div>


			</div>

		</div>
	</div>
</body>
<script type="text/javascript">
	var msg_title_empty = "留言标题为空";
	var msg_content_empty = "留言内容为空";
	var msg_title_limit = "留言标题不能超过200个字";
</script>
</html>
