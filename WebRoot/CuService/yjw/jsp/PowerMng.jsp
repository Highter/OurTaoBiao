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
	href="<%=path%>/CuService/yjw/css/PowerMng.css">
<script type="text/javascript" src="<%=path%>/js/jquery.js"></script>
<script type="text/javascript" src="<%=path%>/CuService/yjw/js/PowerMng.js"></script>
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

	<div id="bg">
		<img alt="" src="<%=path%>/pic/bg.jpg" width="100%" height="100%">
	</div>
	
	<div id="Head">
		<div id="Head_title">
			<s:set name="role" value="%{role}"/>
			<s:if test="role==1">亲爱的客服:<s:property value="#session.user.userName"/>,欢迎上线</s:if>
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
		<div id="PowerShow">
			<form action="setAllValuesPower" method="get">
			<table width="100%" border="1">
				<caption>权限修改,请慎用</caption>
			
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
	</div>
</body>
</html>
