package com.niit.controller;

import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
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
public String insertUsers(@ModelAttribute("user") UserDetail userDetail,Model m)
		
{
	if(userDetail.getUsername().equals("")||userDetail.getEmailId().equals("")||userDetail.getMobileNo().equals("")||userDetail.getPassword().equals(""))
	{
		m.addAttribute("null", "* Fields can not be empty !");
		return "Register";
	}
	
	List<UserDetail> userlist=userDetailDAO.getAllUser();
	
	for(UserDetail user:userlist) {
		if(user.getEmailId().equals(userDetail.getEmailId())) {
			m.addAttribute("emailMsg", "*Email already Exists");
			
			return "Register";
		}
		if((user.getUsername().equals(userDetail.getUsername()))) {
			m.addAttribute("usernameMsg", "*Username already Exists");
			
			return "Register";
		}
	}
	
	
	userDetailDAO.registerUser(userDetail);
	return "Login";
}

}

