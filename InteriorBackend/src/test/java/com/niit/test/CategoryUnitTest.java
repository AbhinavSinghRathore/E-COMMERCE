package com.niit.test;
import static org.junit.Assert.assertNotNull;
import static org.junit.Assert.assertTrue;

import java.util.List;

import org.junit.BeforeClass;
import org.junit.Ignore;
import org.junit.Test;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.niit.dao.CategoryDAO;
import com.niit.model.Category;

public class CategoryUnitTest 
{
	private static AnnotationConfigApplicationContext context;
	static CategoryDAO categoryDAO;

	@BeforeClass
	public static void executeFirst()throws Exception
	{
		context=new AnnotationConfigApplicationContext();
		context.scan("com.niit");
		context.refresh();
		
		categoryDAO=(CategoryDAO)context.getBean("categoryDAO");
	}
	
	
	@Test
	public void addCategoryTest()
	{
		Category category=new Category();
		category.setCategoryName("Medcines");
		category.setCateogryDesc("Generic");
		assertTrue("Problem in Category Insertion",categoryDAO.addCategory(category));
	}
	
	@Ignore
	public void getCategoryTest()
	{
		assertNotNull("Problem in get Category",categoryDAO.getCategory(2));
	}
   @Ignore
    public void deleteCategoryTest()
    {
    	Category category=categoryDAO.getCategory(4);
    	category.setCategoryName("L Sofa Model");
    	assertTrue("Problem in deletion:", categoryDAO.deleteCategory(category));
    }
    @Ignore
    public void updateCategoryTest()
    {
    	Category category=categoryDAO.getCategory(3);
    	category.setCategoryName("L Sofa Model");
    	assertTrue("Problem in Updation", categoryDAO.updateCategory(category));
    }
    @Ignore
    public void listCategoriesTest()
    {
    	List<Category> listCategories=categoryDAO.getCategories();
    	assertNotNull("No Categories",listCategories);
    	
    	for(Category category:listCategories)
    	{
    		System.out.println(category.getCategoryId()+":::");
    		System.out.println(category.getCategoryName()+":::");
    		System.out.println(category.getCateogryDesc()+":::");
    		
    	}
    	
    }


    
}



