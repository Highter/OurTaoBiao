<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
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

<title>用户中心-淘表网</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<meta name="Keywords" content="男士手表" />
<meta name="Description"
	content="世界十大名表价格VIP折扣促销中, 正品男士手表选购来淘表商城,支持全球联保.男士手表品牌排榜热卖手表推荐:江诗丹顿男表,劳力士男表,浪琴男表" />
<link href="css/style.css" rel="stylesheet" type="text/css" />
<link href="css/slides-chanel.css" rel="stylesheet" type="text/css" />
<link href="css/user.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/share.js"></script>
<script type="text/javascript" src="js/jquery.js"></script>
</head>

<body>
	<div id="container">
		<!---顶部start---->
		<div id="top">
			<div class="header">
				<div class="logo">
					<a href="index.html" title="聚风尚全球顶级名表商城"><img
						src="images/logo.jpg" alt="聚风尚全球顶级名表商城" />
					</a>
				</div>
				<div class="topnav">
					<div class="nav1">
						<span><s:property value="#session.user.userName" />&nbsp;<a
							class="nav-cart" href="">我的购物车（<font color="#AB4419">0</font>）</a>&nbsp;&nbsp;<a
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
									value="输入商品关键字，比如..."
									onmouseover="if(this.value=='输入商品关键字，比如...'){this.value='';this.focus();}"
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
		<!--------顶部end ----->
		<!--用户中心begin-->
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
							<li><a href="Customer/hyl/UserCenter/userindex.jsp"
								class="curs"> 欢迎页</a>
							</li>
							<li><a href="Customer/hyl/UserCenter/usrinfo.jsp"> 用户信息</a>
							</li>
							<li><a
								href="myorder?userId=<s:property value='#session.user.userId'/>">
									我的订单</a>
							</li>
							<li><a
								href="address?userId=<s:property value='#session.user.userId'/>">
									收货地址</a>
							</li>
							<li><a
								href="mycollect?userId=<s:property value='#session.user.userId'/>">
									我的收藏</a>
							</li>
							<li><a href="#"> 我的留言</a>
							</li>
							<li><a href="#"> 资金管理</a>
							</li>
						</ul>
					</div>
				</div>
			</div>
			<div class="EarRight fr">
				<div class="us_contentBox">
					<div class="CarTitle">
						<span class="fwhite f14b">个人资料</span>
					</div>
					<form name="formEdit"
						action="userupdate?userId=<s:property value="#session.user.userId"/>"
						method="post" onsubmit="userEdit()">
						<table width="100%" border="0" cellpadding="5" cellspacing="1"
							bgcolor="#dddddd" id="userEdit">

							<tr>
								<td width="28%" align="right" bgcolor="#FFFFFF">电子邮件地址：</td>
								<td width="72%" align="left" bgcolor="#FFFFFF"><input
									name="user.email" type="text"
									value="<s:property value='#session.user.email'/>" size="25"
									class="inputBg" /><span style="color:#FF0000"> *</span>
								</td>
							</tr>
							<tr>
								<td width="28%" align="right" bgcolor="#FFFFFF"
									id="extend_field1i">MSN：</td>
								<td width="72%" align="left" bgcolor="#FFFFFF"><input
									name="user.MSN" type="text" class="inputBg"
									value="<s:property value='#session.user.MSN'/>" /><span
									style="color:#FF0000"> *</span></td>
							</tr>
							<tr>
								<td width="28%" align="right" bgcolor="#FFFFFF"
									id="extend_field2i">QQ：</td>
								<td width="72%" align="left" bgcolor="#FFFFFF"><input
									name="user.qq" type="text" class="inputBg"
									value="<s:property value='#session.user.qq'/>" /><span
									style="color:#FF0000"> *</span></td>
							</tr>
							<tr>
								<td width="28%" align="right" bgcolor="#FFFFFF"
									id="extend_field3i">办公电话：</td>
								<td width="72%" align="left" bgcolor="#FFFFFF"><input
									name="user.officePhone" type="text" class="inputBg"
									value="<s:property value='#session.user.officePhone'/>" /><span
									style="color:#FF0000"> *</span></td>
							</tr>
							<tr>
								<td width="28%" align="right" bgcolor="#FFFFFF"
									id="extend_field4i">家庭电话：</td>
								<td width="72%" align="left" bgcolor="#FFFFFF"><input
									name="user.familyPhone" type="text" class="inputBg"
									value="<s:property value='#session.user.familyPhone'/>" /><span
									style="color:#FF0000"> *</span></td>
							</tr>
							<tr>
								<td width="28%" align="right" bgcolor="#FFFFFF"
									id="extend_field5i">手机：</td>
								<td width="72%" align="left" bgcolor="#FFFFFF"><input
									name="user.cellPhone" type="text" class="inputBg"
									value="<s:property value='#session.user.cellPhone'/>" /><span
									style="color:#FF0000"> *</span></td>
							</tr>
							<tr>
								<td width="28%" align="right" bgcolor="#FFFFFF">密码提示问题：</td>
								<td width="72%" align="left" bgcolor="#FFFFFF"><select
									name='user.passTip'>
										<option value='0'>请选择密码提示问题</option>
										<option value="friend_birthday">我最好朋友的生日？</option>
										<option value="old_address" selected>我儿时居住地的地址？</option>
										<option value="motto">我的座右铭是？</option>
										<option value="favorite_movie">我最喜爱的电影？</option>
										<option value="favorite_song">我最喜爱的歌曲？</option>
										<option value="favorite_food">我最喜爱的食物？</option>
										<option value="interest">我最大的爱好？</option>
										<option value="favorite_novel">我最喜欢的小说？</option>
										<option value="favorite_equipe">我最喜欢的运动队？</option>
								</select></td>
							</tr>
							<tr>
								<td width="28%" align="right" bgcolor="#FFFFFF"
									id="passwd_quesetion">密码问题答案：</td>
								<td width="72%" align="left" bgcolor="#FFFFFF"><input
									name="user.passAnswer" type="text" size="25" class="inputBg"
									maxlengt='20' value="惠来" /><span style="color:#FF0000">
										*</span></td>
							</tr>
							<tr>
								<td colspan="2" align="center" bgcolor="#FFFFFF"><input
									name="act" type="hidden" value="act_edit_profile" /> <input
									name="submit" type="submit" value="确认修改" class="bnt_number4"
									style="border:none;" /></td>
							</tr>
						</table>
					</form>
					<form name="formPassword" action="user.php" method="post"
						onsubmit="editPassword()">
						<table width="100%" border="0" cellpadding="5" cellspacing="1"
							bgcolor="#dddddd" id="passwordEdit">
							<tr>
								<td width="28%" align="right" bgcolor="#FFFFFF">原密码：</td>
								<td width="76%" align="left" bgcolor="#FFFFFF"><input
									name="old_password" type="password" size="25"
									class="InputBorder" />
								</td>
							</tr>
							<tr>
								<td width="28%" align="right" bgcolor="#FFFFFF">新密码：</td>
								<td align="left" bgcolor="#FFFFFF"><input
									name="new_password" type="password" size="25"
									class="InputBorder" />
								</td>
							</tr>
							<tr>
								<td width="28%" align="right" bgcolor="#FFFFFF">确认密码：</td>
								<td align="left" bgcolor="#FFFFFF"><input
									name="comfirm_password" type="password" size="25"
									class="InputBorder" />
								</td>
							</tr>
							<tr>
								<td colspan="2" align="center" bgcolor="#FFFFFF"><input
									name="act" type="hidden" value="act_edit_password" /> <input
									name="submit" type="submit" class="bnt_number4" value="确认修改" />
								</td>
							</tr>
						</table>
					</form>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
