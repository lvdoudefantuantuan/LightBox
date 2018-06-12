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

String sgid = request.getParameter("sgid");

String trouble = request.getParameter("trouble");
//设置请求编码格式
String state = request.getParameter("state");
String starttime = request.getParameter("starttime");
String endtime = request.getParameter("endtime");
String opengif = request.getParameter("opengif");
String ingif = request.getParameter("ingif");
String closegif = request.getParameter("closegif");
String keystate = request.getParameter("keystate");
String grade = request.getParameter("grade");

request.setCharacterEncoding("utf-8");
//连接数据库
DbUtil dbUtil =new DbUtil();
Connection con=dbUtil.getCon();
//获取connection对象
String sql="insert into operatehistory(id,xtid,sgid,trouble,state,starttime,endtime,opengif,ingif,closegif,keystate,grade)"+"values(?,?,?,?,?,?,?,?,?,?,?,?)";
PreparedStatement ps= con.prepareStatement(sql);
//定义日期格式
//String pattern="yyyy-MM-dd";
//SimpleDateFormat sdf = new SimpleDateFormat(pattern);
//String date = sdf.format(new java.util.Date());
ps.setString(1, id);
ps.setString(2, xtid);
ps.setString(3, sgid);
ps.setString(4, trouble);
ps.setString(5, state);
ps.setString(6, starttime);
ps.setString(7, endtime);
ps.setString(8, opengif);
ps.setString(9, ingif);
ps.setString(10, closegif);
ps.setString(11, keystate);
ps.setString(12, grade);
ps.executeUpdate();
//关闭资源
ps.close();
//重定向到shopping.jsp界面
response.sendRedirect("/LightBox/OperateHistory/Coperatehis.jsp");
 %>

</body>
</html>