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
<title>箱体信息查询界面</title>
</head>
<body>
<%
request.setCharacterEncoding("utf-8");
DbUtil condb = new DbUtil();
Connection con=condb.getCon();
String sql="select * from firstinfo";
PreparedStatement ps=con.prepareStatement(sql);
ResultSet rs=ps.executeQuery();
%>
 <div align="center">
 
 <table width="500px" heigit="300px" cellspacing="0" cellpadding="0"  border="1px" class="tong">
 <tr height="40px">
 <td align="center" id="bortop1">
 <div class="LiTi">
 <div class="neiDiv">职工编号</div>
 </div>
 </td>
  <td align="center" id="bortop1">
 <div class="LiTi">
 <div class="neiDiv">姓名</div>
 </div>
 </td>
  <td align="center" id="bortop1">
 <div class="LiTi">
 <div class="neiDiv">电话</div>
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
  <%=rs.getString("name") %>
  </td>
  <td id="bor1" align="center">
  <%=rs.getString("phone") %>
  </td>
  <td id="bor2" align="center">
  <a href="/LightBox/Firstinfo/deleteFirstinfo.jsp?id=<%=rs.getString("id") %> ">删除</a><a href="/LightBox/Firstinfo/updateFirstinfo.jsp?id=<%=rs.getString("id") %> ">修改</a>
  </td>
  </tr>
 <%
 }
 %>
 </table> 
  <div align="center"><a href="/LightBox/Firstinfo/addFirstinfo.jsp">添加</a></div>
 </div>
</body>
</html>