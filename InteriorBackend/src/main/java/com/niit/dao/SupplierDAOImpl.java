package com.niit.dao;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.junit.Ignore;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;


import com.niit.model.Supplier;

@Repository("supplierDAO")

public class SupplierDAOImpl implements SupplierDAO {
	
	@Autowired
	SessionFactory sessionFactory;
	
	@Transactional
	public boolean addSupplier(Supplier supplier)
	
	{	
		try
		{
		sessionFactory.getCurrentSession().save(supplier);
		return true;
		}
		catch(Exception e)
		{
		System.out.println("Exception Arised:"+e);
		return false;
		}
	}

	//getCategory()
	@Transactional
	
	public Supplier getSupplier(int supplierId) 
	{
		Session session=sessionFactory.openSession();
		Supplier supplier=(Supplier)session.get(Supplier.class,supplierId);
		return supplier;
	}


	
	//deleteCategory()
	@Transactional
	@Ignore
	
	//listCategories()
	
	public List<Supplier> getSuppliers()
	{
		
		Session session=sessionFactory.openSession();
		Query query=session.createQuery("from Supplier");
		List<Supplier> listSuppliers=(List<Supplier>)query.list();
		return listSuppliers;
	}

	
	

}
