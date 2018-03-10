package com.niit.test;

import static org.junit.Assert.assertTrue;

import java.util.Date;

import org.junit.BeforeClass;
import org.junit.Test;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.niit.dao.OrderDetailDAO;
import com.niit.model.OrderDetail;

public class OrderDetailUnitTest

{

	 AnnotationConfigApplicationContext context;
	static OrderDetailDAO orderDetailDAO;
	
	
	@BeforeClass
	public static void executeFirst()throws Exception
	{
		AnnotationConfigApplicationContext context=new AnnotationConfigApplicationContext();
		context.scan("com.niit");
		context.refresh();
		
		orderDetailDAO=(OrderDetailDAO)context.getBean("orderDetailDAO");
	}

	
	@Test
	
	public void confirmorderDetailTest()
	{
		
		OrderDetail orderDetail=new OrderDetail();
		orderDetail.setCartId(1010);
		orderDetail.setOrderDate(new Date());
		orderDetail.setUsername("Vicky");
		orderDetail.setTotalAmount(1000);
		orderDetail.setShippingAddress("Rajajipuram");
		orderDetail.setTransactionType("CC");
		
		
		
		assertTrue("has some error", orderDetailDAO.confirmOrderDetail(orderDetail));
	}
	
}
