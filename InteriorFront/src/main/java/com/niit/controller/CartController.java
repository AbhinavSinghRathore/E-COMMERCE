package com.niit.controller;

import java.util.List;
import javax.servlet.http.HttpSession;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.niit.dao.CartDAO;
import com.niit.dao.ProductDAO;
import com.niit.model.CartItem;
import com.niit.model.Product;


@Controller
public class CartController

{
	@Autowired
	CartDAO cartDAO;
	
	@Autowired
	ProductDAO productDAO;
	
	@RequestMapping("/addtoCart/{productId}")
	public String addCartItem(@PathVariable("productId")int productId,@RequestParam("quantity")int quantity,HttpSession session,Model m)
	{
		
		CartItem cartItem=new CartItem();
		Product product=productDAO.getProduct(productId);
		
		String username=(String)session.getAttribute("username");
		
		cartItem.setProductId(productId);
		cartItem.setCartId(1001);
		cartItem.setQuantity(quantity);
		cartItem.setUsername(username);
		cartItem.setPaymentStatus("NP");
		cartItem.setSubtotal(quantity*product.getPrice());
		
		cartDAO.addCartItem(cartItem);
		
		List<CartItem> listCartItems=cartDAO.getCartItems(username);
		m.addAttribute("cartList",listCartItems);
		m.addAttribute("grandTotal",this.grandTotal(listCartItems));
		m.addAttribute("cartList",cartDAO.getCartItems(username));
		
		return "Cart";
				
	}
	
	@RequestMapping("/updateCartItem/{cartItemId}")
	public String updateCartItem(@PathVariable("cartItemId")int cartItemId,@RequestParam("qty")int quantity,Model m,HttpSession session)
	{
		System.out.println(cartItemId);
		
		CartItem cartItem=cartDAO.getCartItem(cartItemId);
		
		int p=cartItem.getProductId();
		
		Product product=productDAO.getProduct(p);
		
		System.out.println(p);
		
		cartItem.setQuantity(quantity);
		cartItem.setSubtotal(quantity*product.getPrice());
		
		cartDAO.updateCartItem(cartItem);
		
		String username=(String)session.getAttribute("username");
		List<CartItem> listCartItems=cartDAO.getCartItems(username);
		m.addAttribute("cartList",listCartItems);
		m.addAttribute("grandTotal",this.grandTotal(listCartItems));
		m.addAttribute("cartList",cartDAO.getCartItems(username));
		
		
		System.out.println(cartItem.getProductId());
		
		return "Cart";
		 
		
}
	
	@RequestMapping("/deleteCartItem/{cartItemId}")
	public String deleteCartItem(@PathVariable("cartItemId") int cartItemId,Model m,HttpSession session)
	{
		
		CartItem cartItem=cartDAO.getCartItem(cartItemId);
		
		cartDAO.deleteCartItem(cartItem);
		
		String username=(String)session.getAttribute("username");
		List<CartItem> listCartItems=cartDAO.getCartItems(username);
		m.addAttribute("cartList",listCartItems);
		m.addAttribute("grandTotal",this.grandTotal(listCartItems));
		return "Cart";
		 
		
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
    

}

