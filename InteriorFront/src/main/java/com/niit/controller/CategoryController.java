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
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.niit.dao.CategoryDAO;
import com.niit.model.Category;

@Controller
public class CategoryController {
	@Autowired
	private CategoryDAO categoryDAO;



	@RequestMapping("/category")
	public String showCategory(Model m)//to add object in JSP
	{
	    List<Category> listCategories = categoryDAO.getCategories();
		m.addAttribute("listCategories", listCategories);
		m.addAttribute("categoryInfo", new Category());
	
		
		for (Category category : listCategories)
		{
			System.out.println(category.getCategoryName() + ",");
		}
		
		Authentication auth=SecurityContextHolder.getContext().getAuthentication();	
		m.addAttribute("role", auth.getAuthorities().toString());

		return "Category";
	}
                                            /* v can pas string only by default method is get*/
	@RequestMapping(value = "/InsertCategory", method = RequestMethod.POST)
	public String insertCategoryData(@Valid @ModelAttribute("categoryInfo")Category category,BindingResult result,
			Model m) {                                  //categoryInfo-it will have the instance of JB
		
		List<Category> listCategories;
		if(result.hasErrors())
		{
			listCategories = categoryDAO.getCategories();
			Authentication auth=SecurityContextHolder.getContext().getAuthentication();	
			m.addAttribute("role", auth.getAuthorities().toString());
			m.addAttribute("listCategories", listCategories);
			return "Category";
		}
			

		categoryDAO.addCategory(category);//to insert the the query through command name
		listCategories = categoryDAO.getCategories();
		Authentication auth=SecurityContextHolder.getContext().getAuthentication();	
		m.addAttribute("role", auth.getAuthorities().toString());
		m.addAttribute("listCategories", listCategories);
		
		return "Category";
	}
	
    @RequestMapping("/deleteCategory/{categoryId}")
    public String deleteCategory(@PathVariable("categoryId") int categoryId,Model m)
    
    {
	Category category=categoryDAO.getCategory(categoryId);
	
	categoryDAO.deleteCategory(category);
	
	//List<Category> listCategories = categoryDAO.getCategories();
	//m.addAttribute("listCategories", listCategories);
	//m.addAttribute("categoryInfo", new Category());
	Authentication auth=SecurityContextHolder.getContext().getAuthentication();	
	m.addAttribute("role", auth.getAuthorities().toString());
	return "redirect:/category";
	
    }
    
    @RequestMapping("/updateCategory/{categoryId}")
    public String updateCategory(@PathVariable("categoryId") int categoryId,Model m)
    {
    	Category category=categoryDAO.getCategory(categoryId);
    	
    	
    	
    	List<Category> listCategories = categoryDAO.getCategories();
    	m.addAttribute("listCategories", listCategories);
    	m.addAttribute("categoryInfo", category);
    	
    	Authentication auth=SecurityContextHolder.getContext().getAuthentication();	
		m.addAttribute("role", auth.getAuthorities().toString());
    	
    	return "UpdateCategory";
    	
    }
    @RequestMapping(value="/UpdateCategory",method=RequestMethod.POST)
	public String updateCategoryInDB(@ModelAttribute("categoryInfo") Category category,Model m)
	{
		//Category category=categoryDAO.getCategory(categoryId);
		//category.setCategoryName(categoryName);
		//category.setCateogryDesc(categoryDesc);
		
		categoryDAO.updateCategory(category);
		
		List<Category> listCategories=categoryDAO.getCategories();
		m.addAttribute("listCategories",listCategories);
		
		return "redirect:/category";
	}
   /* @RequestMapping("/shopbycategory")
    public String shopbyCategory(Model m)
    {
    	return "";
    	
    }*/
    }

    


