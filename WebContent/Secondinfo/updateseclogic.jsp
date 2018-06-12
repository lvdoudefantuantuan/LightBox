<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="com.soft.Util.DbUtil"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<body>
<%
request.setCharacterEncoding("utf-8");
String id = request.getParameter("id");
String xtid = request.getParameter("xtid");
String cname = request.getParameter("cname");
String cphone = request.getParameter("cphone");
String xtkey = request.getParameter("xtkey");
String situation = request.getParameter("situation");
String cash = request.getParameter("cash");
String fine = request.getParameter("fine");


DbUtil dbUtil =new DbUtil();
Connection con=dbUtil.getCon();
String sql="update secondinfo set xtid=?,cname=?,cphone=?,xtkey=?,situation=?,cash=?,fine=? where id=?";
PreparedStatement ps=con.prepareStatement(sql);
ps.setString(1, xtid);
ps.setString(2, cname);
ps.setString(3, cphone);
ps.setString(4, xtkey);
ps.setString(5, situation);
ps.setString(6, cash);
ps.setString(7, fine);

ps.setString(8, id);
ps.executeUpdate();
response.sendRedirect("/LightBox/Secondinfo/Csecondinfo.jsp");
 %>

</body>
</html>