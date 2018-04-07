package com.niit.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.niit.dao.ProductDAO;
import com.niit.model.Product;

@Controller
@RequestMapping("/json/data")
public class JsondataController {
	
	@Autowired
	private ProductDAO productDAO;
	
	
	/*@RequestMapping("/admin/all/products")
	@ResponseBody
	public List<Product> getAllProducts()
	{
		 return productDAO.list();
	}*/
	@RequestMapping("all/products")
	@ResponseBody
	public List<Product> getAllProducts()
	{
		 return productDAO.listProducts();
	}
	/*@RequestMapping("/my/products")
	@ResponseBody
	public List<Product> getMostViewedProducts()
	{
		 return productDAO.getProductByParam("views", 5);
	}
	@RequestMapping("/mp/products")
	@ResponseBody
	public List<Product> getMostPurchasedProducts()
	{
		 return productDAO.getProductByParam("purchases", 5);
	}*/

}
