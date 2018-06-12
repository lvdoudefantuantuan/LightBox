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
String cash = request.getParameter("cash");
String handcash = request.getParameter("handcash");
String fine = request.getParameter("fine");
String residue = request.getParameter("residue");

DbUtil dbUtil =new DbUtil();
Connection con=dbUtil.getCon();
String sql="update cash set cash=?,handcash=?,fine=?,residue=? where id=?";
PreparedStatement ps=con.prepareStatement(sql);
ps.setString(1, cash);
ps.setString(2, handcash);
ps.setString(3, fine);
ps.setString(4, residue);

ps.setString(5, id);
ps.executeUpdate();
response.sendRedirect("/LightBox/Cash/CCash.jsp");
 %>

</body>
</html>