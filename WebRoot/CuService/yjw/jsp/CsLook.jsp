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
				这是客服:<s:property value="#session.cus.userName" />,的个人信息
			</caption>
			<tr><td>用户id:</td><td><s:property value="#session.cus.userId"/></td></tr>
			<tr><td>用户密码:</td><td><s:property value="#session.cus.passWord"/></td></tr>
			<tr><td>MSN:</td><td><s:property value="#session.cus.MSN"/></td></tr>
			<tr><td>QQ:</td><td><s:property value="#session.cus.qq"/></td></tr>
			<tr><td>办公室电话:</td><td><s:property value="#session.cus.officePhone"/></td></tr>
			<tr><td>家庭电话:</td><td><s:property value="#session.cus.familyPhone"/></td></tr>
			<tr><td>手机:</td><td><s:property value="#session.cus.cellPhone"/></td></tr>
			<tr><td>邮箱:</td><td><s:property value="#session.cus.email"/></td></tr>
			<tr><td>密码提示:</td><td><s:property value="#session.cus.passTip"/></td></tr>
			<tr><td>密码提示答案:</td><td><s:property value="#session.cus.passAnswer"/></td></tr>
			<tr><td>上一次登录时间:</td><td><s:property value="#session.cus.lastLoginTime"/></td></tr>
			<tr><td>帐号余额:</td><td><s:property value="#session.cus.balance"/></td></tr>
			<tr><td>累计消费:</td><td><s:property value="#session.cus.consume"/></td></tr>
			<tr><td>会员级别:</td><td><s:property value="#session.cus.level"/></td></tr>
			<tr><td>角色（0-用户，1-客服）:</td><td><s:property value="#session.cus.role"/></td></tr>
		</table>
	</div>
</body>
</html>
