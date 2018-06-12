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
String guige = request.getParameter("guige");
String equipid = request.getParameter("equipid");
String pskid = request.getParameter("pskid");
String factory = request.getParameter("factory");
String manufacture = request.getParameter("manufacture");
String location = request.getParameter("location");
String trouble = request.getParameter("trouble");
String iotcard = request.getParameter("iotcard");


DbUtil dbUtil =new DbUtil();
Connection con=dbUtil.getCon();
String sql="update xtinfo set guige=?,equipid=?,pskid=?,factory=?,manufacture=?,location=?,trouble=?,iotcard=? where id=?";
PreparedStatement ps=con.prepareStatement(sql);
ps.setString(1, guige);
ps.setString(2, equipid);
ps.setString(3, pskid);
ps.setString(4, factory);
ps.setString(5, manufacture);
ps.setString(6, location);
ps.setString(7, trouble);
ps.setString(8, iotcard);
ps.setString(9, id);
ps.executeUpdate();
response.sendRedirect("/LightBox/XTinfo/CXTinfo.jsp");
 %>

</body>
</html>