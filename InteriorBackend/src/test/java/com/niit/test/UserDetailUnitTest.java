package com.niit.test;

import static org.junit.Assert.*;

import java.util.List;

import org.junit.BeforeClass;
import org.junit.Ignore;
import org.junit.Test;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.niit.dao.UserDetailDAO;
import com.niit.model.UserDetail;

public class UserDetailUnitTest {

	private static AnnotationConfigApplicationContext context;
	static UserDetailDAO userDetailDAO;

	@BeforeClass
	public static void executeFirst()throws Exception
	{
		context=new AnnotationConfigApplicationContext();
		context.scan("com.niit");
		context.refresh();
		
		userDetailDAO=(UserDetailDAO)context.getBean("userDetailDAO");
	}
	
	
	@Test
	public void getuserTest() {
		assertNotNull("Somthing went wrong", userDetailDAO.getUserByUserName("Hp"));
	}
	
	@Ignore
	@Test
	public void registerUser()
	{
		UserDetail ud=new UserDetail();
		ud.setUsername("Abhinav Singh");
		ud.setPassword("007");
		ud.setRole("ROLE_ADMIN");
		ud.setEnabled(true);
		//ud.setCustomerName("Bittu");
		ud.setMobileNo("9557957537");
		ud.setEmailId("abhi9singh202@gmail.com");
		ud.setAddress("lko");
		assertTrue("Problem in UserDetail Insertion",userDetailDAO.registerUser(ud));
		
	}

	@Ignore
	@Test
public void updateDetail()
{
		UserDetail ud=new UserDetail();
		ud.setCustomerName("Singh");
		
}
	@Ignore
	@Test
	public void getlisttest() {
		List<UserDetail> ulist=userDetailDAO.getAllUser();
		assertNotNull("Got error", ulist);
	}
}


