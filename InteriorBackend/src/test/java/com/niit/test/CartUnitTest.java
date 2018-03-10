package com.niit.test;

import static org.junit.Assert.assertNotNull;
import static org.junit.Assert.assertTrue;

import java.util.List;

import org.junit.BeforeClass;
import org.junit.Ignore;
import org.junit.Test;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.niit.dao.CartDAO;
import com.niit.model.CartItem;

public class CartUnitTest
{
	private static AnnotationConfigApplicationContext context;
	static CartDAO cartDAO;

	@BeforeClass
	public static void executeFirst()throws Exception
	{
		context=new AnnotationConfigApplicationContext();
		context.scan("com.niit");
		context.refresh();
		
		cartDAO=(CartDAO)context.getBean("cartDAO");
	}
	
	
	@Test
	public void addCartItemTest()
	{
		CartItem cartItem=new CartItem();
		
		cartItem.setProductId(2);
		cartItem.setCartId(1001);
		cartItem.setQuantity(3);
		cartItem.setUsername("Bhanoo");
		cartItem.setPaymentStatus("NP");
		cartItem.setSubtotal(789);
		assertTrue("Problem in Insertion",cartDAO.addCartItem(cartItem));
	}
	@Ignore
	@Test
	public void updateCartItemTest()
	{
		CartItem cartItem=cartDAO.getCartItem(2);
		cartItem.setQuantity(5);
		cartItem.setSubtotal(100);
		assertTrue("Problem in Updation",cartDAO.updateCartItem(cartItem));
	}
	
	
	@Ignore
	@Test
	public void deleteCartItemTest()
	{
		CartItem cartItem=cartDAO.getCartItem(2);
		assertTrue("Problem in Deletion",cartDAO.deleteCartItem(cartItem));
	}

	
	@Test
    public void listCartItemTest()
    {
    	List<CartItem> listCartItems=cartDAO.getCartItems("Abhi");
    	assertNotNull("Problem in List CartItems",listCartItems);
    	
    	for(CartItem cartItem:listCartItems)
    	{
    		System.out.println("CartItem Id:" +cartItem.getCartItemId());
    		System.out.println("CartItem Quantity:" +cartItem.getQuantity());
    		System.out.println("CartItem Payment Status:" +cartItem.getPaymentStatus());
    		
    	}
    	
    }

}
