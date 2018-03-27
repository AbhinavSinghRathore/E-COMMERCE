package com.niit.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.niit.dao.CategoryDAO;
import com.niit.model.UserDetail;

@Controller
public class PageController 
{
	@Autowired
	CategoryDAO categoryDAO;
	
	@RequestMapping("/")
	public String showHomePage(Model m)
	{
		Authentication auth=SecurityContextHolder.getContext().getAuthentication();
		m.addAttribute("role", auth.getAuthorities().toString());
		m.addAttribute("catList",categoryDAO.getCategories());
		return "index";
	}
	
	@RequestMapping("/login")
	public String showLogin(Model m)
	{
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
	
}
