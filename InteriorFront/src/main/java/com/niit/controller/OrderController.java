package com.niit.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.niit.dao.CartDAO;
import com.niit.dao.ProductDAO;
import com.niit.model.CartItem;

@Controller
public class OrderController

   {
    
	  @Autowired
	  CartDAO cartDAO;
	  
	  @Autowired
	  ProductDAO productDAO;
	  
	  @RequestMapping("/ConfirmOrder")
	  public String confirmOrder(HttpSession session,Model m)
	  {
		  String username=(String)session.getAttribute("username");
		  List<CartItem> listCartItems=cartDAO.getCartItems(username);
		  m.addAttribute("cartList",listCartItems);
		  m.addAttribute("grandTotal",this.grandTotal(listCartItems));
		  
		  
		  return "OrderConfirm";
		  
	  }
	  public int grandTotal(List<CartItem> listCartItems)
	  {
		  int grandTotal=0;
		  for(CartItem cartItem:listCartItems)
			{
				grandTotal=grandTotal+cartItem.getQuantity()*(productDAO.getProduct(cartItem.getProductId()).getPrice());
			}
		  System.out.println(grandTotal);
			return grandTotal;
	  }
	  
	  @RequestMapping(value="/PaymentConfirm",method=RequestMethod.GET)
	  public String paymentConfirm(@RequestParam("pmode")String pmode,@RequestParam("shippAddr")String shippAddr)
	  {
		  return "ThankYou";
	  }
	  }