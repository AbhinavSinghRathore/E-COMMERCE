package com.niit.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.niit.dao.UserDetailDAO;
import com.niit.model.UserDetail;

@Controller
public class RegisterController 

{
	@Autowired
	UserDetailDAO userDetailDAO;
	
	
	
@RequestMapping(value ="/Register", method = RequestMethod.POST)
public String insertUsers(@ModelAttribute("user") UserDetail userDetail)
		
{
	
	userDetailDAO.registerUser(userDetail);
	return "Login";
}

}

