<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>添加箱体信息页面</title>
</head>
<body>
<form action="/LightBox/XTinfo/addXTinfologic.jsp" method="post">
<table width="500px" height="60px" align="center">
<tr height="30px">
<td align="center" width="120px">编号</td>
<td align="center" width="56px">
<input type="text" name="id">
</td>
<td align="center" width="120px">规格</td>
<td align="center" width="56px">
<input type="text" name="guige">
</td>
</tr>
<tr height="30px">
<td align="center" width="120px">设备ID</td>
<td align="center" width="56px">
<input type="text" name="equipid">
</td>
<td align="center" width="120px">PSK码</td>
<td align="center" width="56px">
<input type="text" name="pskid">
</td>
</tr>
<tr height="30px">
<td align="center" width="120px">出厂地</td>
<td align="center" width="56px">
<input type="text" name="factory">
</td>
<td align="center" width="120px">制造年代</td>
<td align="center" width="56px">
<input type="text" name="manufacture">
</td>
</tr>
<tr height="30px">
<td align="center" width="120px">安装位置</td>
<td align="center" width="56px">
<input type="text" name="location">
</td>
<td align="center" width="120px">故障情况</td>
<td align="center" width="56px">
<input type="text" name="trouble">
</td>
</tr>
<tr height="30px">
<td align="center" width="120px">物联网卡</td>
<td align="center" width="56px">
<input type="text" name="iotcard">
</td>
</tr>
</table>
<div align="center">
<input type="submit" value="添加">
</div>
</form>
</body>
</html>