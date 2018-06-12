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
<title>操作历史查询界面</title>
</head>
<body>
<%
request.setCharacterEncoding("utf-8");
DbUtil condb = new DbUtil();
Connection con=condb.getCon();
String sql="select * from operatehistory";
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
 <div class="neiDiv">箱体编号</div>
 </div>
 </td>
  <td align="center" id="bortop1">
 <div class="LiTi">
 <div class="neiDiv">施工单位编号</div>
 </div>
 </td>
  <td align="center" id="bortop1">
 <div class="LiTi">
 <div class="neiDiv">故障情况</div>
 </div>
 </td>
  <td align="center" id="bortop1">
 <div class="LiTi">
 <div class="neiDiv">箱体状态（开/关）</div>
 </div>
 </td>
  <td align="center" id="bortop1">
 <div class="LiTi">
 <div class="neiDiv">开始时间</div>
 </div>
 </td>
 <td align="center" id="bortop1">
 <div class="LiTi">
 <div class="neiDiv">结束时间</div>
 </div>
 </td>
 <td align="center" id="bortop1">
 <div class="LiTi">
 <div class="neiDiv">开箱照片</div>
 </div>
 </td>
 <td align="center" id="bortop1">
 <div class="LiTi">
 <div class="neiDiv">箱内照片</div>
 </div>
 </td>
 <td align="center" id="bortop1">
 <div class="LiTi">
 <div class="neiDiv">关箱照片</div>
 </div>
 </td>
 <td align="center" id="bortop1">
 <div class="LiTi">
 <div class="neiDiv">锁状态</div>
 </div>
 </td>
 <td align="center" id="bortop1">
 <div class="LiTi">
 <div class="neiDiv">评分</div>
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
  <%=rs.getString("xtid") %>
  </td>
  <td id="bor1" align="center">
  <%=rs.getString("sgid") %>
  </td>
  <td id="bor1" align="center">
  <%=rs.getString("trouble") %>
  </td>
  <td id="bor1" align="center">
  <%=rs.getString("state") %>
  </td>
  <td id="bor1" align="center">
  <%=rs.getString("starttime") %>
  </td>
  <td id="bor1" align="center">
  <%=rs.getString("endtime") %>
  </td>
  <td id="bor1" align="center">
  <%=rs.getString("opengif") %>
  </td>
  <td id="bor1" align="center">
  <%=rs.getString("ingif") %>
  </td>
  <td id="bor1" align="center">
  <%=rs.getString("closegif") %>
  </td>
  <td id="bor1" align="center">
  <%=rs.getString("keystate") %>
  </td>
  <td id="bor1" align="center">
  <%=rs.getString("grade") %>
  </td>
  <td id="bor2" align="center">
  <a href="/LightBox/OperateHistory/updateoper.jsp?id=<%=rs.getString("id") %> ">修改</a>
  </td>
  </tr>
 <%
 }
 %>
 </table> 
  <div align="center"><a href="/LightBox/OperateHistory/addoper.jsp">添加</a></div>
 </div>
</body>
</html>