package com.niit.dao;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.niit.model.CartItem;



@Repository("cartDAO")
public class CartDAOImpl implements CartDAO
{
	
	

	@Autowired
	SessionFactory sessionFactory;
	
	@Transactional
	@Override
	
	public boolean addCartItem(CartItem cartItem)
	{	
		try
		{
		sessionFactory.getCurrentSession().save(cartItem);
		return true;
		}
		catch(Exception e)
		{
		System.out.println("Exception Arised:"+e);
		return false;
		}
	}

	//getCategory()
	
	public CartItem getCartItem(int cartItemId)
	{
		Session session=sessionFactory.openSession();
		CartItem cartItem=(CartItem)session.get(CartItem.class,cartItemId);
		return cartItem;
	}

	
	//deleteCategory()
	@Transactional
	
	public boolean deleteCartItem(CartItem cartItem)
	{	
		try
		{
		sessionFactory.getCurrentSession().delete(cartItem);
		return true;
		}
		catch(Exception e)
		{
		System.out.println("Exception Arised:"+e);
		return false;
		}
	}
	
	//updateCategory()
	@Transactional
	
	public boolean updateCartItem(CartItem cartItem) 
	{	
		try
		{
		sessionFactory.getCurrentSession().update(cartItem);
		return true;
		}
		catch(Exception e)
		{
		System.out.println("Exception Arised:"+e);
		return false;
		}
	}
	
	//listCategories()
	
	public List<CartItem> getCartItems(String username)
	{
		
		Session session=sessionFactory.openSession();
		List<CartItem> listCartItem=session.createQuery("from CartItem where username=:username").setParameter("username", username).list();
		return listCartItem;
	}

	

}







