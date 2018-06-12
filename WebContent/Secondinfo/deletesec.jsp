<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="com.soft.Util.DbUtil"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>删除</title>
</head>
<body>
<%
request.setCharacterEncoding("utf-8");
String id = request.getParameter("id");
DbUtil dbUtil =new DbUtil();

Connection con=dbUtil.getCon();
String sql="delete from secondinfo where id=?";
PreparedStatement ps= con.prepareStatement(sql);
ps.setString(1, id);
ps.executeUpdate();
response.sendRedirect("/LightBox/Secondinfo/Csecondinfo.jsp");
 %>

</body>
</html>