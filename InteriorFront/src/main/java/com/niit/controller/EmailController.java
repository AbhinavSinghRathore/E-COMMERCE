package com.niit.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.niit.dao.OrderDetailDAO;
import com.niit.dao.ProductDAO;
import com.niit.dao.UserDetailDAO;
import com.niit.email.Emailsend;
import com.niit.model.OrderDetail;
import com.niit.model.Product;

@Controller
public class EmailController {

   @Autowired
   UserDetailDAO userDAO;
   @Autowired
   OrderDetailDAO orderDAO;
   @Autowired
   ProductDAO productDAO;
   
    
    
	@RequestMapping("/sendorder/{id}")
	public String sendEMail(@PathVariable("id")int id,Model m, HttpSession httpSession)
	{
		
		
		String username=(String)httpSession.getAttribute("username");
		String to=userDAO.getUserByUserName(username).getEmailId();
		
		Product product=productDAO.getProduct(id);
		OrderDetail order=orderDAO.getOrderById(id);
		
		String products_name="";
		String product_price="";
		List<String> products=(List<String>) httpSession.getAttribute("products");
		for(String s:products) {
			products_name+=s+"\n";
		}
		
		String description="Order no:-"+order.getOrderId()+ "\nProduct Name:-"+products_name+
				            "\nPayment Mode:-"+order.getTransactionType()+"\n Amount:-"+order.getTotalAmount()+"\nShipping Address:-"+order.getShippingAddress();
		String from="abhi9singh202@gmail.com";
		System.out.println("To:-"+to);
		Emailsend.sendMail(to,from,"Order Details", description);
		m.addAttribute("successMessage","MailSend");
		
		return "ThankYou";
	}
}