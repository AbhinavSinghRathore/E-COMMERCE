package com.niit.config;
import java.util.Properties;

import javax.sql.DataSource;

import org.hibernate.SessionFactory;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.jdbc.datasource.DriverManagerDataSource;
import org.springframework.orm.hibernate4.HibernateTransactionManager;
import org.springframework.orm.hibernate4.LocalSessionFactoryBuilder;
import org.springframework.transaction.annotation.EnableTransactionManagement;

import com.niit.dao.CartDAO;
import com.niit.dao.CartDAOImpl;
import com.niit.dao.CategoryDAO;
import com.niit.dao.CategoryDAOImpl;
import com.niit.dao.OrderDetailDAO;
import com.niit.dao.OrderDetailDAOImpl;
import com.niit.dao.ProductDAO;
import com.niit.dao.ProductDAOImpl;
import com.niit.dao.SupplierDAO;
import com.niit.dao.SupplierDAOImpl;
import com.niit.dao.UserDetailDAO;
import com.niit.dao.UserDetailDAOImpl;
import com.niit.model.CartItem;
import com.niit.model.Category;
import com.niit.model.OrderDetail;
import com.niit.model.Product;
import com.niit.model.Supplier;
import com.niit.model.UserDetail;


@Configuration
@ComponentScan("com.InteriorBackend")
@EnableTransactionManagement
public class DBConfig 
{
	@Bean(name="dataSource")
	public DataSource getH2DataSource()
	{
		DriverManagerDataSource dataSource=new DriverManagerDataSource();
		
		dataSource.setDriverClassName("org.h2.Driver");
		dataSource.setUrl("jdbc:h2:tcp://localhost/~/DT255");
		dataSource.setUsername("dteja");
		dataSource.setPassword("dteja");
		
		System.out.println("---Data Source Created---");
		return dataSource;
	}
	
	
	@Bean(name="sessionFactory")
	public SessionFactory getSessionFactory()
	{
		
		Properties hibernateProp=new Properties();
		
		hibernateProp.setProperty("hibernate.hbm2ddl.auto", "update");
		hibernateProp.put("hibernate.dialect","org.hibernate.dialect.H2Dialect");
		
		LocalSessionFactoryBuilder factoryBuilder=new LocalSessionFactoryBuilder(getH2DataSource());
		factoryBuilder.addAnnotatedClass(Category.class);
		factoryBuilder.addAnnotatedClass(Product.class);
		factoryBuilder.addAnnotatedClass(UserDetail.class);
		factoryBuilder.addAnnotatedClass(Supplier.class);
		factoryBuilder.addAnnotatedClass(CartItem.class);
		factoryBuilder.addAnnotatedClass(OrderDetail.class);
		factoryBuilder.addProperties(hibernateProp);
		
		System.out.println("Creating SessionFactory Bean");
		return factoryBuilder.buildSessionFactory();
	}
	
	
	@Bean(name="categoryDAO")
	public CategoryDAO getCategoryDAO()
	{
		System.out.println("----DAO Implementation---");
		return new CategoryDAOImpl();
	}
	
	@Bean(name="productDAO")
	public ProductDAO getProductDAO()
	{
		System.out.println("---Product DAO Implementation ---");
		return new ProductDAOImpl();
	}
	
	@Bean(name="userDetailDAO")
	public UserDetailDAO getUserDetailDAO()
	{
		System.out.println("---UserDetail DAO Implementation ---");
		return new UserDetailDAOImpl();
	}
	
	@Bean(name="supplierDAO")
	public SupplierDAO getSupplierDAO()
	{
		System.out.println("---Supplier DAO Implementation ---");
		return new SupplierDAOImpl();
	}
	
	@Bean(name="cartDAO")
	public CartDAO getCartDAO()
	{
		System.out.println("----CART DAO Implementation---");
		return new CartDAOImpl();
	}
	
	@Bean(name="orderDetailDAO")
	public OrderDetailDAO getOrderDetailDAO()
	{
		System.out.println("----OrderDetail DAO Implementation---");
		return new OrderDetailDAOImpl();
	}


	
	@Bean(name="txManager")
	public HibernateTransactionManager getTransactionManager(SessionFactory sessionFactory)
	{
		System.out.println("---Transaction Manager----");
		return new HibernateTransactionManager(sessionFactory);
	}
		
}