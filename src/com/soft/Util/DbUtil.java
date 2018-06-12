package com.soft.Util;  
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;



public class DbUtil {
	private final String URL="jdbc:mysql://localhost:3306/onu";
	private final String USER="root";
	private final String PASSWORD="123456";
	private final String JDBCNAME="com.mysql.jdbc.Driver";
	public Connection getCon() throws Exception{
		Class.forName(JDBCNAME);
		Connection con=DriverManager.getConnection(URL,USER,PASSWORD);
		return con;
	}
	public void CloseCon(Connection con){
		if (con!=null) {
			try {
				con.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
	}
	public static void main(String[] args) {
		DbUtil condb=new DbUtil();
		try {
			condb.getCon();
			System.out.println("数据库连接成功");
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}
}
