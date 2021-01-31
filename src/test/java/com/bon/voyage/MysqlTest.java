package com.bon.voyage;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

import org.junit.Test;

public class MysqlTest {
     	
		String driver = "net.sf.log4jdbc.sql.jdbcapi.DriverSpy";
		String url = "jdbc:log4jdbc:mysql://localhost:3306/mydata?serverTimezone=Asia/Seoul";
		String username = "java";
		String password = "java";
		
		@Test
		public void mySqlTest() {
			Connection conn = null;
			
			try {
				Class.forName(driver);
				conn=DriverManager.getConnection(url,username,password);
			} catch (Exception e) {
			}finally {
				   try {
					     if(conn != null) conn.close();
			       }catch (SQLException e) { }
			}	
		}
}
