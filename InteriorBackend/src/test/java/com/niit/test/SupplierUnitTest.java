package com.niit.test;

import static org.junit.Assert.*;

import java.util.List;

import org.junit.BeforeClass;
import org.junit.Ignore;
import org.junit.Test;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.niit.dao.SupplierDAO;
import com.niit.model.Category;
import com.niit.model.Supplier;

public class SupplierUnitTest {

	private static AnnotationConfigApplicationContext context;
	static SupplierDAO supplierDAO;

	@BeforeClass
	public static void executeFirst()throws Exception
	{
		context=new AnnotationConfigApplicationContext();
		context.scan("com.niit");
		context.refresh();
		
		supplierDAO=(SupplierDAO)context.getBean("supplierDAO");
	}
	
	
	@Test
	public void addSupplierTest()
	{
		Supplier sp=new Supplier();
		sp.setSupplierName("Ab");
		sp.setSupplierDesc("Good supplier");
		assertTrue("Problem in Supplier Insertion",supplierDAO.addSupplier(sp));
	}

	@Ignore
	public void getSupplierTest()
	{
		assertNotNull("Problem in get Supplier",supplierDAO.getSupplier(1));
	}
	/*@Ignore
	 public void deleteSupplierTest()
	    {
	    	Supplier supplier=supplierDAO.getSupplier(4);
	    	supplier.setSupplierName("Indus");
	    	assertTrue("Problem in deletion:", supplierDAO.deleteCategory(category));
	    }
	    @Ignore
	    public void updateCategoryTest()
	    {
	    	Category category=categoryDAO.getCategory(3);
	    	category.setCategoryName("L Sofa Model");
	    	assertTrue("Problem in Updation", categoryDAO.updateCategory(category));
	    }*/

 @Ignore
public void listSuppliersTest()
{
	List<Supplier> listSuppliers=supplierDAO.getSuppliers();
	assertNotNull("No Suppliers",listSuppliers);
	
	for(Supplier supplier:listSuppliers)
	{
		System.out.println(supplier.getSupplierId()+":::");
		System.out.println(supplier.getSupplierName()+":::");
		System.out.println(supplier.getSupplierDesc()+":::");
		
	}
}
}
