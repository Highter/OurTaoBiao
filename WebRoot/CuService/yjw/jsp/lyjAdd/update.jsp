<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'update.jsp' starting page</title>
    
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
  <br><br><br><br><br><br><br><br><br><br>
    <center>
    				<div>
					<form  action = "brandupdate" method="post">
					<table border="10">
					<caption>品牌信息修改</caption>
					<tr><td>品牌ID</td><td><input name="brandId" type="text" value="${lyj_update.brandId}" readonly="readonly" /></td></tr>
					<tr><td>品牌名称</td><td><input name="brandName" type="text" value="${lyj_update.brandName}"/></td></tr>
					<tr><td>品牌故事</td><td><textarea name="brandStory">${lyj_update.brandStory}</textarea></td></tr>
					<tr><td>品牌商标</td><td><input name="brandLogo" type="text" value="${lyj_update.brandLogo}"/></td></tr>
					<tr><td></td><td><input type = "submit" value = "提交修改"></td></tr>
					</table>
					</form>
				</div>
			</center>
  </body>
</html>
