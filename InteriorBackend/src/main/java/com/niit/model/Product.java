package com.niit.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Transient;

import org.hibernate.validator.constraints.NotBlank;
import org.hibernate.validator.constraints.Range;
import org.springframework.web.multipart.MultipartFile;

@Entity
@Table
public class Product 
{

	
	
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int productId;
	@NotBlank(message="*Product name cannot be null")
	private String productName;
	@Range(min=1,message="Category cannot be null")
	private int categoryId;
	@Range(min=1,message="supplier cannot be null")
	private int supplierId;
	@Range(min=1,message="Price cannot be 0")
	private int price;
	@Range(min=1,message="Stock cannot be 0")
	private int stock;
	@NotBlank(message="Description cannnot be null")
	private String prodDesc;
	private int views;
	
	@Transient
	MultipartFile m;
	public int getProductId() {
		return productId;
	}
	public void setProductId(int productId) {
		this.productId = productId;
	}
	public String getProductName() {
		return productName;
	}
	public void setProductName(String productName) {
		this.productName = productName;
	}
	public int getCategoryId() {
		return categoryId;
	}
	public void setCategoryId(int categoryId) {
		this.categoryId = categoryId;
	}
	public int getSupplierId() {
		return supplierId;
	}
	public void setSupplierId(int supplierId) {
		this.supplierId = supplierId;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public int getStock() {
		return stock;
	}
	public void setStock(int stock) {
		this.stock = stock;
	}
	public String getProdDesc() {
		return prodDesc;
	}
	public void setProdDesc(String prodDesc) {
		this.prodDesc = prodDesc;
	}
	public int getViews() {
		return views;
	}
	public void setViews(int views) {
		this.views = views;
	}	
}