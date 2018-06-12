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
String sql="select * from xtinfo";
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
 <div class="neiDiv">规格</div>
 </div>
 </td>
  <td align="center" id="bortop1">
 <div class="LiTi">
 <div class="neiDiv">设备ID</div>
 </div>
 </td>
  <td align="center" id="bortop1">
 <div class="LiTi">
 <div class="neiDiv">PSK码</div>
 </div>
 </td>
  <td align="center" id="bortop1">
 <div class="LiTi">
 <div class="neiDiv">出厂地</div>
 </div>
 </td>
  <td align="center" id="bortop1">
 <div class="LiTi">
 <div class="neiDiv">制造年代</div>
 </div>
 </td>
 <td align="center" id="bortop1">
 <div class="LiTi">
 <div class="neiDiv">安装位置</div>
 </div>
 </td>
 <td align="center" id="bortop1">
 <div class="LiTi">
 <div class="neiDiv">故障情况</div>
 </div>
 </td>
 <td align="center" id="bortop1">
 <div class="LiTi">
 <div class="neiDiv">物联网卡</div>
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
  <%=rs.getString("guige") %>
  </td>
  <td id="bor1" align="center">
  <%=rs.getString("equipid") %>
  </td>
  <td id="bor1" align="center">
  <%=rs.getString("pskid") %>
  </td>
  <td id="bor1" align="center">
  <%=rs.getString("factory") %>
  </td>
  <td id="bor1" align="center">
  <%=rs.getString("manufacture") %>
  </td>
  <td id="bor1" align="center">
  <%=rs.getString("location") %>
  </td>
  <td id="bor1" align="center">
  <%=rs.getString("trouble") %>
  </td>
  <td id="bor1" align="center">
  <%=rs.getString("iotcard") %>
  </td>
  <td id="bor2" align="center">
  <a href="/LightBox/XTinfo/deleteXTinfo.jsp?id=<%=rs.getString("id") %> ">删除</a><a href="/LightBox/XTinfo/updateXTinfo.jsp?id=<%=rs.getString("id") %> ">修改</a>
  </td>
  </tr>
 <%
 }
 %>
 </table> 
  <div align="center"><a href="/LightBox/XTinfo/addXTinfo.jsp">添加</a></div>
 </div>
</body>
</html>