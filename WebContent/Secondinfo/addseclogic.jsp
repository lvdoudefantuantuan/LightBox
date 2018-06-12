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
<title>添加验证</title>
</head>
<body>
<%
//设置请求编码格式
request.setCharacterEncoding("utf-8");

String id = request.getParameter("id");

String xtid = request.getParameter("xtid");

String cname = request.getParameter("cname");

String cphone = request.getParameter("cphone");
//设置请求编码格式
String xtkey = request.getParameter("xtkey");
String situation = request.getParameter("situation");
String cash = request.getParameter("cash");
String fine = request.getParameter("fine");

request.setCharacterEncoding("utf-8");
//连接数据库
DbUtil dbUtil =new DbUtil();
Connection con=dbUtil.getCon();
//获取connection对象
String sql="insert into secondinfo(id,xtid,cname,cphone,xtkey,situation,cash,fine)"+"values(?,?,?,?,?,?,?,?)";
PreparedStatement ps= con.prepareStatement(sql);
//定义日期格式
//String pattern="yyyy-MM-dd";
//SimpleDateFormat sdf = new SimpleDateFormat(pattern);
//String date = sdf.format(new java.util.Date());
ps.setString(1, id);
ps.setString(2, xtid);
ps.setString(3, cname);
ps.setString(4, cphone);
ps.setString(5, xtkey);
ps.setString(6, situation);
ps.setString(7, cash);
ps.setString(8, fine);
ps.executeUpdate();
//关闭资源
ps.close();
//重定向到shopping.jsp界面
response.sendRedirect("/LightBox/Secondinfo/Csecondinfo.jsp");
 %>

</body>
</html>