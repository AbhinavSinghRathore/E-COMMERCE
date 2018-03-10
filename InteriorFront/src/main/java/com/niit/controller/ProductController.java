package com.niit.controller;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.util.LinkedHashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.niit.dao.CategoryDAO;
import com.niit.dao.ProductDAO;
import com.niit.model.Category;
import com.niit.model.Product;

@Controller
public class ProductController 
{
	@Autowired
	CategoryDAO categoryDAO;
	
	@Autowired
	ProductDAO productDAO;
	
	@RequestMapping("/product")
	public String showProductPage(Model m)
	{
		Product product=new Product();
		m.addAttribute("product",product);
		m.addAttribute("catlist",this.listCategories());
		return "Product";	
	}
	
	@RequestMapping(value="/InsertProduct",method=RequestMethod.POST)
	public String addProduct(@ModelAttribute("product")Product product,@RequestParam("pimage") MultipartFile filedet,Model m)
	{
		Product product1=new Product();
		m.addAttribute(product1);
		productDAO.addProduct(product);
		
		//===> Image Uploading
		String imagePath="C:\\Users\\IBM\\eclipse-workspace\\InteriorFront\\src\\main\\webapp\\resources\\images\\";
		imagePath=imagePath+String.valueOf(product.getProductId())+".jpg";
		File image=new File(imagePath);
		
		if(!filedet.isEmpty())
		{
			
			try 
			{
				byte[] fileBuffer=filedet.getBytes();	
				FileOutputStream fos=new FileOutputStream(image);
				BufferedOutputStream bs=new BufferedOutputStream(fos);
				bs.write(fileBuffer);
				bs.close();
			} catch (Exception e)
			{
				System.out.println("Exception Arised:"+e);
				e.printStackTrace();
			}
			
		}
		else
		{
			System.out.println("Problem Occured in File Uploading");
		}
		
		//==>End of Image Uploading
		
		
		m.addAttribute("catlist",this.listCategories());
		return "Product";	
	}


	
	public LinkedHashMap<Integer,String> listCategories()
	{
		List<Category> listCategories=categoryDAO.getCategories();
		LinkedHashMap<Integer,String> catlist=new LinkedHashMap<Integer,String>();
		for(Category category:listCategories)
		{
			catlist.put(category.getCategoryId(),category.getCategoryName());
		}
		return catlist;
	}
	
	@RequestMapping(value="/productPage",method=RequestMethod.GET)
	public String showProductsPage(Model m)
	{
		List<Product> listProducts=productDAO.listProducts();
		m.addAttribute("listProducts",listProducts);
		return "ProductPage";
	}
	@RequestMapping("/productDesc/{productId}")
	public String productDesc(@PathVariable("productId")int productId,Model m) {
		
		
		Product product=productDAO.getProduct(productId);
		String categoryName=categoryDAO.getCategory(product.getCategoryId()).getCategoryName();
		m.addAttribute("ProductInfo",product);
		m.addAttribute("categoryName",categoryName);
		return "ProductDesc";
		
		
		/*m.addAttribute("ProductInfo", productDAO.getProduct(productId));
		m.addAttribute("categoryName", categoryDAO.getCategory(productDAO.getProduct(productId).getCategoryId()).getCategoryName());
		return "ProductDesc";*/
	}
	
	//Bhanoo Sir
	/*@RequestMapping("/updateProduct")
	public String updateProduct(Model m) {
		m.addAttribute("listProducts", productDAO.listProducts());
		m.addAttribute("catlist",this.listCategories());
		
		return"UpdateProduct";
	}
	@RequestMapping("/updateProduct/{productId}")
	public String updateProduct1(@RequestParam("productId")int productId,Model m) {
		m.addAttribute("listProducts", productDAO.listProducts());
		m.addAttribute("catlist",this.listCategories());
		System.out.println("Productid="+productId);
		m.addAttribute("product", productDAO.getProduct(productId));
		
		return"UpdateProduct";
	}
	
	@RequestMapping(value="/updateProduct",method=RequestMethod.POST)
	public String updateProduct(@ModelAttribute("product")Product product,@RequestParam("pimage") MultipartFile filedet,Model m)
	{
		Product product1=new Product();
		m.addAttribute(product1);
		productDAO.addProduct(product);
		
		//===> Image Uploading
		String imagePath="C:\\Users\\IBM\\eclipse-workspace\\InteriorFront\\src\\main\\webapp\\resources\\images\\";
		imagePath=imagePath+String.valueOf(product.getProductId())+".jpg";
		File image=new File(imagePath);
		
		if(!filedet.isEmpty())
		{
			
			try 
			{
				byte[] fileBuffer=filedet.getBytes();	
				FileOutputStream fos=new FileOutputStream(image);
				BufferedOutputStream bs=new BufferedOutputStream(fos);
				bs.write(fileBuffer);
				bs.close();
			} catch (Exception e)
			{
				System.out.println("Exception Arised:"+e);
				e.printStackTrace();
			}
			
		}
		else
		{
			System.out.println("Problem Occured in File Uploading");
		}
		
		//==>End of Image Uploading
		
		
		m.addAttribute("catlist",this.listCategories());
		return "UpdateProduct";	
	}*/
}

