package com.niit.dao;

import java.util.List;

import com.niit.model.UserDetail;

public interface UserDetailDAO
{
   public boolean registerUser(UserDetail user);
   public boolean updateDetail(UserDetail user);
   public List<UserDetail> getAllUser();
  
}
