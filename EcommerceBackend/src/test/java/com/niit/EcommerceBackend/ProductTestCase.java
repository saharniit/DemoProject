package com.niit.EcommerceBackend;

import static org.junit.Assert.*;

import org.junit.Before;
import org.junit.Test;

import com.niit.dao.ProductDao;
import com.niit.dao.ProductDaoImpl;
import com.niit.model.Product;

public class ProductTestCase {
	ProductDao productDao ;
	@Before
	public void init()
	{
		productDao 	= new ProductDaoImpl();
	}

	@Test
	public void Addtest() {
		Product p = new  Product();
		p.setPid(1001);
		p.setName("Rolex watch ");
		p.setCategory("Watches");
		p.setDescription("Latest rolex Sport watch with lifetime battery");
		p.setImage("rolex.jpg");
		p.setPrice(9000);
		p.setQty(90);

		boolean saved=productDao.save(p);
		
		assertEquals(true, saved);
	}

}
