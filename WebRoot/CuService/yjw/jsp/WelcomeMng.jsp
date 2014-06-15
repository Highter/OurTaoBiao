<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
			<s:if test="#session.user.role==1">亲爱的客服:<s:property value="#session.user.userName"/>,欢迎上线</s:if>
			<s:else>亲爱的管理员:<s:property value="#session.user.userName"/>,欢迎上线</s:else>
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
		<div id="CsShow">
			<s:if test="#session.user.role==1">这是后台客服的首页</s:if>
			<s:else>这是超级管理员首页</s:else>
		</div>
	</div>
</body>
</html>
