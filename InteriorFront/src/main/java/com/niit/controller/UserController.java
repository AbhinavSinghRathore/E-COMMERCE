package com.niit.controller;

import java.util.Collection;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.context.SecurityContext;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.niit.dao.ProductDAO;
import com.niit.dao.UserDetailDAO;
import com.niit.email.Emailsend;
import com.niit.model.Product;
import com.niit.model.UserDetail;

@Controller
public class UserController
{
	@Autowired
    private HttpSession httpSession;
	
	@Autowired
	ProductDAO productDAO;
	@Autowired
	UserDetailDAO userDetailDAO;
	@Autowired
	UserDetail userDetail;
	
	
	
	
	@RequestMapping("/UserHome")
	public String displayUserHome(Model m)
	{
		List<Product> listProducts=productDAO.listProducts();
		m.addAttribute("listProducts", listProducts);
		Authentication auth=SecurityContextHolder.getContext().getAuthentication();
		m.addAttribute("role", auth.getAuthorities().toString());
		
		return "UserHome";
	}
	
     @SuppressWarnings("unchecked")
	@RequestMapping("/login_success")
     public String showHomePage(HttpSession session,Model m)
     {
    	  @SuppressWarnings("unused")
		String page="";
    	  boolean loggedIn;
    	  
    	  //Retrieving Username
    	  SecurityContext securityContext=SecurityContextHolder.getContext();
    	  Authentication authentication=securityContext.getAuthentication();
    	  
    	  String username=authentication.getName();
    	  
    	  httpSession.setAttribute("loggedInUserId",userDetail.getEmailId() );
    	  
    	  //Now v will decide the role of user GA contains-all the authrts or all the roles
    	  
    	  Collection<GrantedAuthority> roles=(Collection<GrantedAuthority>)authentication.getAuthorities();
    			  
    		for(GrantedAuthority role:roles)
    		{
    			session.setAttribute("role", role.getAuthority());
    			
    			if(role.getAuthority().equals("ROLE_ADMIN"))
    			{
    				loggedIn=true;
    				page="AdminHome";
    				session.setAttribute("loggedIn", loggedIn);
    				session.setAttribute("username", username);
    			}
    			else
    			{
    				loggedIn=true;
    				page="ProductPage";
    				session.setAttribute("loggedIn", loggedIn);
    				session.setAttribute("username", username);
    			}
    		}
    		Authentication auth=SecurityContextHolder.getContext().getAuthentication();
    		m.addAttribute("role", auth.getAuthorities().toString());
    		System.out.println(auth.getAuthorities().toString());
    		
    			  
    	  return "redirect:/";
    	  
    
    	  
     }
     
          
     @RequestMapping("/forgetpassword")
 	public String showPassword(Model m)
 	{
 		
 		Authentication auth=SecurityContextHolder.getContext().getAuthentication();
 		m.addAttribute("role", auth.getAuthorities().toString());
 		return "/Forgetpssrd";
 		
 	}
           @RequestMapping("/password-change")
          public String forgetpsswrd(@RequestParam("email")String email)
          {
        	   
        	     List<UserDetail> UserList=userDetailDAO.getAllUser();
        	     
        	     for(UserDetail ud: UserList)
        	     {
        	    	if(ud.getEmailId().equals(email)) 
        	    	{
        	    		String DESC=ud.getPassword();
        	    		Emailsend.sendMail(email,"abhi9singh202@gmail.com","User-Password", DESC);
        	    	}
        	     }
        	     
        	   return "redirect:/";
          }
}
