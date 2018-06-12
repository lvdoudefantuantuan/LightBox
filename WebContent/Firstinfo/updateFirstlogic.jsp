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
<title>Insert title here</title>
</head>
<body>
<%
String id=request.getParameter("id");
DbUtil dbUtil =new DbUtil();
Connection con=dbUtil.getCon();
String sql="Select * from firstinfo where id=?";
PreparedStatement ps=con.prepareStatement(sql);
ps.setString(1, id);
ResultSet rs=ps.executeQuery();
 %>
 <form action="/LightBox/Firstinfo/updateFirstlogic.jsp" method="post">
 <%
 if(rs.next()){
  %>
 <table width="500px" height="60px" align="center">
 
 <tr height="30px">
 <td align="center">职工编号 </td>
 <td align="center"><input type="text" name="id" value="<%=rs.getString("id")%>"></td>
 <td align="center">姓名</td>
 <td align="center"><input type="text" name="name" value="<%=rs.getString("name")%>"></td>
 <td align="center">电话</td>
 <td align="center"><input type="text" name="phone" value="<%=rs.getString("phone")%>"></td>
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