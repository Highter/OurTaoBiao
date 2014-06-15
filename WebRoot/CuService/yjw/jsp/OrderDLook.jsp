<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>My JSP 'CsLook.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

</head>

<body>
	<div>
		<table border="1">
			<caption>
				这是订单ID为:<s:property value="OrderId" />的明细信息
			</caption>
			<tr align="center">
					<td>明细ID</td><td>商品名称</td><td>商品数量</td><td>商品Id</td>
				</tr>
				<!-- 循环输出订单明细信息 -->
				<s:iterator value="#session.OrDetails">
					<tr>
						<td><s:property value="OrderDetailId"/></td>
						<td><s:property value="commodityName"/></td>
						<td><s:property value="commodityNum"/></td>
						<td><s:property value="commodity.commodityId"/></td>
					</tr>
				</s:iterator>
		</table>
	</div>
</body>
</html>
