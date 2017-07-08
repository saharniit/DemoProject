package com.niit.model;

import java.io.Serializable;

import javax.persistence.Column;

import javax.persistence.Entity;

import javax.persistence.GeneratedValue;

import javax.persistence.GenerationType;

import javax.persistence.Id;

import javax.persistence.SequenceGenerator;

import javax.persistence.Table;

@SuppressWarnings("serial")
@Entity

@Table(name="Product")
public class Product implements Serializable {

	

	@Id

	

	@Column(name="Product_ID")

	private int pid;



	@Column(name="Product_name")

	private String name;

	

	@Column(name="PRICE")

	private double price;

	

	@Column(name="Qty")

	private int qty;

	@Column(name="Category")

	private String category;

	

	@Column(name="ImagePath")

	private String image;


	@Column(name="Description")

	private String description;

	
    

	

	public void setPid(int id)

	{

		this.pid= id;

	}

	public int getPid()

	{

		return pid;

	}
	

	public Product(){}

	

	public void setName(String name)

	{

		this.name= name;

	}

	public String getName()

	{

		return name;

	}

	public void setPrice(double Price)

	{

		this.price= Price;

	}

	public double  getPrice()

	{

		return price;

	}

	public void setQty(int qty)

	{

		this.qty= qty;

	}

	public int getQty()

	{

		return qty;

	}

	public void setCategory(String cat)

	{

		this.category= cat;

	}

	public String getCategory()

	{

		return category;

	}

	public void setImage(String image)

	{

		this.image= image;

	}

	public String getImage()

	{

		return image;

	}

	public void setDescription(String desc)

	{

		this.description= desc;

	}

	public String getDescription()

	{

		return description;

	}
}