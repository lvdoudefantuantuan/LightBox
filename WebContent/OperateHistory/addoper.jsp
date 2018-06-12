<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>添加操作历史页面</title>
</head>
<body>
<form action="/LightBox/OperateHistory/addoperlogic.jsp" method="post">
<table width="500px" height="60px" align="center">
<tr height="30px">
<td align="center" width="120px">序号</td>
<td align="center" width="56px">
<input type="text" name="id">
</td>
<td align="center" width="120px">箱体编号</td>
<td align="center" width="56px">
<input type="text" name="xtid">
</td>
</tr>
<tr height="30px">
<td align="center" width="120px">施工单位编号</td>
<td align="center" width="56px">
<input type="text" name="sgid">
</td>
<td align="center" width="120px">故障情况</td>
<td align="center" width="56px">
<input type="text" name="trouble">
</td>
</tr>
<tr height="30px">
<td align="center" width="120px">箱体状态（开/关）</td>
<td align="center" width="56px">
<input type="text" name="state">
</td>
<td align="center" width="120px">开始时间</td>
<td align="center" width="56px">
<input type="text" name="starttime">
</td>
</tr>
<tr height="30px">
<td align="center" width="120px">结束时间</td>
<td align="center" width="56px">
<input type="text" name="endtime">
</td>
<td align="center" width="120px">开箱照片</td>
<td align="center" width="56px">
<input type="text" name="opengif">
</td>
<td align="center" width="120px">箱内照片</td>
<td align="center" width="56px">
<input type="text" name="ingif">
</td>
<td align="center" width="120px">关箱照片</td>
<td align="center" width="56px">
<input type="text" name="closegif">
</td>
<td align="center" width="120px">锁状态</td>
<td align="center" width="56px">
<input type="text" name="keystate">
</td>
<td align="center" width="120px">评分</td>
<td align="center" width="56px">
<input type="text" name="grade">
</td>
</tr>
</table>
<div align="center">
<input type="submit" value="添加">
</div>
</form>
</body>
</html>