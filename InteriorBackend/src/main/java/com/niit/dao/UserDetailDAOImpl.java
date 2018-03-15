package com.niit.dao;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.niit.model.UserDetail;


@Repository("userDetailDAO")
public  class UserDetailDAOImpl implements UserDetailDAO
{
	@Autowired
	SessionFactory sessionFactory;

	@Transactional
	
	public boolean registerUser(UserDetail user)
	
	{
		try {
			sessionFactory.getCurrentSession().save(user);
			return true;
		}
		catch(Exception ex) {
			ex.printStackTrace();
			return false;
		}
		
		}
		
@Transactional
	public boolean updateDetail(UserDetail user)
	{
		try {
			sessionFactory.getCurrentSession().update(user);
			return true;
		}
		catch(Exception ex) {
			ex.printStackTrace();
			return false;
		}
		
		
	}

@SuppressWarnings("unchecked")
@Override
public List<UserDetail> getAllUser() {
	
	Session session=sessionFactory.openSession();
	List<UserDetail> ulist=session.createQuery("from UserDetail").list();
	
	return ulist;
}
}