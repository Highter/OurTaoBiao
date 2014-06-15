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
  
    <center>
    				<div>
					<form  action = "commodityupdate" method="post">
					<table border="10">
					<caption>商品信息修改与查看</caption>
					<tr><td>商品id</td><td><input name="commodityId" type="text" value="${lyj_updateMessage.commodityId}" readonly="readonly" /></td>
					<td>商品名字</td><td><input name="commodityName" type="text" value="${lyj_updateMessage.commodityName}"/></td></tr>
					
					<tr><td>产地</td><td><textarea name="proPlace">${lyj_updateMessage.proPlace}</textarea></td>
				    <td>品牌名字</td><td><input name="brandName" type="text" value="${lyj_updateMessage.brandName}"/></td></tr>
				
				
					<tr><td>品牌系列名字</td><td><input name="brandSeriesName" type="text" value="${lyj_updateMessage.brandSeriesName}"/></td>
					<td>型号</td><td><textarea name="model">${lyj_updateMessage.model}</textarea></td></tr>
					
					
					<tr><td>款式</td><td><input name="style" type="text" value="${lyj_updateMessage.style}"/></td>
					<td>尺寸</td><td><input name="size" type="text" value="${lyj_updateMessage.size}"/></td></tr>
					
					
					<tr><td>厚度</td><td><textarea name="thickness">${lyj_updateMessage.thickness}</textarea></td>
					<td>机芯</td><td><input name="chip" type="text" value="${lyj_updateMessage.chip}"/></td></tr>
					
					
					<tr><td>机芯类别</td><td><input name="chipCategory" type="text" value="${lyj_updateMessage.chipCategory}"/></td>
					<td>表壳</td><td><textarea name="watchCase">${lyj_updateMessage.watchCase}</textarea></td></tr>
					
					
					
					<tr><td>表盘</td><td><input name="dial" type="text" value="${lyj_updateMessage.dial}"/></td>
					<td>表面</td><td><input name="cover" type="text" value="${lyj_updateMessage.cover}"/></td></tr>
					
					
					<tr><td>表带</td><td><textarea name="watchband">${lyj_updateMessage.watchband}</textarea></td>
					<td>防水</td><td><input name="waterproof" type="text" value="${lyj_updateMessage.waterproof}"/></td></tr>
					
					
					<tr><td>功能</td><td><input name="function" type="text" value="${lyj_updateMessage.function}"/></td>
					<td>包装</td><td><textarea name="pack">${lyj_updateMessage.pack}</textarea></td></tr>
					
					<tr><td>原价</td><td><input name="originalCost" type="text" value="${lyj_updateMessage.originalCost}" readonly="readonly"/></td>
					<td>特价</td><td><input name="specialCost" type="text" value="${lyj_updateMessage.specialCost}"/></td></tr>
					
					
					<tr><td>上架时间</td><td><textarea name="onSaleTime" readonly="readonly">${lyj_updateMessage.onSaleTime}</textarea></td>
					<td>人气</td><td><input name="hunmanNum" type="text" value="${lyj_updateMessage.hunmanNum}" readonly="readonly"/></td></tr>
					
					<tr><td>销售量</td><td><input name="saleNum" type="text" value="${lyj_updateMessage.saleNum}" readonly="readonly"/></td>
					<td>备注</td><td><textarea name="remarks">${lyj_updateMessage.remarks}</textarea></td></tr>

					<tr><td></td><td><input type = "submit" value = "提交修改"></td></tr>
					</table>
					</form>
				</div>
			</center>
  </body>
</html>
