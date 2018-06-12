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
<title>修改施工方基本信息界面</title>
</head>
<body>
<%
String id=request.getParameter("id");
DbUtil dbUtil =new DbUtil();
Connection con=dbUtil.getCon();
String sql="Select * from secondinfo where id=?";
PreparedStatement ps=con.prepareStatement(sql);
ps.setString(1, id);
ResultSet rs=ps.executeQuery();
 %>
 <form action="/LightBox/Secondinfo/updateseclogic.jsp" method="post">
 <%
 if(rs.next()){
  %>
 <table width="500px" height="60px" align="center">
 
 <tr height="30px">
 <td align="center">职工编号 </td>
 <td align="center"><input type="text" name="id" value="<%=rs.getString("id")%>"></td>
 <td align="center">箱体信息</td>
 <td align="center"><input type="text" name="xtid" value="<%=rs.getString("xtid")%>"></td>
 </tr>
  
 <tr height="30px">
 <td align="center">公司名称</td>
 <td align="center"><input type="text" name="cname" value="<%=rs.getString("cname")%>"></td>
 <td align="center">公司电话</td>
 <td align="center"><input type="text" name="cphone" value="<%=rs.getString("cphone")%>"></td>
 </tr>
 
 <tr height="30px">
 <td align="center">光交箱钥匙</td>
 <td align="center"><input type="text" name="xtkey" value="<%=rs.getString("xtkey")%>"></td>
 <td align="center">使用情况</td>
 <td align="center"><input type="text" name="situation" value="<%=rs.getString("situation")%>"></td>
 </tr>
 
 <tr height="30px">
 <td align="center">押金余额</td>
 <td align="center"><input type="text" name="cash" value="<%=rs.getString("cash")%>"></td>
 <td align="center">罚款金额</td>
 <td align="center"><input type="text" name="fine" value="<%=rs.getString("fine")%>"></td>
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