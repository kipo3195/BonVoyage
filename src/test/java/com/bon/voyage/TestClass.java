package com.bon.voyage;

import javax.inject.Inject;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.bon.voyage.dao.HotelDAO;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {
		"classpath:/spring/root-context.xml"
})
public class TestClass {
	
	@Inject
	HotelDAO dao;
	
	@Test
	public void test1() {
		
	System.out.println("daoList"+dao.readList());
		
		
	}
}
