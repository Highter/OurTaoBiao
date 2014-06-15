<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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

<title>CustomService.jsp</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<link rel="stylesheet" type="text/css"
	href="<%=path%>/CuService/yjw/css/BrandMng.css">
<script type="text/javascript" src="<%=path%>/js/jquery.js"></script>
<script type="text/javascript" src="<%=path%>/CuService/yjw/js/BrandMng.js"></script>
<script type="text/javascript">
	
</script>
</head>
<body>

	<div id="bg">
		<img alt="" src="<%=path%>/pic/bg.jpg" width="100%" height="100%">
	</div>
	
	<div id="Head">
		<div id="Head_title">
			<a>Welcome to your home</a>
		</div> 
	</div>
	
	<div id="Left_layout">
		<ul class="Menu_Left">
			<li id="BrandMng"><a href="brandinit">品牌管理</a></li>
			<li id="BrandSMng"><a href="seriesinit">品牌系列管理</a></li>
			<li id="ComMng"><a href="commodityinit">商品管理</a></li>
			<li id="UserMng"><a href="getAll0User">用户管理</a></li>
			<li id="OrderMng"><a href="getAllOrOrderM">订单管理</a></li>
			<li id="MsgMng"><a href="messageinit">留言管理</a></li>
			<s:if test="#session.user.role==1"></s:if>
			<s:else>
				<li id="CsMng"><a href="getAllUCs">客服管理</a></li>
				<li id="PowerMng"><a href="<%=path%>/CuService/yjw/jsp/PowerMng.jsp">权限模块管理</a></li>
			</s:else>
		</ul>
	</div>
	
	<div id="Right_layout">
	<div id="BrandShow">
			<form action="boringadd">
			<table border="3">
			<tr>
			<td>品牌系列名称:</td>
			<td><input name="brandSeriesName"  type= "text"/></td>

			<td>品牌系列描述:</td>
			<td><input name="brandSeriesIntro" type = "text"/></td>
			
			<td>品牌id:</td>
			<td><input name="brandId" type ="text"/></td>
			
			<td><input type = "submit" value="增加品牌系列"></td>
			</tr>
			</table>
			</form>
			
			<h3 >${lyj_addMessage}</h3>
			<br>
			<table border="10">
			<tr>
			<td width="230" align="center">品牌系列id</td>
			<td width="230" align="center">品牌系列名称</td>
			<td width="230" align="center">品牌系列描述</td>
			<td width="230" align="center">品牌id</td>
			<td width="230" align="center">操作</td>
			</tr>
		
			<s:iterator value="#session.lyj_bsMessage">
				<tr align="center">
					<td  width="230" align="center"><s:property value="brandSeriesId" /></td>
					<td  width="230" align="center"><s:property value="brandSeriesName" /></td>
					<td  width="230" align="center"><s:property value="brandSeriesIntro" /></td>
					<td  width="230" align="center"><s:property value="brand.brandId" /></td>
					<td  width="230" align="center"><strong><a href="boringpreUpdate?id=<s:property value="brandSeriesId"/>">编辑</a><br />
					<a href="boringdelete?id=<s:property value="brandSeriesId"/>">删除</a></strong></td>
				</tr>
			</s:iterator>
		</table>
		<br>
		<center><a href="fristPage">首页</a><a href="prePage">上一页</a> <a href="nextPage">下一页</a><a href="finalPage">末页</a></center>
		</div>
	</div>
</body>
</html>
