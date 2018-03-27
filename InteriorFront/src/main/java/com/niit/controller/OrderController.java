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
import com.niit.dao.ProductDAO;
import com.niit.model.CartItem;
import com.niit.model.OrderDetail;

@Controller
public class OrderController {
	@Autowired
	CategoryDAO categoryDAO;

	@Autowired
	ProductDAO productDAO;

	@Autowired
	CartDAO cartDAO;

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
	public String paymentConfirm(@RequestParam("pmode") String pmode, @RequestParam("shippAddr") String shipAddr,
			HttpSession session) {
		OrderDetail order = new OrderDetail();
		order.setOrderDate(new Date());
		order.setShippingAddress(shipAddr);
		order.setTransactionType(pmode);
		order.setTotalAmount(this.grandTotal(cartDAO.getCartItems(session.getAttribute("username").toString())));
		order.setUsername(session.getAttribute("username").toString());
		int cartid = 0;
		int cartItemId = 0;
		for (CartItem cart : cartDAO.getCartItems(session.getAttribute("username").toString())) {
			cartid = cart.getCartId();
			cartItemId = cart.getCartItemId();
		}
		order.setCartId(cartid);
		orderDAO.confirmOrderDetail(order);
		cartDAO.deleteCartItem(cartDAO.getCartItem(cartItemId));

		return "ThankYou";
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
}