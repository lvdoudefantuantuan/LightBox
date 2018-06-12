<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="com.soft.Util.DbUtil"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>添加值班记录验证</title>
</head>
<body>
<%
//设置请求编码格式
request.setCharacterEncoding("utf-8");

String id = request.getParameter("id");

String name = request.getParameter("name");

String date = request.getParameter("date");

//设置请求编码格式

request.setCharacterEncoding("utf-8");
//连接数据库
DbUtil dbUtil =new DbUtil();
Connection con=dbUtil.getCon();
//获取connection对象
String sql="insert into duty(id,name,date)"+"values(?,?,?)";
PreparedStatement ps= con.prepareStatement(sql);
//定义日期格式
//String pattern="yyyy-MM-dd";
//SimpleDateFormat sdf = new SimpleDateFormat(pattern);
//String date = sdf.format(new java.util.Date());
ps.setString(1, id);
ps.setString(2, name);
ps.setString(3, date);

ps.executeUpdate();
//关闭资源
ps.close();
//重定向到shopping.jsp界面
response.sendRedirect("/LightBox/Duty/CDuty.jsp");
 %>

</body>
</html>