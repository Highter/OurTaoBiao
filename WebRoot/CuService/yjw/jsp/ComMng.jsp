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
		<div id="ComShow">
						<form action="commodityadd">
			<table border="3">
			<tr>
			
			<td>商品名字:</td>
			<td><input name="commodityName" type = "text"/></td>
			
			<td>产地:</td>
			<td><input name="proPlace" type ="text"/></td>
			
			<td>品牌名字:</td>
			<td><input name="brandName"  type= "text"/></td>

			<td>品牌系列名字:</td>
			<td><input name="brandSeriesName" type = "text"/></td>
			</tr>
			<tr>
			<td>型号:</td>
			<td><input name="model" type ="text"/></td>
			
			
			<td>款式:</td>
			<td><input name="style" type ="text"/></td>

			
			<td>尺寸:</td>
			<td><input name="size" type ="text"/></td>
			

			<td>厚度:</td>
			<td><input name="thickness" type ="text"/></td>
			</tr>
			
			<tr>
			<td>机芯:</td>
			<td><input name="chip" type ="text"/></td>
			
			<td>机芯类别:</td>
			<td><input name="chipCategory" type ="text"/></td>
			
		   <td>表壳:</td>
			<td><input name="watchCase" type ="text"/></td>
			
			<td>表盘:</td>
			<td><input name="dial" type ="text"/></td>
			
			</tr>
			
			
			<tr>
			<td>表面:</td>
			<td><input name="cover" type ="text"/></td>
			
		    <td>表带:</td>
			<td><input name="watchband" type ="text"/></td>
			
			
			<td>防水:</td>
			<td><input name="waterproof" type ="text"/></td>
			
			<td>功能:</td>
			<td><input name="function" type ="text"/></td>
			
			
			</tr>

			
			<tr>
				<td>原价:</td>
			<td><input name="originalCost" type ="text"/></td>
			
			<td>特价:</td>
			<td><input name="specialCost" type ="text"/></td>
			
			
	
			<td>备注:</td>
			<td><input name="remarks" type ="text"/></td>
			
			<td>包装:</td>
			<td><input name="pack" type ="text"/></td>
			</tr>
			
			<tr>
			
			
			
				
			<td><input type = "submit" value="确认增加商品"></td>
			
			</tr>
			
			</table>
			</form>
			
			<h3 >${lyj_addcomerror}</h3>
			<br>
			<table border="10">
			<tr>
			<td width="230" align="center">商品id</td>
			<td width="230" align="center">商品名字</td>		
			<td width="230" align="center">功能</td>
			<td width="230" align="center">人气</td>
			<td width="230" align="center">销售量</td>
			<td width="230" align="center">备注</td>
			<td width="230" align="center">操作</td>
			</tr>
		
			<s:iterator value="#session.lyj_commodityPageMessage">
				<tr align="center">
					<td  width="230" align="center"><s:property value="commodityId" /></td>
					<td  width="230" align="center"><s:property value="commodityName" /></td>
					<td  width="230" align="center"><s:property value="function" /></td>
					<td  width="230" align="center"><s:property value="hunmanNum" /></td>
					<td  width="230" align="center"><s:property value="saleNum" /></td>
					<td  width="230" align="center"><s:property value="remarks"/></td>
					<td  width="230" align="center"><strong><a href="commoditypreUpdate?id=<s:property value="commodityId"/>">编辑与查看</a><br />
					<a href="commoditydelete?id=<s:property value="commodityId"/>">删除</a></strong></td>
				</tr>
			</s:iterator>
		</table>
		<br>
		<center><a href="commodityfristPage">首页</a><a href="commodityprePage">上一页</a> <a href="commoditynextPage">下一页</a><a href="commodityfinalPage">末页</a></center>
		</div>
	</div>
</body>
</html>
