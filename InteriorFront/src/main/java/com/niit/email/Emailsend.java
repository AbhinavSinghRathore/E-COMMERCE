

package com.niit.email;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;



public class Emailsend {
	
	
	
	@SuppressWarnings("resource")
	public static void sendMail(String to,String from,String subject,String description)
	{
		ApplicationContext context=new ClassPathXmlApplicationContext("email.xml");
		Email eutil=(Email) context.getBean("mailMail");
		eutil.sendMail(from,to,subject,description);
	}

}
