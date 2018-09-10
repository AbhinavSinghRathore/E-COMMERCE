package com.niit.controller;

import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.niit.dao.CartDAO;
import com.niit.dao.CategoryDAO;
import com.niit.dao.OrderDetailDAO;
import com.niit.dao.OrderItemDAO;
import com.niit.dao.ProductDAO;
import com.niit.dao.UserDetailDAO;
import com.niit.model.CartItem;
import com.niit.model.OrderDetail;
import com.niit.model.OrderItem;

@Controller
public class OrderController {
	@Autowired
	HttpSession httpsession;
	@Autowired
	CategoryDAO categoryDAO;

	@Autowired
	ProductDAO productDAO;

	@Autowired
	CartDAO cartDAO;
	
	@Autowired
	UserDetailDAO userDetailDAO;
	
	@Autowired
	OrderItemDAO orderItemDAO;
	
	@Autowired
	OrderDetailDAO orderDAO;

	@RequestMapping("/ConfirmOrder")
	public String confirmOrder(HttpSession session, Model m) {
		String username = (String) session.getAttribute("username");
		List<CartItem> listCartItems = cartDAO.getCartItems(username);
		m.addAttribute("cartList", listCartItems);
		m.addAttribute("grandTotal", this.grandTotal(listCartItems));
		
		return "OrderConfirm";
	}

	@RequestMapping("/PaymentConfirm")
	public String paymentConfirm(@RequestParam("pmode") String pmode, @RequestParam("shippAddr") String shipAddr,HttpSession session,Model m) {
		int cartid = 0;
		int cartItemId = 0;
		
		if(!shipAddr.equals(""))
		{
		OrderDetail order = new OrderDetail();
		order.setOrderDate(new Date());
		order.setShippingAddress(shipAddr);
		order.setTransactionType(pmode);
		order.setTotalAmount(this.grandTotal(cartDAO.getCartItems(session.getAttribute("username").toString())));
		order.setUsername(session.getAttribute("username").toString());
		
		
		List<CartItem> cartlist=cartDAO.getCartItems(session.getAttribute("username").toString());
		
		String products[][]=new String[cartlist.size()][2];
		
		int row=0;
		OrderItem orderItem=new OrderItem();
		order.setCartId(cartid);	
		orderDAO.confirmOrderDetail(order);
		
		for (CartItem cart : cartlist) {
			cartid = cart.getCartId();
			cartItemId = cart.getCartItemId();
			products[row][0]=cart.getProduct().getProductName();
			products[row][1]=cart.getProduct().getPrice()+"";
			
			orderItem.setOderId(order.getOrderId());
			orderItem.setProductId(cart.getProductId());
			orderItemDAO.addorderItem(orderItem);
			
			row++;	
		}
		
		
		
		
		String prod="";
		for(int i=0;i<row;i++)
		{
			for(int j=0;j<2;j++) {
				prod+=products[i][j]+"\t";
			}
			prod+="\n";
		}
		
	/*
		cartDAO.deleteCartItem(cartDAO.getCartItem(cartItemId));
		String desc="\nOrderId:- "+order.getOderid()+"\nProducts You buy:-\n"+prod+
				"\nTransactionType:-"+order.getTransactionType()+"\n Amount:-"+order.getTotalAmount()
				+"\n Shipping Address:-"+order.getShippingAddress();*/
		String username=session.getAttribute("username").toString();
		OrderPDF.create(order,cartlist,userDetailDAO.getUserByUserName(username));
		cartDAO.deleteCartItem(cartDAO.getCartItem(cartItemId));
		return "redirect:/sendfile/"+session.getAttribute("username").toString();
		}
		else {
			String username = (String) session.getAttribute("username");
			List<CartItem> listCartItems = cartDAO.getCartItems(username);
			m.addAttribute("cartList", listCartItems);
			m.addAttribute("grandTotal", this.grandTotal(listCartItems));
			m.addAttribute("Null", "* Please Enter Full Shipping Address !");
			return "OrderConfirm";
		}
		
	}

	public int grandTotal(List<CartItem> listCartItems) {
		int grandTotal = 0;
		for (CartItem cartItem : listCartItems) {
			grandTotal = grandTotal
					+ cartItem.getQuantity() * (productDAO.getProduct(cartItem.getProductId()).getPrice());
		}
		System.out.println(grandTotal);
		return grandTotal;
	}
	/*@RequestMapping("/cancelOrder")
	public boolean Cancelorder()*/
}