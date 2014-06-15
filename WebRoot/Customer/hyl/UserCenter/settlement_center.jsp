<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
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

<title>购物流程_TISSOT天梭手表-天梭表官方网站价格,图片,报价,正品-风尚天梭表业</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">

<meta name="Generator" content="ECSHOP v2.7.2" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="Keywords" content="" />
<meta name="Description" content="" />
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<link rel="shortcut icon" href="favicon.ico" />
<link rel="icon" href="animated_favicon.gif" type="image/gif" />
<link href="css/style.css" rel="stylesheet" type="text/css" />
<link href="css/user.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/common.js"></script>
<script type="text/javascript" src="js/shopping_flow.js"></script>
<script type="text/javascript" src="themes/SportsShoes/js/action.js"></script>
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
								<a href="" rel="nofollow">我的淘表</a>
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
									value="输入商品关键字，比如"
									天梭"..." onmouseover="if(this.value=='输入商品关键字，比如...'){this.value='';this.focus();}"
									onmouseout="if(this.value=='')this.value='输入商品关键字，比如...'" /><input
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
							<a rel="nofollow" title="淘表奢侈品商城" href="../index.html">首页</a>
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
				<!--主导航end-->
			</div>
		</div>
		<div class="blank10"></div>
		<div class="block">
			<div class="ur_here">
				当前位置: <a href=".">首页</a>
				<code>&gt;</code>
				购物流程
			</div>
		</div>

		<div class="block">
			<form action="flow.php" method="post" name="theForm" id="theForm"
				onsubmit="checkOrderForm(this)">
				<script type="text/javascript">
					var flow_no_payment = "您必须选定一个支付方式。";
					var flow_no_shipping = "您必须选定一个配送方式。";
				</script>
				<div class="CarTitle">
					<span class="fwhite f14b">商品列表</span><a href="flow.php"
						class="modify"><font class="f1">修改</font>
					</a>
				</div>
				<table width="100%" align="center" border="0" cellpadding="5"
					cellspacing="1" bgcolor="#e3e3e3" class="blank">
					<tr>
						<th bgcolor="#ffffff">商品名称</th>
						<th bgcolor="#ffffff">属性</th>
						<th bgcolor="#ffffff">市场价</th>
						<th bgcolor="#ffffff">本店价</th>
						<th bgcolor="#ffffff">购买数量</th>
						<th bgcolor="#ffffff">小计</th>
					</tr>
					<tr>
						<td bgcolor="#ffffff"><a href="goods.php?id=57"
							target="_blank">T028.210.11.057.00女士月亮女神石英表</a></td>
						<td bgcolor="#ffffff"></td>
						<td align="right" bgcolor="#ffffff">￥534.00元</td>
						<td bgcolor="#ffffff" align="right" class="price">￥445.00元</td>
						<td bgcolor="#ffffff" align="right">1</td>
						<td bgcolor="#ffffff" align="right" class="price">￥445.00元</td>
					</tr>
					<s:iterator value="#session.OrderDetail">
					<tr>
						
						<td bgcolor="#ffffff"><a href="#"><s:property value="commodityName"/></a></td>
						<td bgcolor="#ffffff"></td>
						<td align="right" bgcolor="#ffffff">￥<s:property value="commodity.originalCost"/>元</td>
						<td bgcolor="#ffffff" align="right" class="price">￥<s:property value="price"/>元</td>
						<td bgcolor="#ffffff" align="right"><s:property value="commodityNum"/></td>
						<td bgcolor="#ffffff" align="right" class="price">￥<s:property value="commodityNum*price"/>元</td>
					</tr>
					</s:iterator>
					
					<tr>
						<td bgcolor="#ffffff" colspan="7" class="fred f14b">购物金额小计
							￥445.00元，比市场价 ￥534.00元 节省了 ￥89.00元 (17%)</td>
					</tr>
				</table>


				<div class="CarTitle">
					<span class="fwhite f14b">收货人信息</span><a
						href="flow.php?step=consignee" class="modify"><font class="f1">修改</font>
					</a>
				</div>
				<table width="100%" align="center" border="0" cellpadding="5"
					cellspacing="1" bgcolor="#e3e3e3" class="blank">
					<tr>
						<td bgcolor="#ffffff">收货人姓名:</td>
						<td bgcolor="#ffffff">stone</td>
						<td bgcolor="#ffffff">电子邮件地址:</td>
						<td bgcolor="#ffffff">285388571@qq.com</td>
					</tr>
					<tr>
						<td bgcolor="#ffffff">详细地址:</td>
						<td bgcolor="#ffffff">岗顶</td>
						<td bgcolor="#ffffff">邮政编码:</td>
						<td bgcolor="#ffffff">613012</td>
					</tr>
					<tr>
						<td bgcolor="#ffffff">电话:</td>
						<td bgcolor="#ffffff">020-11111111</td>
						<td bgcolor="#ffffff">手机:</td>
						<td bgcolor="#ffffff">13631363290</td>
					</tr>
					<tr>
						<td bgcolor="#ffffff">标志建筑:</td>
						<td bgcolor="#ffffff"></td>
						<td bgcolor="#ffffff">最佳送货时间:</td>
						<td bgcolor="#ffffff"></td>
					</tr>
				</table>


				<div class="CarTitle">
					<span class="fwhite f14b">配送方式</span>
				</div>
				<table width="100%" align="center" border="0" cellpadding="5"
					cellspacing="1" bgcolor="#e3e3e3" class="blank" id="shippingTable">
					<tr>
						<th bgcolor="#ffffff" width="5%">&nbsp;</th>
						<th bgcolor="#ffffff" width="25%">名称</th>
						<th bgcolor="#ffffff">订购描述</th>
						<th bgcolor="#ffffff" width="15%">费用</th>
						<th bgcolor="#ffffff" width="15%">免费额度</th>
						<th bgcolor="#ffffff" width="15%">保价费用</th>
					</tr>
					<tr>
						<td bgcolor="#ffffff" valign="top"><input name="shipping"
							type="radio" value="3" checked="true" supportCod="0" insure="0"
							onclick="selectShipping(this)" /></td>
						<td bgcolor="#ffffff" valign="top"><strong>运费到付</strong>
						</td>
						<td bgcolor="#ffffff" valign="top">所购商品到达即付运费</td>
						<td bgcolor="#ffffff" align="right" valign="top" class="fred">￥0.00元</td>
						<td bgcolor="#ffffff" align="right" valign="top" class="fred">￥0.00元</td>
						<td bgcolor="#ffffff" align="right" valign="top">不支持保价</td>
					</tr>
					<tr>
						<td colspan="6" bgcolor="#ffffff" align="right"><label
							for="ECS_NEEDINSURE"> <input name="need_insure"
								id="ECS_NEEDINSURE" type="checkbox"
								onclick="selectInsure(this.checked)" value="1" disabled="true" />
								配送是否需要保价 </label>
						</td>
					</tr>
				</table>

				<div class="CarTitle">
					<span class="fwhite f14b">支付方式</span>
				</div>
				<table width="100%" align="center" border="0" cellpadding="5"
					cellspacing="1" bgcolor="#e3e3e3" class="blank" id="paymentTable">
					<tr>
						<th width="5%" bgcolor="#ffffff">&nbsp;</th>

						<th width="20%" bgcolor="#ffffff">名称</th>
						<th bgcolor="#ffffff">订购描述</th>
						<th bgcolor="#ffffff" width="15%">手续费</th>
					</tr>

					<tr>
						<td valign="top" bgcolor="#ffffff"><input type="radio"
							name="payment" value="1" checked isCod="0"
							onclick="selectPayment(this)" />
						</td>
						<td valign="top" bgcolor="#ffffff"><strong>货到付款</strong>
						</td>
						<td valign="top" bgcolor="#ffffff">开通城市：××× 货到付款区域：×××</td>
						<td align="right" bgcolor="#ffffff" valign="top" class="fred">￥0.00元</td>
					</tr>
				</table>



				<div class="CarTitle">
					<span class="fwhite f14b">其它信息</span>
				</div>
				<table width="100%" align="center" border="0" cellpadding="5"
					cellspacing="1" bgcolor="#e3e3e3" class="blank">

					<tr>
						<td valign="top" bgcolor="#ffffff"><strong>订单附言:</strong>
						</td>
						<td bgcolor="#ffffff"><textarea name="postscript" cols="80"
								rows="3" id="postscript" class="InputBorder"></textarea>
						</td>
					</tr>
					<tr>
						<td bgcolor="#ffffff"><strong>缺货处理:</strong>
						</td>
						<td bgcolor="#ffffff"><label> <input name="how_oos"
								type="radio" value="0" checked onclick="changeOOS(this)" />
								等待所有商品备齐后再发</label> <label> <input name="how_oos" type="radio"
								value="1" onclick="changeOOS(this)" /> 取消订单</label> <label> <input
								name="how_oos" type="radio" value="2" onclick="changeOOS(this)" />
								与店主协商</label></td>
					</tr>
				</table>

				<div class="CarTitle">
					<span class="fwhite f14b">费用总计</span>
				</div>
				<div id="ECS_ORDERTOTAL">
					<table width="100%" align="center" border="0" cellpadding="5"
						cellspacing="1" bgcolor="#e3e3e3" class="floatTable">
						<tr>
							<td align="right" bgcolor="#ffffff">该订单完成后，您将获得 <font
								class="fred f14b">445</font> 积分 ，以及价值 <font class="fred f14b">￥0.00元</font>的红包。

							</td>
						</tr>
						<tr>
							<td align="right" bgcolor="#ffffff">商品总价: <font
								class="fred f14b">￥445.00元</font></td>
						</tr>
						<tr>
							<td align="right" bgcolor="#ffffff">应付款金额: <font
								class="fred f14b">￥445.00元</font></td>
						</tr>
					</table>
				</div>
				<div align="center" style="margin:12px auto;">
					<input type="image" src="../images/bnt_subOrder.gif" /> <input
						type="hidden" name="step" value="done" />
				</div>
			</form>
		</div>

	</div>

</body>
<script type="text/javascript">
	var process_request = "正在处理您的请求...";
	var username_empty = "- 用户名不能为空。";
	var username_shorter = "- 用户名长度不能少于 3 个字符。";
	var username_invalid = "- 用户名只能是由字母数字以及下划线组成。";
	var password_empty = "- 登录密码不能为空。";
	var password_shorter = "- 登录密码不能少于 6 个字符。";
	var confirm_password_invalid = "- 两次输入密码不一致";
	var email_empty = "- Email 为空";
	var email_invalid = "- Email 不是合法的地址";
	var agreement = "- 您没有接受协议";
	var msn_invalid = "- msn地址不是一个有效的邮件地址";
	var qq_invalid = "- QQ号码不是一个有效的号码";
	var home_phone_invalid = "- 家庭电话不是一个有效号码";
	var office_phone_invalid = "- 办公电话不是一个有效号码";
	var mobile_phone_invalid = "- 手机号码不是一个有效号码";
	var msg_un_blank = "* 用户名不能为空";
	var msg_un_length = "* 用户名最长不得超过7个汉字";
	var msg_un_format = "* 用户名含有非法字符";
	var msg_un_registered = "* 用户名已经存在,请重新输入";
	var msg_can_rg = "* 可以注册";
	var msg_email_blank = "* 邮件地址不能为空";
	var msg_email_registered = "* 邮箱已存在,请重新输入";
	var msg_email_format = "* 邮件地址不合法";
	var msg_blank = "不能为空";
	var no_select_question = "- 您没有完成密码提示问题的操作";
	var passwd_balnk = "- 密码中不能包含空格";
	var username_exist = "用户名 %s 已经存在";
	var compare_no_goods = "您没有选定任何需要比较的商品或者比较的商品数少于 2 个。";
	var btn_buy = "购买";
	var is_cancel = "取消";
	var select_spe = "请选择商品属性";
</script>
</html>
