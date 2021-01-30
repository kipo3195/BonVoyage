package com.bon.voyage;

import java.sql.Connection;
import java.sql.SQLException;

import javax.inject.Inject;
import javax.sql.DataSource;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;


@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(
	 locations= {"classpath:/spring/root-context.xml"
	 })
public class HikariTest {
   //Connection Pool 중에서 제일 안전.
	@Inject
	DataSource ds;
	
	/*
	 * @Inject SearchBoardMapper mapper;
	 */
	
	@Test
	public void hikariTest() {
          Connection conn = null;
		
		try {
				 System.out.println(ds);
				 conn = ds.getConnection();
		         System.out.println(conn);
					/* System.out.println(mapper); */
		} catch (SQLException e) {
			    e.printStackTrace();
		}finally {
			try {
				if(conn!=null)conn.close();
			}catch(SQLException e) {}
		
		}
	}	
	
	
	
}
