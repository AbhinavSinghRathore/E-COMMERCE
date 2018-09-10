package com.niit.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;


import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
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
import com.niit.model.Product;
import com.niit.model.UserDetail;

/*From controller v can execute buisness logic*/
@Controller /*this will take the req and it will have number of req mappings url and according to tht it will execute the corresponding method*/
public class PageController

{
	
	@Autowired
	CartDAO cartDAO;
	@Autowired
	CategoryDAO categoryDAO;
	@Autowired
	ProductDAO productDAO;
	@Autowired
	OrderDetailDAO orderdetailDao;
	@Autowired
	UserDetailDAO userdetailDao;
	
	@Autowired
	OrderItemDAO orderItemDAO;
	                      /*it will have corresponding controller method attached to it so the so the same method will be executed when any url will b requested of that type*/
	@RequestMapping("/")  /*specifies which mapping url does it contains*/
	public String showHomePage(Model m)
	{
		Authentication auth=SecurityContextHolder.getContext().getAuthentication();
		m.addAttribute("role", auth.getAuthorities().toString());
		m.addAttribute("catList",categoryDAO.getCategories());
		m.addAttribute("listProducts", productDAO.listByCategory(180));
		return "index";
	}
	
	@RequestMapping("/login")
	public String showLogin(@RequestParam(name="error",required=false)String error,Model m)
	{
		
		if(error!=null) {
			m.addAttribute("Message", "username or password is invalid");
			System.out.println("Something is wrong");
		}
		
		Authentication auth=SecurityContextHolder.getContext().getAuthentication();
		m.addAttribute("role", auth.getAuthorities().toString());
		System.out.println(auth.getAuthorities().toString());
		return "Login";
	}
	
	@RequestMapping("/aboutus")
	public String showAboutUs(Model m)
	{
		Authentication auth=SecurityContextHolder.getContext().getAuthentication();
		m.addAttribute("role", auth.getAuthorities().toString());
		System.out.println(auth.getAuthorities().toString());
		return "AboutUs";
	}
	
	@RequestMapping("/register")
	public String showRegister(Model m)
	{
		m.addAttribute("user",new UserDetail());
		Authentication auth=SecurityContextHolder.getContext().getAuthentication();
		m.addAttribute("role", auth.getAuthorities().toString());
		return "Register";
	}
	@RequestMapping("/contactus")
	public String showcontactus(Model m)
	{
		Authentication auth=SecurityContextHolder.getContext().getAuthentication();
		m.addAttribute("role", auth.getAuthorities().toString());
		return "ContactUs";
	}
	@RequestMapping("/filterBy")
    public String productByFilter(@RequestParam(value="price", required= false)int price,Model m) {
		List<Product> listProducts=null;
		
    	switch(price) {
    	case 1:listProducts=productDAO.getByFilter(5000, 10000);
    		break;
    	case 2:listProducts=productDAO.getByFilter(10000, 20000);
		break;
    	case 3:listProducts=productDAO.getByFilter(20000, 30000);
		break;
    	case 4:listProducts=productDAO.getByFilter(30000, 40000);
		break;
    	case 5:listProducts=productDAO.getByFilter(40000,999999);
		break;
    	}
    	m.addAttribute("listProducts", listProducts);
        Authentication auth = SecurityContextHolder.getContext().getAuthentication();

        m.addAttribute("role", auth.getAuthorities().toString());

        return "ProductPage";

    }
	@RequestMapping("Cart")
	public String myCart(Model m,HttpSession session)
	{
		String username=(String)session.getAttribute("username");
		List<CartItem> listCartItems=cartDAO.getCartItems(username);
		m.addAttribute("cartList",listCartItems);
		m.addAttribute("grandTotal",this.grandTotal(listCartItems));
		m.addAttribute("cartList",cartDAO.getCartItems(username));
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
	
	@RequestMapping("/searchBy")
    public String productBySearch(@RequestParam(value= "search" , required= false)String search,Model m)
	
	{
		
		
		List<Product> listProducts = productDAO.getBySearch(search);
        
        m.addAttribute("listProducts", listProducts);
        Authentication auth = SecurityContextHolder.getContext().getAuthentication();

        m.addAttribute("role", auth.getAuthorities().toString());

        return "ProductPage";
        
    }
	@RequestMapping("/myprofile")
	public String myProfile(Model m,HttpSession session)
	{
		List<OrderDetail> oderList=orderdetailDao.getOrderdetails(session.getAttribute("username").toString());
		m.addAttribute("user",userdetailDao.getUserByUserName(session.getAttribute("username").toString()));
		
		
		HashMap<OrderDetail, List<Product>> collect=new HashMap<>();
		List<Product> prodList=null;
		for(OrderDetail orderDetail:oderList) {
			prodList=new ArrayList<>();
			for(OrderItem orderItem:orderItemDAO.getorderItems(orderDetail.getOrderId())) {
				prodList.add(productDAO.getProduct((orderItemDAO.getProductforlistorder(orderItem.getId()))));
				System.out.println("line 158-->"+productDAO.getProduct((orderItemDAO.getProductforlistorder(orderItem.getId()))).getProductName());
				System.out.println(orderDetail.getOrderId()+"\t"+orderDetail.getOrderDate());
			}
			
			collect.put(orderDetail, prodList);
		}
		m.addAttribute("mapList", collect);
		
		return "Myprofile";
	}

	}
	

