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
			<li id="BrandMng"><a href="<%=path%>/CuService/yjw/jsp/BrandMng.jsp">品牌管理</a></li>
			<li id="BrandSMng"><a href="<%=path%>/CuService/yjw/jsp/BrandSMng.jsp">品牌系列管理</a></li>
			<li id="ComMng"><a href="<%=path%>/CuService/yjw/jsp/ComMng.jsp">商品管理</a></li>
			<li id="UserMng"><a href="<%=path%>/CuService/yjw/jsp/UserMng.jsp">用户管理</a></li>
			<li id="OrderMng"><a href="<%=path%>/CuService/yjw/jsp/OrderMng.jsp">订单管理</a></li>
			<li id="MsgMng"><a href="<%=path%>/CuService/yjw/jsp/MsgMng.jsp">留言管理</a></li>
			<li id="CsMng"><a href="<%=path%>/CuService/yjw/jsp/CsMng.jsp">客服管理</a></li>
			<li id="PowerMng"><a href="<%=path%>/CuService/yjw/jsp/PowerMng.jsp">权限模块管理</a></li>
		</ul>
	</div>
	
	<div id="Right_layout">
		<div id="ComShow">
						<form action="boringadd">
			<table border="3">
			<tr>
			
			<td>商品名字:</td>
			<td><input name="brandSeriesIntro" type = "text"/></td>
			
			<td>产地:</td>
			<td><input name="brandId" type ="text"/></td>
			
			<td>品牌名字:</td>
			<td><input name="brandSeriesName"  type= "text"/></td>

			<td>品牌系列名字:</td>
			<td><input name="brandSeriesIntro" type = "text"/></td>
			</tr>
			<tr>
			<td>型号:</td>
			<td><input name="brandId" type ="text"/></td>
			
			
			<td>款式:</td>
			<td><input name="brandId" type ="text"/></td>

			
			<td>尺寸:</td>
			<td><input name="brandId" type ="text"/></td>
			

			<td>厚度:</td>
			<td><input name="brandId" type ="text"/></td>
			</tr>
			
			<tr>
			<td>机芯:</td>
			<td><input name="brandId" type ="text"/></td>
			
			<td>机芯类别:</td>
			<td><input name="brandId" type ="text"/></td>
			
		   <td>表壳:</td>
			<td><input name="brandId" type ="text"/></td>
			
			<td>表盘:</td>
			<td><input name="brandId" type ="text"/></td>
			
			</tr>
			
			
			<tr>
			<td>表面:</td>
			<td><input name="brandId" type ="text"/></td>
			
		    <td>表带:</td>
			<td><input name="brandId" type ="text"/></td>
			
			
			<td>防水:</td>
			<td><input name="brandId" type ="text"/></td>
			
			<td>功能:</td>
			<td><input name="brandId" type ="text"/></td>
			
			
			</tr>

			
			<tr>
				<td>原价:</td>
			<td><input name="brandId" type ="text"/></td>
			
			<td>特价:</td>
			<td><input name="brandId" type ="text"/></td>
			
			
			<td>上架时间:</td>
			<td><input name="brandId" type ="text"/></td>
			
			
			<td>人气:</td>
			<td><input name="brandId" type ="text"/></td>
			</tr>
			
			<tr>
			
				<td>销售量:</td>
			<td><input name="brandId" type ="text"/></td>
			
				<td>备注:</td>
			<td><input name="brandId" type ="text"/></td>
			<td><input type = "submit" value="确认增加商品"></td>
			
			</tr>
			
			</table>
			</form>
			
			<h3 >${lyj_addMessage}</h3>
			<br>
			<table border="10">
			<tr>
			<td width="230" align="center">商品id</td>
			<td width="230" align="center">商品名字</td>
			<td width="230" align="center">产地</td>
			<td width="230" align="center">品牌名字</td>
			<td width="230" align="center">品牌系列名字</td>
			<td width="230" align="center">型号</td>
			<td width="230" align="center">款式</td>
			<td width="230" align="center">尺寸</td>
			<td width="230" align="center">厚度</td>
			<td width="230" align="center">机芯</td>
			<td width="230" align="center">机芯类别</td>
			<td width="230" align="center">表壳</td>
			<td width="230" align="center">表盘</td>
			<td width="230" align="center">表面</td>
			<td width="230" align="center">表带</td>
			<td width="230" align="center">防水</td>
			<td width="230" align="center">功能</td>
			<td width="230" align="center">包装</td>
			<td width="230" align="center">原价</td>
			<td width="230" align="center">特价</td>
			<td width="230" align="center">上架时间</td>
			<td width="230" align="center">人气</td>
			<td width="230" align="center">销售量</td>
			<td width="230" align="center">备注</td>
			<td width="230" align="center">操作</td>
			</tr>
		
			<s:iterator value="#session.lyj_bsMessage">
				<tr align="center">
					<td  width="230" align="center"><s:property value="brandSeriesId" /></td>
					<td  width="230" align="center"><s:property value="brandSeriesName" /></td>
					<td  width="230" align="center"><s:property value="brandSeriesIntro" /></td>
					<td  width="230" align="center"><s:property value="brand.brandId" /></td>
					<td  width="230" align="center"><s:property value="brandSeriesId" /></td>
					<td  width="230" align="center"><s:property value="brandSeriesName" /></td>
					<td  width="230" align="center"><s:property value="brandSeriesIntro" /></td>
					<td  width="230" align="center"><s:property value="brand.brandId" /></td>
					<td  width="230" align="center"><s:property value="brandSeriesId" /></td>
					<td  width="230" align="center"><s:property value="brandSeriesName" /></td>
					<td  width="230" align="center"><s:property value="brandSeriesIntro" /></td>
					<td  width="230" align="center"><s:property value="brand.brandId" /></td>
					<td  width="230" align="center"><s:property value="brandSeriesId" /></td>
					<td  width="230" align="center"><s:property value="brandSeriesName" /></td>
					<td  width="230" align="center"><s:property value="brandSeriesIntro" /></td>
					<td  width="230" align="center"><s:property value="brand.brandId" /></td>
					<td  width="230" align="center"><s:property value="brandSeriesId" /></td>
					<td  width="230" align="center"><s:property value="brandSeriesName" /></td>
					<td  width="230" align="center"><s:property value="brandSeriesIntro" /></td>
					<td  width="230" align="center"><s:property value="brand.brandId" /></td>
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
