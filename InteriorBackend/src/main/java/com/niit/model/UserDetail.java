package com.niit.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;

import org.hibernate.validator.constraints.NotBlank;
@Entity
@Table
public class UserDetail

{
  
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int userId;
	@NotBlank(message="*Username can not be null.")
	private String username;
	@NotBlank(message="*Password can not be null.")
	private String password;
	private String role;
	private boolean enabled;

	private String customerName;
	private String mobileNo;
	@NotBlank(message="*Email Address can not be null.")
	private String emailId;
	private String address;
	public int getUserId() {
		return userId;
	}
	public void setUserId(int userId) {
		this.userId = userId;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getRole() {
		return role;
	}
	public void setRole(String role) {
		this.role = role;
	}
	public boolean isEnabled() {
		return enabled;
	}
	public void setEnabled(boolean enabled) {
		this.enabled = enabled;
	}
	public String getCustomerName() {
		return customerName;
	}
	public void setCustomerName(String customerName) {
		this.customerName = customerName;
	}
	public String getMobileNo() {
		return mobileNo;
	}
	public void setMobileNo(String mobileNo) {
		this.mobileNo = mobileNo;
	}
	public String getEmailId() {
		return emailId;
	}
	public void setEmailId(String emailId) {
		this.emailId = emailId;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	@Override
	public String toString() {
		return "UserDetail [userId=" + userId + ", username=" + username + ", password=" + password + ", role=" + role
				+ ", enabled=" + enabled + ", customerName=" + customerName + ", mobileNo=" + mobileNo + ", emailId="
				+ emailId + ", address=" + address + "]";
	}

	
	
	
}
