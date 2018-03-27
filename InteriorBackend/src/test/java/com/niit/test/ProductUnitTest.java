package com.niit.test;
import static org.junit.Assert.assertNotNull;
import static org.junit.Assert.assertTrue;

import java.util.List;
import java.util.Scanner;

import org.junit.BeforeClass;
import org.junit.Ignore;
import org.junit.Test;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.niit.dao.ProductDAO;
import com.niit.model.Product;

public class ProductUnitTest 
{
	private static AnnotationConfigApplicationContext context;
	static ProductDAO productDAO;

	@BeforeClass
	public static void executeFirst()throws Exception
	{
		context=new AnnotationConfigApplicationContext();
		context.scan("com.niit");
		context.refresh();
		
		productDAO=(ProductDAO)context.getBean("productDAO");
	}
	
	@Ignore
	@Test
	public void addProductTest()
	{
		//Scanner sc=new Scanner(System.in);
		Product product=new Product();
		product.setProductName("ball");
		product.setCategoryId(4);
		product.setProdDesc("leather");
		product.setSupplierId(44);
		product.setPrice(2000);
		product.setStock(4);
		product.setViews(0);
		assertTrue("Problem in Product Insertion",productDAO.addProduct(product));
	}
	@Ignore
	
	public void getProductTest()
	{
		assertNotNull("Problem in get Product",productDAO.getProduct(2));
	}
   @Test
    public void deleteProductTest()
    {
    	Product product=productDAO.getProduct(144);
    	assertTrue("Problem in deletion:", productDAO.deleteProduct(product));
    }
    @Ignore
    public void updateProductTest()
    {
    	Product product=productDAO.getProduct(3);
    	product.setProductName("L Sofa Model");
    	assertTrue("Problem in Updation", productDAO.updateProduct(product));
    }
    @Ignore
    @Test
    
    public void listByCategoryTest()
    {
    	List<Product> listProduct=productDAO.listByCategory(18);
    	assertNotNull("No Products found",listProduct);
    	
    	for(Product product:listProduct)
    	{
    		System.out.println(product.getProductId()+":::");
    		System.out.println(product.getProductName()+":::");
    		System.out.println(product.getProdDesc()+":::");
    		System.out.println(product.getViews()+":::");
    		
    	}
    	
}


    
}




