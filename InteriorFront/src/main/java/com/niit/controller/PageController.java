package com.niit.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.niit.model.UserDetail;

@Controller
public class PageController 
{
	
	@RequestMapping("/")
	public String showHomePage()
	{
		return "index";
	}
	
	@RequestMapping("/login")
	public String showLogin()
	{
		return "Login";
	}
	
	@RequestMapping("/aboutus")
	public String showAboutUs()
	{
		return "AboutUs";
	}
	
	@RequestMapping("/register")
	public String showRegister(Model m)
	{
		m.addAttribute("user",new UserDetail());
		return "Register";
	}
	@RequestMapping("/contactus")
	public String showcontactus()
	{
		return "ContactUs";
	}
	
}
