 <%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="com.soft.Util.DbUtil"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>箱体通讯查询界面</title>
</head>
<body>
<%
request.setCharacterEncoding("utf-8");
DbUtil condb = new DbUtil();
Connection con=condb.getCon();
String sql="select * from xtcommunicate";
PreparedStatement ps=con.prepareStatement(sql);
ResultSet rs=ps.executeQuery();
%>
 <div align="center">
 
 <table width="500px" heigit="300px" cellspacing="0" cellpadding="0"  border="1px" class="tong">
 <tr height="40px">
 <td align="center" id="bortop1">
 <div class="LiTi">
 <div class="neiDiv">编号</div>
 </div>
 </td>
  <td align="center" id="bortop1">
 <div class="LiTi">
 <div class="neiDiv">电压</div>
 </div>
 </td>
  <td align="center" id="bortop1">
 <div class="LiTi">
 <div class="neiDiv">温度</div>
 </div>
 </td>
  <td align="center" id="bortop1">
 <div class="LiTi">
 <div class="neiDiv">通讯状况</div>
 </div>
 </td>
 </tr>
 <%
 while(rs.next()){
  %>
  <tr>
  <td id="bor1" align="center">
  <%=rs.getString("id") %>
  </td>
  <td id="bor1" align="center">
  <%=rs.getString("voltage") %>
  </td>
  <td id="bor1" align="center">
  <%=rs.getString("temperature") %>
  </td>
  <td id="bor1" align="center">
  <%=rs.getString("communicate") %>
  </td>
  </tr>
 <%
 }
 %>
 </table> 
 </div>
</body>
</html>