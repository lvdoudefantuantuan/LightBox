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
String sql="Select * from xtinfo where id=?";
PreparedStatement ps=con.prepareStatement(sql);
ps.setString(1, id);
ResultSet rs=ps.executeQuery();
 %>
 <form action="/LightBox/XTinfo/updatelogic.jsp" method="post">
 <%
 if(rs.next()){
  %>
 <table width="500px" height="60px" align="center">
 
 <tr height="30px">
 <td align="center">编号 </td>
 <td align="center"><input type="text" name="id" value="<%=rs.getString("id")%>"></td>
 <td align="center">规格</td>
 <td align="center"><input type="text" name="guige" value="<%=rs.getString("guige")%>"></td>
 </tr>
  
 <tr height="30px">
 <td align="center">设备ID</td>
 <td align="center"><input type="text" name="equipid" value="<%=rs.getString("equipid")%>"></td>
 <td align="center">PSK码</td>
 <td align="center"><input type="text" name="pskid" value="<%=rs.getString("pskid")%>"></td>
 </tr>
 
 <tr height="30px">
 <td align="center">出厂地</td>
 <td align="center"><input type="text" name="factory" value="<%=rs.getString("factory")%>"></td>
 <td align="center">制造年代</td>
 <td align="center"><input type="text" name="manufacture" value="<%=rs.getString("manufacture")%>"></td>
 </tr>
 
 <tr height="30px">
 <td align="center">安装位置</td>
 <td align="center"><input type="text" name="location" value="<%=rs.getString("location")%>"></td>
 <td align="center">故障情况</td>
 <td align="center"><input type="text" name="trouble" value="<%=rs.getString("trouble")%>"></td>
 </tr>
 
 <tr height="30px">
 <td align="center">物联网卡</td>
 <td align="center"><input type="text" name="iotcard" value="<%=rs.getString("iotcard")%>"></td>
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