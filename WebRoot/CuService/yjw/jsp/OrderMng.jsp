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
	jQuery(function($) {
		$(".noPower").click(function(){
			alert("权限不足");
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
		<div id="OrderShow">
			<table border="1">
				<caption>订单列表</caption>
				<tr align="center">
					<td>订单号</td><td>用户Id</td><td>下单时间</td><td>下单总金额</td><td>是否付款</td><td>订单状态</td><td>是否确认收货</td><td>操作</td>
				</tr>
				<!-- 循环输出客服信息 -->
				<s:iterator value="#session.orderMs">
					<tr>
						<td><s:property value="OrderId"/></td>
						<td><s:property value="user.userId"/></td>
						<td><s:property value="payTime"/></td>
						<td><s:property value="sumMoney"/></td>
						<td>
							<s:set name="payIf" value="%{payIf}"/>
							<s:if test="#payIf==true">已付款</s:if>
							<s:else>未付</s:else>
						</td>
						<td>
							<s:set name="sumMoney" value="%{sumMoney}"/>
							<s:set name="deliverIf" value="%{deliverIf}"/>
							<s:if test="#deliverIf==true">
								<s:if test="#sumMoney<0">交易取消</s:if>
								<s:else>已发货</s:else>
							</s:if>
							<s:else>未发货</s:else>
						</td>
						<td>
							<s:set name="makeSureIf" value="%{makeSureIf}"/>
							<s:if test="#makeSureIf==true">已确认</s:if>
							<s:else>未确认</s:else>
						</td>
						<td><a href="makeDeliverOrOrderM?OrderId=<s:property value='OrderId'/>">确认发货</a>&nbsp;
						
						<s:if test="#session.ppp.lookOD=='1'.toString()">
							<a href="getAllDOrOrderM?OrderId=<s:property value='OrderId'/>" target="view_window">查看明细</a>&nbsp;
						</s:if>
						<s:else>
							<a class="noPower">查看明细</a>&nbsp;
						</s:else>
						
						<s:if test="#session.ppp.OhutDown=='1'.toString" >
							<a href="consumeOrOrderM?OrderId=<s:property value='OrderId'/>">取消订单</a>
						</s:if>
						<s:else>
							<a class="noPower">取消订单</a>
						</s:else>
						</td>
					</tr>
				</s:iterator>
			</table>
		</div>
	</div>
</body>
</html>
