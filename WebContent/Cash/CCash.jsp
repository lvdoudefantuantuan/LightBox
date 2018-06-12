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
<title>押金查询界面</title>
</head>
<body>
<%
request.setCharacterEncoding("utf-8");
DbUtil condb = new DbUtil();
Connection con=condb.getCon();
String sql="select * from cash";
PreparedStatement ps=con.prepareStatement(sql);
ResultSet rs=ps.executeQuery();
%>
 <div align="center">
 
 <table width="500px" heigit="300px" cellspacing="0" cellpadding="0"  border="1px" class="tong">
 <tr height="40px">
 <td align="center" id="bortop1">
 <div class="LiTi">
 <div class="neiDiv">序号</div>
 </div>
 </td>
  <td align="center" id="bortop1">
 <div class="LiTi">
 <div class="neiDiv">押金单位</div>
 </div>
 </td>
  <td align="center" id="bortop1">
 <div class="LiTi">
 <div class="neiDiv">上交押金数量</div>
 </div>
 </td>
  <td align="center" id="bortop1">
 <div class="LiTi">
 <div class="neiDiv">罚款金额</div>
 </div>
 </td>
  <td align="center" id="bortop1">
 <div class="LiTi">
 <div class="neiDiv">剩余押金</div>
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
  <%=rs.getString("cash") %>
  </td>
  <td id="bor1" align="center">
  <%=rs.getString("handcash") %>
  </td>
  <td id="bor1" align="center">
  <%=rs.getString("fine") %>
  </td>
  <td id="bor1" align="center">
  <%=rs.getString("residue") %>
  </td>
  
  <td id="bor2" align="center">
  <a href="/LightBox/Cash/deleteCashs.jsp?id=<%=rs.getString("id") %> ">删除</a><a href="/LightBox/Cash/updateCashinfo.jsp?id=<%=rs.getString("id") %> ">修改</a>
  </td>
  </tr>
 <%
 }
 %>
 </table> 
  <div align="center"><a href="/LightBox/Cash/addCash.jsp">添加</a></div>
 </div>
</body>
</html>