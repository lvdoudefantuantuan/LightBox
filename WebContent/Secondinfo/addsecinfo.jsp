<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>添加施工方基本信息页面</title>
</head>
<body>
<form action="/LightBox/Secondinfo/addseclogic.jsp" method="post">
<table width="500px" height="60px" align="center">
<tr height="30px">
<td align="center" width="120px">职工编号</td>
<td align="center" width="56px">
<input type="text" name="id">
</td>
<td align="center" width="120px">箱体编号</td>
<td align="center" width="56px">
<input type="text" name="xtid">
</td>
</tr>
<tr height="30px">
<td align="center" width="120px">公司名称</td>
<td align="center" width="56px">
<input type="text" name="cname">
</td>
<td align="center" width="120px">公司电话</td>
<td align="center" width="56px">
<input type="text" name="cphone">
</td>
</tr>
<tr height="30px">
<td align="center" width="120px">光交箱钥匙</td>
<td align="center" width="56px">
<input type="text" name="xtkey">
</td>
<td align="center" width="120px">使用情况</td>
<td align="center" width="56px">
<input type="text" name="situation">
</td>
</tr>
<tr height="30px">
<td align="center" width="120px">押金余额</td>
<td align="center" width="56px">
<input type="text" name="cash">
</td>
<td align="center" width="120px">罚款金额</td>
<td align="center" width="56px">
<input type="text" name="fine">
</td>
</tr>
</table>
<div align="center">
<input type="submit" value="添加">
</div>
</form>
</body>
</html>