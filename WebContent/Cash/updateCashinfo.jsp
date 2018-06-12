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
String sql="Select * from cash where id=?";
PreparedStatement ps=con.prepareStatement(sql);
ps.setString(1, id);
ResultSet rs=ps.executeQuery();
 %>
 <form action="/LightBox/Cash/updateCashlogic.jsp" method="post">
 <%
 if(rs.next()){
  %>
 <table width="500px" height="60px" align="center">
 
 <tr height="30px">
 <td align="center">序号 </td>
 <td align="center"><input type="text" name="id" value="<%=rs.getString("id")%>"></td>
 <td align="center">上交押金</td>
 <td align="center"><input type="text" name="cash" value="<%=rs.getString("cash")%>"></td>
 </tr>
  
 <tr height="30px">
 <td align="center">上交押金数量</td>
 <td align="center"><input type="text" name="handcash" value="<%=rs.getString("handcash")%>"></td>
 <td align="center">罚款金额</td>
 <td align="center"><input type="text" name="fine" value="<%=rs.getString("fine")%>"></td>
 <td align="center">剩余押金</td>
 <td align="center"><input type="text" name="residue" value="<%=rs.getString("residue")%>"></td>
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