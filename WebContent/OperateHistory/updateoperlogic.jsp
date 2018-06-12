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
String sgid = request.getParameter("sgid");
String trouble = request.getParameter("trouble");
String state = request.getParameter("state");
String starttime = request.getParameter("starttime");
String endtime = request.getParameter("endtime");
String opengif = request.getParameter("opengif");
String ingif = request.getParameter("ingif");
String closegif = request.getParameter("closegif");
String keystate = request.getParameter("keystate");
String grade = request.getParameter("grade");

DbUtil dbUtil =new DbUtil();
Connection con=dbUtil.getCon();
String sql="update operatehistory set xtid=?,sgid=?,trouble=?,state=?,starttime=?,endtime=?,opengif=?,ingif=?,closegif=?,keystate=?,grade=? where id=?";
PreparedStatement ps=con.prepareStatement(sql);
ps.setString(1, xtid);
ps.setString(2, sgid);
ps.setString(3, trouble);
ps.setString(4, state);
ps.setString(5, starttime);
ps.setString(6, endtime);
ps.setString(7, opengif);
ps.setString(8, ingif);
ps.setString(9, closegif);
ps.setString(10, keystate);
ps.setString(11, grade);

ps.setString(12, id);
ps.executeUpdate();
response.sendRedirect("/LightBox/OperateHistory/Coperatehis.jsp");
 %>

</body>
</html>