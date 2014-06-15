<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
	
<script type="text/javascript" src="<%=basePath%>/js/jquery.js">
</script>
<script type="text/javascript">
	jQuery(function($) {
		$(".ttt").click(function(){
			//alert($(this).attr("checked"));//true
			if($(this).attr("checked")==true){
				//alert($(this).attr("value"));//1
				$(this).attr("value","1");//赋予权限
				//alert($(this).attr("value"));
			}else{
				$(this).attr("value","0");//取消权限
				//alert($(this).attr("value"));
			}
		});
	});
</script>

</head>

<body>
	<div>
		<form action="setValuesPower" method="get">
			<table width="100%" border="1">
				<caption>给与ID为【<s:property value="userId"/>】的客服增加权限</caption>
			
			<tr>
				<td><a>订单管理:</a></td>
				<td>
				<s:if test="#session.power.looOder=='1'.toString()">
					<input type="checkbox" name="looOder" value="1" class="ttt" checked="checked">查看订单
				</s:if>
				<s:else>
					<input type="checkbox" name="looOder" value="0" class="ttt" />查看订单
				</s:else>
				&nbsp;
				
				<s:if test="#session.power.lookOD=='1'.toString()">
					<input type="checkbox" name="lookOD" value="1" class="ttt" checked="checked"/>查看订单明细
				</s:if>
				<s:else>
					<input type="checkbox" name="lookOD" value="0" class="ttt"  />查看订单明细
				</s:else>
				&nbsp;
				
				<s:if test="#session.power.OhutDown=='1'.toString()">
					<input type="checkbox" name="OhutDown" value="1" class="ttt" checked="checked"/>关闭订单
				</s:if>
				<s:else>
					<input type="checkbox" name="OhutDown" value="0" class="ttt" />关闭订单
				</s:else>
				</td>
			</tr>
			<tr>
				<td><input type="submit" value="提交"/></td>
			</tr>
			</table>
		</form>
	</div>
</body>
</html>
