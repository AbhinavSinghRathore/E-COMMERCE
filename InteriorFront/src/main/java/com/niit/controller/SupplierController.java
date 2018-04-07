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

import com.niit.dao.SupplierDAO;
import com.niit.model.Category;
import com.niit.model.Supplier;

@Controller
public class SupplierController {
	@Autowired
SupplierDAO supplierDAO;



	@RequestMapping("/supplier")
	public String showSupplier(Model m)
	{
	    List<Supplier> listSupplierss = supplierDAO.getSuppliers();
		m.addAttribute("listSuppliers", listSupplierss);
		m.addAttribute("supplierInfo", new Supplier());
	
		
		for (Supplier supplier : listSupplierss)
		{
			System.out.println(supplier.getSupplierName() + ",");
		}
		
		Authentication auth=SecurityContextHolder.getContext().getAuthentication();	
		m.addAttribute("role", auth.getAuthorities().toString());

		return "Supplier";
	}

	@RequestMapping(value = "/InsertSupplier", method = RequestMethod.POST)
	public String insertSupplierData(@Valid @ModelAttribute("supplierInfo")Supplier supplier,BindingResult result,
			Model m) {
		
		
		List<Supplier> listSupplierss;
		if(result.hasErrors())
		{
			listSupplierss = supplierDAO.getSuppliers();
			
			
			Authentication auth=SecurityContextHolder.getContext().getAuthentication();	
			m.addAttribute("role", auth.getAuthorities().toString());
			
			
			m.addAttribute("listSuppliers", listSupplierss);
			return "Supplier";
		}
			

		supplierDAO.addSupplier(supplier);
		listSupplierss = supplierDAO.getSuppliers();
		Authentication auth=SecurityContextHolder.getContext().getAuthentication();	
		m.addAttribute("role", auth.getAuthorities().toString());
		m.addAttribute("listSuppliers", listSupplierss);
		
		return "Supplier";
	}
	
    @RequestMapping("/deleteSupplier/{supplierId}")
    public String deleteSupplier(@PathVariable("supplierId") int supplierId,Model m)
    
    {
	Supplier supplier=supplierDAO.getSupplier(supplierId);
	
	supplierDAO.deleteSupplier(supplier);
	
	List<Supplier> listSuppliers = supplierDAO.getSuppliers();
	Authentication auth=SecurityContextHolder.getContext().getAuthentication();	
	m.addAttribute("role", auth.getAuthorities().toString());

	m.addAttribute("listSuppliers", listSuppliers);
	m.addAttribute("supplierInfo", new Supplier());
	return "redirect:/supplier";
	
    }
    
    @RequestMapping("/updateSupplier/{supplierId}")
    public String updateSupplier(@PathVariable("supplierId") int supplierId,Model m)
    {
    	Supplier supplier=supplierDAO.getSupplier(supplierId);
    	
    	
    	
    	List<Supplier> listSuppliers = supplierDAO.getSuppliers();
    	m.addAttribute("listSuppliers", listSuppliers);
    	m.addAttribute("supplierInfo", supplier);
    	
    	Authentication auth=SecurityContextHolder.getContext().getAuthentication();	
		m.addAttribute("role", auth.getAuthorities().toString());
    	
    	return "UpdateSupplier";
    	
    }
    @RequestMapping(value="/UpdateSupplier",method=RequestMethod.POST)
	public String updateSupplierInDB(@ModelAttribute("supplierInfo") Supplier supplier,Model m)
	{
		//Category category=categoryDAO.getCategory(categoryId);
		//category.setCategoryName(categoryName);
		//category.setCateogryDesc(categoryDesc);
		
		supplierDAO.updateSupplier(supplier);
		
		List<Supplier> listSuppliers=supplierDAO.getSuppliers();
		m.addAttribute("listSuppliers",listSuppliers);
		
		return "redirect:/supplier";
	}


}