package com.niit.test;

import static org.junit.Assert.*;

import org.junit.BeforeClass;
import org.junit.Test;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.niit.dao.SupplierDAO;
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
		sp.setSupplierInfo("Good supplier");
		assertTrue("Problem in Supplier Insertion",supplierDAO.addSupplier(sp));
	}

	/*@Test
	public void getSupplierTest()
	{
		assertNotNull("Problem in get Supplier",supplierDAO.getsupplier(1));
	}*/

/* @Test
public void listSuppliersTest()
{
	List<Supplier> listSuppliers=supplierDAO.getSuppliers();
	assertNotNull("No Suppliers",listSuppliers);
	
	for(Supplier supplier:listSuppliers)
	{
		System.out.println(supplier.getSupplierId()+":::");
		System.out.println(supplier.getSupplierName()+":::");
		System.out.println(supplier.getSupplierInfo()+":::");
		
	}*/
}
