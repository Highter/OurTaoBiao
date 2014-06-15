<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s"  uri="/struts-tags"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
<meta name="Generator" content="ECSHOP v2.7.2" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="Keywords" content="" />
<meta name="Description" content="" />

<title>购物流程_TISSOT天梭手表-天梭表官方网站价格,图片,报价,正品-风尚天梭表业</title>

<link rel="shortcut icon" href="favicon.ico" />
<link rel="icon" href="animated_favicon.gif" type="image/gif" />
<link href="css/cart.css" rel="stylesheet" type="text/css" />
<link href="css/style.css" rel="stylesheet" type="text/css" />
<link href="css/slides.css" rel="stylesheet" type="text/css" />
</head>
<body>
<s:debug></s:debug>
<div id="container">
<div id="top">
  <div class="header">
   <div class="logo"><a href="index.html" title="淘宝网全球顶级名表商城"><img src="images/logo.jpg" alt="淘宝网全球顶级名表商城" /></a></div>
    <div class="topnav">
      <div class="nav1"><span ><a href="login_register.html">[ 登录 | 注册 ]</a>&nbsp;<a class="nav-cart" href="#">我的购物车（<font color="#AB4419">0</font>）</a>&nbsp;&nbsp;<a href="user/orderList.html">我的订单</a> </span>
	  <div class="orderBox hab" id="h-warp1" onmouseover="showFq(1,1)" onmouseout="hiddenFq(1,1)">
	  <p><a href="user/index.html" rel="nofollow">我的淘表</a></p>
		<ul id="h-con1" style="display:none;">
		<li><a href="" rel="nofollow">我的订单</a></li>
		<li><a href="" rel="nofollow">我的咨询</a></li>
		<li><a href="" rel="nofollow">我的收藏</a></li>
		<li><a href="" rel="nofollow">收货地址</a></li>
		<li><a href="" rel="nofollow">修改密码</a></li>
		</ul>
	  </div>
	  <div class="helpBox hab" id="h-warp2" onmouseover="showFq(2,2)" onmouseout="hiddenFq(2,2)">
		<p><a href="" rel="nofollow">帮助中心</a></p>
		<ul id="h-con2" style="display:none;">
		<li><a href="" rel="nofollow">帮助中心</a></li>
		<li><a href="" rel="nofollow">留言咨询</a></li>
		<li><a href="" rel="nofollow">售后服务</a></li>
        <li><a href="" rel="nofollow">联系客服</a></li>
		</ul>
	  </div></div>
      <div class="nav2">
        <div class="Search"><form action="/list" method=get><input name="keyword" type="text" id="keyword" value="输入商品关键字，比如"天梭"..." onmouseover="if(this.value=='输入商品关键字，比如...'){this.value='';this.focus();}"  onmouseout="if(this.value=='')this.value='输入商品关键字，比如"天梭"...'" /><input name="btsearch" type="submit" id="btsearch" value="搜索" />
        </form>
        </div>
        <div class="Service">订购热线(免长途费)：<font> 13751801572</font></div>
      </div>
    </div>
  </div>
  <div id="nav">
    <div class="mainNav" id="mainNav">
      <div class="mN-item mN-nobg" id="mN-current">
        <div class="nobg mN-h1"><a rel="nofollow" title="淘表奢侈品商城" href="index.html">首页</a></div>
      </div>
      <div class="mN-item">
        <div class="mN-h1 mantit"><a title="男表" href="">男士手表</a></div>
      </div>
      <div class="mN-item">
        <div class="mN-h1 womentit"><a title="女表" href="">女士手表</a></div>
      </div>
      <div class="mN-item">
        <div class="mN-h1 lovetit"><a title="情侣表" href="">情侣对表</a></div>
      </div>
	  <div class="mN-item">
        <div class="mN-h1 h1bg allsbtit"><a title="所有手表" href="">所有手表</a></div>
      </div>
      <div class="mN-item">
        <div class="mN-h1 h1bg allpptit"><a rel="nofollow" title="瑞士手表牌" href="">所有品牌</a></div>
      </div>
      <div class="mN-item">
        <div class="mN-h1 h1bg story"><a rel="nofollow"  href="">品牌故事</a></div>
      </div>
      <div class="mN-item">
        <div class="mN-h1 h1bg knowledge"><a rel="nofollow"  href="">手表常识</a></div>
      </div>
      <div class="mN-item mN-nobg mN_right">
		<div class="mN-h1 zhongqiu"><a title="名表夜晏" href="">名表抢购</a></div>
      </div>
    </div>
    <!--主导航end-->
  </div>
 
</div>
<div class="blank10"></div><div class="block">
<div class="ur_here">
当前位置: <a href=".">首页</a> <code>&gt;</code> 购物流程</div></div>

<div class="block">

<div class="CarTitle"><span class="fwhite f14b">商品列表</span></div>
 <form id="formCart" name="formCart" method="post" action="flow.php">
   <table width="100%" align="center" border="0" cellpadding="5" cellspacing="1" bgcolor="#e3e3e3" id="cartTable">
   <tr>
    <th bgcolor="#ffffff">商品名称</th>
        <th bgcolor="#ffffff">属性</th>
            <th bgcolor="#ffffff">市场价</th>
        <th bgcolor="#ffffff">本店价</th>
    <th bgcolor="#ffffff">购买数量</th>
    <th bgcolor="#ffffff">小计</th>
    <th bgcolor="#ffffff">操作</th>
   </tr>
      <tr>
    <td bgcolor="#ffffff" align="center">
                <a href="goods.php?id=28" target="_blank"><img src="images/201106/thumb_img/7102_thumb_G_1306967964788.jpg" border="0" title="tissot天梭T97.1.183.31 宝环系列 女士机械表" /></a><br />
      <a href="goods.php?id=28" target="_blank">tissot天梭T97.1.183.31 宝环系列 女士机械表</a>
                         </td>
        <td bgcolor="#ffffff"></td>
            <td align="right" bgcolor="#ffffff">￥432.00元</td>
        <td align="right" bgcolor="#ffffff" class="price">￥360.00元</td>
    <td align="right" bgcolor="#ffffff">
          <input type="text" name="goods_number[33]" id="goods_number_33" value="1" size="4" class="InputBorder"  onkeydown="showdiv(this)"/>
         </td>
    <td align="right" bgcolor="#ffffff" class="price">￥360.00元</td>
    <td align="center" bgcolor="#ffffff">
     <acronym class="delete"></acronym><a href="javascript:if (confirm('您确实要把该商品移出购物车吗？')) location.href='flow.php?step=drop_goods&amp;id=33'; " ><u class="b">删除</u></a>&nbsp;&nbsp;
          </td>
   </tr>
      <tr>
  </table>
  <table width="100%" align="center" border="0" cellpadding="5" cellspacing="0"  id="bntTable">
   <tr>
    <td class="fred f14b">
        购物金额小计 ￥360.00元，比市场价 ￥432.00元 节省了 ￥72.00元 (17%)    </td>
    <td align="right">
     <input type="button" value="清空购物车" class="bnt_number6" onclick="location.href='flow.php" />
     <input name="submit" type="submit" class="bnt_number6" value="更新购物车" />
    </td>
   </tr>
  </table>
  <input type="hidden" name="step" value="update_cart" />
 </form>
 <table width="100%" align="center" border="0" cellpadding="5" cellspacing="0">
  <tr>
   <td style="text-align:left"><a href="index.html"><img src="images/continue.gif" /></a></td>
   <td align="right"><a href="user/settlement_center.html?step=checkout"><img src="images/checkout.gif" /></a></td>
  </tr>
 </table>
</div>
</div>
</div>
</body>
</html>

