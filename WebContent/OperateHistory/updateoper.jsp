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
<title>修改操作历史界面</title>
</head>
<body>
<%
String id=request.getParameter("id");
DbUtil dbUtil =new DbUtil();
Connection con=dbUtil.getCon();
String sql="Select * from operatehistory where id=?";
PreparedStatement ps=con.prepareStatement(sql);
ps.setString(1, id);
ResultSet rs=ps.executeQuery();
 %>
 <form action="/LightBox/OperateHistory/updateoperlogic.jsp" method="post">
 <%
 if(rs.next()){
  %>
 <table width="500px" height="60px" align="center">
 
 <tr height="30px">
 <td align="center">序号</td>
 <td align="center"><input type="text" name="id" value="<%=rs.getString("id")%>"></td>
 <td align="center">箱体编号</td>
 <td align="center"><input type="text" name="xtid" value="<%=rs.getString("xtid")%>"></td>
 </tr>
  
 <tr height="30px">
 <td align="center">施工单位编号</td>
 <td align="center"><input type="text" name="sgid" value="<%=rs.getString("sgid")%>"></td>
 <td align="center">故障情况</td>
 <td align="center"><input type="text" name="trouble" value="<%=rs.getString("trouble")%>"></td>
 </tr>
 
 <tr height="30px">
 <td align="center">箱体状态（开/关）</td>
 <td align="center"><input type="text" name="state" value="<%=rs.getString("state")%>"></td>
 <td align="center">开始时间</td>
 <td align="center"><input type="text" name="starttime" value="<%=rs.getString("starttime")%>"></td>
 </tr>
 
 <tr height="30px">
 <td align="center">结束时间</td>
 <td align="center"><input type="text" name="endtime" value="<%=rs.getString("endtime")%>"></td>
 <td align="center">开箱照片</td>
 <td align="center"><input type="text" name="opengif" value="<%=rs.getString("opengif")%>"></td>
 </tr>
 
 <tr height="30px">
 <td align="center">箱内照片</td>
 <td align="center"><input type="text" name="ingif" value="<%=rs.getString("ingif")%>"></td>
 <td align="center">关箱照片</td>
 <td align="center"><input type="text" name="closegif" value="<%=rs.getString("closegif")%>"></td>
 </tr>
 
 <tr height="30px">
 <td align="center">锁状态</td>
 <td align="center"><input type="text" name="keystate" value="<%=rs.getString("keystate")%>"></td>
 <td align="center">评分</td>
 <td align="center"><input type="text" name="grade" value="<%=rs.getString("grade")%>"></td>
 </tr>
 
 </table>
 <!--在提交表单时传值给updatelogic.jsp页面 -->
 <input type="hidden" name="id" value="<%=rs.getString("id")%>">
 <%
 }
  %>
 <div align="center">
<input type="submit" value="修改">
</div>
 </form>

</body>
</html>